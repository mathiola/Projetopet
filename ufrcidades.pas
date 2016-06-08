unit UfrCidades;

{$MODE Delphi}

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmModeloBasico, ZDataset, ZConnection, StdCtrls, DB,  Grids,
  DBGrids, ExtCtrls, Buttons, DbCtrls;

type

  { TFrmcidades }

  TFrmcidades = class(TFrmModeloBasico)
    bbimprimir: TBitBtn;
    edtcodigo: TEdit;
    Label2: TLabel;
    edtcidade: TEdit;
    Label3: TLabel;
    cbUF: TComboBox;
    Label4: TLabel;
    procedure bbpesquisaClick(Sender: TObject);
    procedure bbgravarClick(Sender: TObject);
    procedure cbUFChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure rgpesquisaClick(Sender: TObject);
    procedure bbnovoClick(Sender: TObject);
    procedure bbeditarClick(Sender: TObject);
    procedure bbcancelarClick(Sender: TObject);
    procedure bbexcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  

  private
    { Private declarations }
  public
    { Public declarations }
    codigouf: integer;
  end;

var
  Frmcidades: TFrmcidades;

implementation

uses UfrmPrincipal, ufrmDmPrincipal;

{$R *.lfm}

procedure TFrmcidades.bbpesquisaClick(Sender: TObject);
begin
   //FrmRelatorioCidades:= TFrmRelatorioCidades.Create(self);

  inherited;
case RGPesquisa.ItemIndex of
      0:begin
           //QRYPesquisa.SQL.Clear;
           //QRYPesquisa.SQL.Add('select cidade.cd_cidade,cidade.cidade,estado.estado from estado,cidade where cidade.cd_estado = estado.cd_estado order by cidade');
           //QRYPesquisa.Open;

           //FrmRelatorioCidades.QryRelatorio.SQL.Clear;
           //FrmRelatorioCidades.QryRelatorio.SQL.Add('select cidade.cd_cidade,cidade.cidade,estado.estado from estado,cidade where cidade.cd_estado = estado.cd_estado order by cidade');
           //FrmRelatorioCidades.QryRelatorio.Open;

        end;
      1:begin
           if EDTPesquisa.Text = '' then
           begin
            Application.MessageBox('Digite o código!','Atenção',MB_ICONEXCLAMATION);
            exit;
            end
           else
           try
             StrToInt(EDTPesquisa.text);
           except
             Application.MessageBox('Código inválido!','Atenção', MB_ICONEXCLAMATION);
             EDTPesquisa.SetFocus;
             exit;
           end;
           //QRYPesquisa.sql.clear;
           //QRYPesquisa.sql.add('select cidade.cd_cidade,cidade.cidade,estado.estado from cidade,estado where cidade.cd_estado = estado.cd_estado and cd_cidade = :cod order by cidade');
           //QRYPesquisa.ParamByName('cod').AsInteger:= StrToInt(Edtpesquisa.Text);
           //qrypesquisa.Open;

           //FrmRelatorioCidades.QryRelatorio.SQL.clear;
           //FrmRelatorioCidades.QryRelatorio.SQL.add('select cidade.cd_cidade,cidade.cidade,estado.estado from cidade,estado where cidade.cd_estado = estado.cd_estado and cd_cidade = :cod order by cidade');
           //FrmRelatorioCidades.QryRelatorio.ParamByName('cod').AsInteger:= StrToInt(Edtpesquisa.Text);
           //FrmRelatorioCidades.QryRelatorio.Open;

         end;
      2:begin
           if EDTPesquisa.Text = '' then
           begin
              Application.MessageBox('Informe as iniciais!','Atenção',MB_ICONEXCLAMATION);
              EDTPesquisa.SetFocus;
           end;
           //QRYPesquisa.SQL.Clear;
           //qrypesquisa.SQL.Add('select cidade.cd_cidade,cidade.cidade,estado.estado from cidade,estado where cidade.cd_estado = estado.cd_estado and cidade.cidade like :nm');
           //qrypesquisa.ParamByName('nm').AsString:= UpperCase(EDTPesquisa.text)+ '%';
           //QRYPesquisa.Open;

           //FrmRelatorioCidades.QryRelatorio.sql.Clear;
           //FrmRelatorioCidades.QryRelatorio.sql.Add('select cidade.cd_cidade,cidade.cidade,estado.estado from cidade,estado where cidade.cd_estado = estado.cd_estado and cidade.cidade like :nm');
           //FrmRelatorioCidades.QryRelatorio.ParamByName('nm').AsString:= UpperCase(EDTPesquisa.text)+ '%';
           //FrmRelatorioCidades.QryRelatorio.Open;

        end;
    end;


end;

procedure TFrmcidades.bbgravarClick(Sender: TObject);
begin
 {
 inherited;
 begin
   if (edtCidade.Text = '')  then
    begin
       Application.MessageBox('Preencha os campos .','Erro',MB_ICONERROR);
       edtCidade.SetFocus;
       exit;
    end;

   if operacao = 'inserindo' then
    begin
       Frmprincipal.QRYAux.SQL.Clear;
       Frmprincipal.QRYAux.SQL.Add('select max(cd_cidade) as maior from cidade');
       Frmprincipal.QRYAux.Open;
       QRYCADASTRO.SQL.Clear;
       QRYCADASTRO.SQL.Add('insert into cidade(cd_cidade,cidade,cidade.cd_estado) values(:cod,:cid,:uf)');
       QRYCADASTRO.ParamByName('cod').AsInteger := Frmprincipal.QRYAux.fieldbyname('maior').AsInteger + 1;
       qrycadastro.ParamByName('cid').AsString  := edtCidade.Text;
       QRYCADASTRO.ParamByName('uf').AsInteger := codigouf;
       QRYCADASTRO.ExecSQL;
    end
   else
    begin
       QRYCADASTRO.SQL.Clear;
       QRYCADASTRO.SQL.Add('update cidade set cidade = :cid,cd_estado = :uf');
       QRYCADASTRO.SQL.Add('where cd_cidade = :cod');
       QRYCADASTRO.ParamByName('cod').AsInteger := StrToInt(edtCodigo.Text);
       QRYCADASTRO.ParamByName('cid').AsString := edtCidade.Text;
       QRYCADASTRO.ParamByName('uf').AsInteger := codigouf;
       QRYCADASTRO.ExecSQL;
    end;
   Frmprincipal.TRBANCO.Commit;
   edtcodigo.Clear;
   edtcidade.Clear;
   cbUF.Clear;
   edtcidade.Enabled:= false;
   edtcidade.Color:=clScrollBar;
   cbUF.Enabled:= false;
   cbUF.Color:= clScrollBar;
   EDTPesquisa.Enabled:=true;
   rgpesquisa.Enabled := true;
   Dbgpesquisa.Enabled := true; 
   bbpesquisa.Enabled:=true;
   Frmprincipal.MontalistaEstado(cbUF.items);
   QRYPesquisa.SQL.Clear;
   QRYPesquisa.SQL.Add('select cidade.cd_cidade,cidade.cidade,estado.estado from estado,cidade where cidade.cd_estado = estado.cd_estado order by cidade');
   QRYPesquisa.Open;
   inherited;

end;

  }
end;

procedure TFrmcidades.cbUFChange(Sender: TObject);
begin
  inherited;
  codigouf := Frmprincipal.RetornaCodigoEstado(cbUF.Text);
end;

procedure TFrmcidades.FormCreate(Sender: TObject);
begin
   //FrmRelatorioCidades:= TFrmRelatorioCidades.Create(self);
   Frmprincipal.MontalistaEstado(cbUF.items);
   edtcodigo.Enabled := False;
   edtcodigo.Color := clScrollBar;
   edtcidade.Enabled := false;
   edtcidade.Color := clScrollBar;
   cbUF.Enabled := false;
   cbUF.Color := clScrollBar;
   Edtpesquisa.Enabled := false;
   Edtpesquisa.Color := clScrollBar;
   //Qrypesquisa.SQL.Clear;
   //QRYPesquisa.SQL.Add('select cidade.cd_cidade,cidade.cidade,estado.estado from estado,cidade where cidade.cd_estado = estado.cd_estado order by cidade');
  // QRYPesquisa.Open;

  // FrmRelatorioCidades.QryRelatorio.SQL.Clear;
  // FrmRelatorioCidades.QryRelatorio.SQL.Add('select cidade.cd_cidade,cidade.cidade,estado.estado from estado,cidade where cidade.cd_estado = estado.cd_estado order by cidade');
  // FrmRelatorioCidades.QryRelatorio.Open;

 
end;

procedure TFrmcidades.Label4Click(Sender: TObject);
begin

end;

procedure TFrmcidades.Panel2Click(Sender: TObject);
begin

end;

procedure TFrmcidades.rgpesquisaClick(Sender: TObject);
begin
  inherited;
   case rgpesquisa.ItemIndex of
   0: begin
       edtpesquisa.Clear;
       edtpesquisa.Enabled:= false;
       edtpesquisa.Color:= clScrollBar;
      end;
   1: begin
       edtpesquisa.Enabled:= True;
       edtpesquisa.Color:= clWindow;
       edtpesquisa.SetFocus;
       edtpesquisa.Clear;
      end;
   2: Begin
       edtpesquisa.Enabled:= true;
       edtpesquisa.Color:= clWindow;
       edtpesquisa.SetFocus;
       edtpesquisa.Clear;
      end;
end;
end;
procedure TFrmcidades.bbnovoClick(Sender: TObject);
begin
  inherited;
  edtcidade.Enabled := true;
  edtcidade.Color := clWhite;
  bbpesquisa.Enabled := False;
  cbUF.Enabled := true;
  cbUF.Color := clWhite;
  rgpesquisa.Enabled := false;
  Edtpesquisa.Enabled := false;
  Dbgpesquisa.Enabled := false;
  Edtpesquisa.Color := clScrollBar;
  //Qrypesquisa.SQL.Clear;
  edtcidade.SetFocus;
end;

procedure TFrmcidades.bbeditarClick(Sender: TObject);
begin
 {
 if QRYPesquisa.RecordCount <= 0 then
    begin
       application.MessageBox ('Selecione uma registro para alteração.','Atenção',MB_ICONINFORMATION);
       Exit;
    end;

    edtCodigo.Text:= QrypesquisaCD_CIDADE.AsString;
    codigouf := Frmprincipal.RetornaCodigoEstado(QrypesquisaESTADO.AsString);
    cbUF.Text := QrypesquisaESTADO.AsString;
    edtcidade.Text:=QrypesquisaCIDADE.AsString;
    edtcidade.Enabled:= true;
    edtcidade.Color:=clWhite;
    edtcidade.SetFocus;
    rgpesquisa.Enabled := false;
    cbUF.Enabled:= true;
    cbUF.Color:= clWhite;
    EDTPesquisa.Enabled:=false;
    EDTPesquisa.color:=clScrollBar;
    bbpesquisa.Enabled:=false;
    Dbgpesquisa.Enabled:=false;
  inherited;
  }
end;

procedure TFrmcidades.bbcancelarClick(Sender: TObject);
begin
 {
 if Application.MessageBox('Tem Certeza que deseja cancelar?','confirmação de cancelamento',MB_ICONQUESTION + MB_YESNO)=ID_YES  then
     begin
     edtcodigo.Clear;
     edtcodigo.Color:= clScrollBar;
     edtcidade.Color:= clScrollBar;
     edtcidade.Clear;
     edtcidade.Enabled:= false;
     cbUF.Color:= clScrollBar;
     cbUF.Clear;
     cbUF.Enabled:= false;
     rgpesquisa.ItemIndex:= 0;
     rgpesquisa.Enabled := true;
     Edtpesquisa.Enabled := true;
     bbpesquisa.Enabled := true;
     Dbgpesquisa.Enabled := true;
     rgpesquisa.ItemIndex := 0;
     Frmprincipal.MontalistaEstado(cbUF.items);
     QRYPesquisa.SQL.Clear;
     QRYPesquisa.SQL.Add(' select cidade.cd_cidade,cidade.cidade,estado.estado from cidade,estado where cidade.cd_estado = estado.cd_estado ');
     QRYPesquisa.Open;
     end;
  inherited;
  }
end;

procedure TFrmcidades.bbexcluirClick(Sender: TObject);
begin
  {
  if Application.MessageBox('Tem certeza que deseja excluir?','Confirmação de cancelamento',MB_ICONQUESTION+MB_YESNO)=id_yes then
    begin
       inherited;
       QRYCADASTRO.SQL.Clear;
       QRYCADASTRO.SQL.Add('delete  from cidade where cd_estado = :cod');
       QRYCADASTRO.ParamByName('cod').AsInteger:= QrypesquisaCD_CIDADE.AsInteger;
       QRYCADASTRO.ExecSQL;
       Frmprincipal.TRBANCO.Commit;
       QRYPesquisa.SQL.Clear;
       QRYPesquisa.SQL.Add('select cidade.cd_cidade,cidade.cidade,estado.estado from estado,cidade where cidade.cd_estado = estado.cd_estado order by cidade');
       QRYPesquisa.Open;
       end;
  inherited;
   }
end;

procedure TFrmcidades.BitBtn1Click(Sender: TObject);
begin
  inherited;
//    FrmRelatorioCidades.QuickRep.Preview;
end;

end.
