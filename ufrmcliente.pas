unit Ufrmcliente;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmModelo, StdCtrls, DB, sqldb, ExtCtrls,
  Grids, DBGrids, ComCtrls, Buttons, DBCtrls;

type
  TFrmcliente = class(TFrmmodelo)
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Panel5: TPanel;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Panel18: TPanel;
    Label33: TLabel;
    edtclienteagenda: TEdit;
    Panel19: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    dbgagenda: TDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    bbAgIncluir: TBitBtn;
    bbAgEditar: TBitBtn;
    bbAgExcluir: TBitBtn;
    Panel17: TPanel;
    Panel12: TPanel;
    Panel15: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;

    edtInfVC: TEdit;

    Panel16: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    edtInfCC: TEdit;
    edtInfVTC: TEdit;
    Panel14: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    bbcontreceber: TBitBtn;
    Panel13: TPanel;
    Label25: TLabel;
    edtinfocliente: TEdit;
    Panel8: TPanel;
    Panel10: TPanel;
    Label24: TLabel;
    edtclienteanimal: TEdit;
    Panel11: TPanel;
    dbgclienteanimal: TDBGrid;
    bbanimal: TBitBtn;
    Panel6: TPanel;
    Panel9: TPanel;
    bbAnincluir: TBitBtn;
    bbAnAlterar: TBitBtn;
    bbAnExcluir: TBitBtn;
    bbAnImprimir: TBitBtn;
    Panel7: TPanel;
    Label23: TLabel;
    edtclienteanotacao: TEdit;
    dbganotacao: TDBGrid;
    MemoAnotacao: TMemo;
    Panel21: TPanel;
    edtrenda: TEdit;
    Label1: TLabel;
    edtsubordinado: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Panel22: TPanel;
    ckmensalista: TCheckBox;
    edtbase: TEdit;
    Label6: TLabel;
    Panel23: TPanel;
    ckbloqueado: TCheckBox;
    cbtabela: TComboBox;
    Label7: TLabel;
    Panel24: TPanel;
    Label8: TLabel;
    ckmail: TCheckBox;
    cksms: TCheckBox;
    cktel: TCheckBox;
    bbsubopes: TButton;
    Panel25: TPanel;
    MemoObsGeral: TMemo;
    Label9: TLabel;
    Panel26: TPanel;
    Panel27: TPanel;
    ckcredito: TCheckBox;
    edtdesrestricao: TEdit;
    Label36: TLabel;
    Memo2: TMemo;
    Panel4: TPanel;
    lbnome: TLabel;
    Label2: TLabel;
    lbrg: TLabel;
    Label10: TLabel;
    lbempresa: TLabel;
    lbsexo: TLabel;
    lbnascimento: TLabel;
    lbrazao: TLabel;
    Label40: TLabel;
    Label37: TLabel;
    edtcodigo: TEdit;
    cbpessoa: TComboBox;
    cbsituacao: TComboBox;
    edtnome: TEdit;
    edtrazao: TEdit;
    edtcargo: TEdit;
    edttel1: TEdit;
    edttel2: TEdit;
    edtcel: TEdit;
    edtemail: TEdit;
    edtendereco: TEdit;
    edtnumero: TEdit;
    edtcomplemento: TEdit;
    edtbairro: TEdit;
    cbuf: TComboBox;
    cbcidade: TComboBox;
    edtcep: TEdit;
    cbgrupo: TComboBox;
    btngrupo: TButton;
    ckcartas: TCheckBox;
    cbsexo: TComboBox;

    Label22: TLabel;
    Panel28: TPanel;
    edtempresa: TEdit;
    bbempresa: TBitBtn;
    Panel29: TPanel;
    edtinscestadual: TEdit;
    bbempresadel: TBitBtn;
    bbsubopesdel: TButton;
    bbatenpes: TButton;
    bbatenpesdel: TButton;
    edtfuncionario: TEdit;
    Panel30: TPanel;
    Panel31: TPanel;
    procedure bbsairClick(Sender: TObject);
    procedure cbpessoaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure rgpesquisaClick(Sender: TObject);
    procedure bbpesquisaClick(Sender: TObject);
    procedure bbnovoClick(Sender: TObject);
    procedure bbgravarClick(Sender: TObject);
    procedure bbAnincluirClick(Sender: TObject);
    procedure bbAnAlterarClick(Sender: TObject);
    procedure bbAgIncluirClick(Sender: TObject);
    procedure bbAgEditarClick(Sender: TObject);
    procedure bbanimalClick(Sender: TObject);
    procedure bbcontreceberClick(Sender: TObject);
    procedure cbcidadeChange(Sender: TObject);
    procedure btngrupoClick(Sender: TObject);
    procedure cbgrupoDropDown(Sender: TObject);
    procedure DbgpesquisaCellClick(Column: TColumn);
    procedure DbgpesquisaDblClick(Sender: TObject);
    procedure bbcancelarClick(Sender: TObject);
    procedure cbufChange(Sender: TObject);
    procedure cbufDropDown(Sender: TObject);
    procedure edtnomeChange(Sender: TObject);
    procedure mskidadeChange(Sender: TObject);
    procedure bbempresaClick(Sender: TObject);
    procedure bbempresadelClick(Sender: TObject);
    procedure edtfuncionarioChange(Sender: TObject);
    procedure bbsubopesdelClick(Sender: TObject);
    procedure bbsubopesClick(Sender: TObject);
    procedure bbatenpesClick(Sender: TObject);
    procedure bbatenpesdelClick(Sender: TObject);
    procedure cbgrupoChange(Sender: TObject);
  private
    { Private declarations }
     AbaAnterior: Integer;

  public
    { Public declarations }
    codigoempresa : integer;
    codigosubordinado:integer;
    codigocidade:integer;
    codigofuncionario: integer;
    codigogrupo: integer;
    procedure selecionadb;

  end;

var
  Frmcliente: TFrmcliente;

implementation

uses UfrmPrincipal;

{$R *.lfm}

procedure TFrmcliente.bbsairClick(Sender: TObject);
begin
  close;

end;

procedure TFrmcliente.cbpessoaChange(Sender: TObject);
begin
  inherited;
    if cbpessoa.ItemIndex = 0 then
   begin
    lbnome.Caption := 'Nome';
    lbrazao.Caption := 'CPF';
    lbsexo.Caption := 'Sexo';
    lbempresa.Caption :='Empresa';
    Label10.Caption := 'Cargo';
  //  mskcpf.Visible := true;
  //  mskrg.Visible := true;
    cbsexo.Visible := true;
  //  mskidade.Visible := true;
    Panel29.Visible := true;
    edtrazao.Visible := false;
    edtinscestadual.Visible := false;
    //mskcnpj.Visible:= false;
    lbnascimento.Visible := true;
    lbrg.Visible := true;
    bbempresa.Enabled := true;
    bbempresadel.Enabled := true;

   end ;

   if cbpessoa.ItemIndex = 1 then
    begin
    lbnome.Caption := 'Nome fantasia';
    lbrazao.Caption := 'Razão social';
    lbsexo.Caption := 'CNPJ';
    lbempresa.Caption :='Inscr.Estadual';
    Label10.Caption := 'Contato';
    //mskcpf.Visible := false;
    //mskrg.Visible := false;
    cbsexo.Visible := false;
   // mskidade.Visible := false;
    edtinscestadual.Visible:= true;
    edtrazao.Visible := true;
   // mskcnpj.Visible:= true;
    lbnascimento.Visible := false;
    lbrg.Visible := false;
    Panel29.Visible := false;
    bbempresa.Enabled := false;
    bbempresadel.Enabled := false;



   end;

end;

procedure TFrmcliente.FormCreate(Sender: TObject);
begin

  inherited;
   Frmprincipal.pesquisafun := 2;
   AbaAnterior:= 1;





end;

procedure TFrmcliente.PageControl1Change(Sender: TObject);
begin
   Inherited;
    if operacao = 'inserindo' then
     begin
    If PageControl1.ActivePageIndex = 1 then
     begin
        AbaAnterior:= 1;
     end;
    if PageControl1.ActivePageIndex = 2 then
     begin
       AbaAnterior:= 2;
     end;


   case PageControl1.ActivePageIndex  of
     0:PageControl1.ActivePageIndex := AbaAnterior ;
     3:PageControl1.ActivePageIndex := AbaAnterior ;
     4:PageControl1.ActivePageIndex := AbaAnterior;
     5:PageControl1.ActivePageIndex := AbaAnterior;
     6:PageControl1.ActivePageIndex := AbaAnterior;
   end;
   end;


  if operacao = 'inserindo' then
   begin
  case PageControl1.ActivePageIndex of
   0,1,2 : begin
   bbnovo.Enabled:=True;
   bbeditar.Enabled:=true;
    end;
   3,4,5,6: begin
   bbnovo.Enabled:=false;
   bbeditar.Enabled:=false;
   bbexcluir.Enabled:= false;
   end;
   end;
  end
  else
  case PageControl1.ActivePageIndex of
   0,1,2 : begin
   bbnovo.Enabled:=True;
   bbeditar.Enabled:=true;
   bbexcluir.Enabled:= true;
    end;
   3,4,5,6: begin
   bbnovo.Enabled:=false;
   bbeditar.Enabled:=false;
   bbexcluir.Enabled:= false;
   end;
  end;


  end;
procedure TFrmcliente.rgpesquisaClick(Sender: TObject);
begin
   case rgpesquisa.ItemIndex of
      0: begin
          edtpesquisa.Enabled := False;
          edtpesquisa.Color := clSilver;
          bbpesquisa.SetFocus;
        end;
1, 2, 3: begin
           edtpesquisa.Enabled := True;
           edtpesquisa.Color := clWhite;
           edtpesquisa.SetFocus;
         end;
    end;
  inherited;
end;
procedure TFrmcliente.bbpesquisaClick(Sender: TObject);
begin
  inherited;

        case rgpesquisa.ItemIndex of
         0: begin
           {
           qrypesquisa.SQL.Clear;
           qrypesquisa.SQL.Add('select cliente.cd_cliente, cliente.cd_cidade, cliente.cd_funcionario, cliente.cliente,');
           qrypesquisa.SQL.Add(' cliente.razao_social, cliente.data_cadastro, cliente.tipo_pessoa, cliente.situacao, cliente.sexo,');
           qrypesquisa.SQL.Add(' cliente.cd_empresa, cliente.cargo, cliente.endereco, cliente.bairro, cliente.numero,');
           qrypesquisa.SQL.Add(' cliente.complemento, cliente.cpf_cnpj, cliente.rg_inscrestadual, cliente.cep,');
           qrypesquisa.SQL.Add(' cliente.uf, cliente.fone1, cliente.fone2, cliente.fone3, cliente.email, cliente.renda_anual,');
           qrypesquisa.SQL.Add(' cliente.cd_subordinado, cliente.tabela_preco, cliente.dia_base, cliente.descricao,');
           qrypesquisa.SQL.Add(' cliente.restricao_descricao, cliente.mensalista, cliente.bloqueado, cliente.auto_tel,');
           qrypesquisa.SQL.Add(' cliente.auto_sms,restricao_cred, cliente.auto_email,cliente.auto_carta, cliente.atualizacao_cadastro, cliente.data_nascimento,');
           qrypesquisa.SQL.Add(' cliente.primeira_compra, cliente.ultima_compra, cliente.total_compras,');
           qrypesquisa.SQL.Add(' cliente.volor_maior_compra, cliente.valor_total_compras, grupo_cliente.grupo,');
           qrypesquisa.SQL.Add(' cidade.cidade from cliente,cidade,grupo_cliente');
           qrypesquisa.SQL.Add(' where cliente.cd_cidade = cidade.cd_cidade and cliente.cd_grupo = grupo_cliente.cd_grupo ');
           qrypesquisa.Open;

           end;
         1:begin
          try
            StrToInt(edtpesquisa.Text);
          except
            Application.MessageBox('Código inválido','Aviso',MB_ICONWARNING);
            edtpesquisa.SetFocus;
            Exit;
          end;
           qrypesquisa.SQL.Clear;
           qrypesquisa.SQL.Add('select cliente.cd_cliente, cliente.cd_cidade, cliente.cd_funcionario, cliente.cliente,');
           qrypesquisa.SQL.Add(' cliente.razao_social, cliente.data_cadastro, cliente.tipo_pessoa, cliente.situacao, cliente.sexo,');
           qrypesquisa.SQL.Add(' cliente.cd_empresa, cliente.cargo, cliente.endereco, cliente.bairro, cliente.numero,');
           qrypesquisa.SQL.Add(' cliente.complemento, cliente.cpf_cnpj, cliente.rg_inscrestadual, cliente.cep,');
           qrypesquisa.SQL.Add(' cliente.uf, cliente.fone1, cliente.fone2, cliente.fone3, cliente.email, cliente.renda_anual,');
           qrypesquisa.SQL.Add(' cliente.cd_subordinado, cliente.tabela_preco, cliente.dia_base, cliente.descricao,');
           qrypesquisa.SQL.Add(' cliente.restricao_descricao, cliente.mensalista, cliente.bloqueado, cliente.auto_tel,');
           qrypesquisa.SQL.Add(' cliente.auto_sms,restricao_cred, cliente.auto_email,cliente.auto_carta, cliente.atualizacao_cadastro, cliente.data_nascimento,');
           qrypesquisa.SQL.Add(' cliente.primeira_compra, cliente.ultima_compra, cliente.total_compras,');
           qrypesquisa.SQL.Add(' cliente.volor_maior_compra, cliente.valor_total_compras, grupo_cliente.grupo,');
           qrypesquisa.SQL.Add(' cidade.cidade from cliente,cidade,grupo_cliente');
           qrypesquisa.SQL.Add(' where cliente.cd_cidade = cidade.cd_cidade and cliente.cd_grupo = grupo_cliente.cd_grupo and cd_cliente = :cod');
           qrypesquisa.ParamByName('cod').AsInteger := StrToInt(Edtpesquisa.Text);
           qrypesquisa.Open;
          end;
        2:Begin
           qrypesquisa.SQL.Clear;
           qrypesquisa.SQL.Add('select cliente.cd_cliente, cliente.cd_cidade, cliente.cd_funcionario, cliente.cliente,');
           qrypesquisa.SQL.Add(' cliente.razao_social, cliente.data_cadastro, cliente.tipo_pessoa, cliente.situacao, cliente.sexo,');
           qrypesquisa.SQL.Add(' cliente.cd_empresa, cliente.cargo, cliente.endereco, cliente.bairro, cliente.numero,');
           qrypesquisa.SQL.Add(' cliente.complemento, cliente.cpf_cnpj, cliente.rg_inscrestadual, cliente.cep,');
           qrypesquisa.SQL.Add(' cliente.uf, cliente.fone1, cliente.fone2, cliente.fone3, cliente.email, cliente.renda_anual,');
           qrypesquisa.SQL.Add(' cliente.cd_subordinado, cliente.tabela_preco, cliente.dia_base, cliente.descricao,');
           qrypesquisa.SQL.Add(' cliente.restricao_descricao, cliente.mensalista, cliente.bloqueado, cliente.auto_tel,');
           qrypesquisa.SQL.Add(' cliente.auto_sms,restricao_cred, cliente.auto_email,cliente.auto_carta, cliente.atualizacao_cadastro, cliente.data_nascimento,');
           qrypesquisa.SQL.Add(' cliente.primeira_compra, cliente.ultima_compra, cliente.total_compras,');
           qrypesquisa.SQL.Add(' cliente.volor_maior_compra, cliente.valor_total_compras, grupo_cliente.grupo,');
           qrypesquisa.SQL.Add(' cidade.cidade from cliente,cidade,grupo_cliente');
           qrypesquisa.SQL.Add(' where cliente.cd_cidade = cidade.cd_cidade and cliente.cd_grupo = grupo_cliente.cd_grupo and cliente.cliente like :nm');
          qrypesquisa.parambyname('nm').AsString := uppercase(EDTPesquisa.text) + '%';
          qrypesquisa.open;
          end;
        3:Begin
           qrypesquisa.SQL.Clear;
           qrypesquisa.SQL.Add('select cliente.cd_cliente, cliente.cd_cidade, cliente.cd_funcionario, cliente.cliente,');
           qrypesquisa.SQL.Add(' cliente.razao_social, cliente.data_cadastro, cliente.tipo_pessoa, cliente.situacao, cliente.sexo,');
           qrypesquisa.SQL.Add(' cliente.cd_empresa, cliente.cargo, cliente.endereco, cliente.bairro, cliente.numero,');
           qrypesquisa.SQL.Add(' cliente.complemento, cliente.cpf_cnpj, cliente.rg_inscrestadual, cliente.cep,');
           qrypesquisa.SQL.Add(' cliente.uf, cliente.fone1, cliente.fone2, cliente.fone3, cliente.email, cliente.renda_anual,');
           qrypesquisa.SQL.Add(' cliente.cd_subordinado, cliente.tabela_preco, cliente.dia_base, cliente.descricao,');
           qrypesquisa.SQL.Add(' cliente.restricao_descricao, cliente.mensalista, cliente.bloqueado, cliente.auto_tel,');
           qrypesquisa.SQL.Add(' cliente.auto_sms,restricao_cred, cliente.auto_email,cliente.auto_carta, cliente.atualizacao_cadastro, cliente.data_nascimento,');
           qrypesquisa.SQL.Add(' cliente.primeira_compra, cliente.ultima_compra, cliente.total_compras,');
           qrypesquisa.SQL.Add(' cliente.volor_maior_compra, cliente.valor_total_compras, grupo_cliente.grupo,');
           qrypesquisa.SQL.Add(' cidade.cidade from cliente,cidade,grupo_cliente');
           qrypesquisa.SQL.Add(' where cliente.cd_cidade = cidade.cd_cidade and cliente.cd_grupo = grupo_cliente.cd_grupo cidade.cidade like :nmcid');
          qrypesquisa.parambyname('nmcid').asString := uppercase(edtpesquisa.text)+'%';
          qrypesquisa.open;
       end;
       }
       end;

       //if QRYPesquisa.RecordCount <= 0 then
      // begin
      // application.MessageBox ('Nenhum cliente foi encorntrado.','Atenção',MB_ICONINFORMATION);
      // Exit;

       end;
end;
procedure TFrmcliente.bbnovoClick(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
  Panel4.Enabled  := true;
  Panel5.Enabled  := true;
  Panel21.Enabled := true;
  Panel22.Enabled := true;
  Panel23.Enabled := true;
  Panel24.Enabled := true;
  Panel25.Enabled := true;
  Panel26.Enabled := true;
  Panel27.Enabled := true;
  bbsubopes.Enabled := true;
  bbsubopesdel.Enabled:=true;
  bbatenpes.Enabled := true;
  bbatenpesdel.Enabled := true;
  //mskcnpj.Color := clWhite;
  cbpessoa.Color := clWhite;
  cbsituacao.Color := clWhite;
  cbgrupo.Color := clWhite;
  edtnome.Color := clWhite;
  edtrazao.Color := clWhite;
  edtempresa.Color := clWhite;
  //mskcpf.Color := clWhite;
  //mskrg.Color := clWhite;
  cbsexo.Color := clWhite;
  //mskidade.Color := clWhite;
  //mskcpf.Color := clWhite;
  edtcargo.Color := clWhite;
  edttel1.Color := clWhite;
  edttel2.Color := clWhite;
  edtcel.Color := clWhite;
  edtemail.Color := clWhite;
  edtendereco.Color := clWhite;
  edtnumero.Color := clWhite;
  edtcomplemento.Color := clWhite;
  edtbairro.Color := clWhite;
  cbuf.Color := clWhite;
  cbcidade.Color := clWhite;
  edtcep.Color := clWhite;
  edtrenda.Color := clWhite;
  edtsubordinado.Color := clWhite;
  edtfuncionario.Color := clWhite;
  edtbase.Color := clWhite;
  cbtabela.Color := clWhite;
  MemoObsGeral.Color := clWhite;
  edtdesrestricao.Color := clWhite;
  edtinscestadual.Color:= clWhite;

  edtinscestadual.Clear;
  cbgrupo.Clear;
  edtnome.Clear;
  edtrazao.Clear;
//  mskcpf.Clear;
  //mskrg.Clear;
  cbsexo.Clear;
  //mskidade.Clear;
  //mskcpf.Clear;
  edtcargo.Clear;
  edttel1.Clear;
  edttel2.Clear;
  edtcel.Clear;
  edtemail.Clear;
  edtendereco.Clear;
  edtnumero.Clear;
  edtcomplemento.Clear;
  edtbairro.Clear;
  cbuf.Clear;
  cbcidade.Clear;
  edtempresa.Clear;
  edtcep.Clear;
  edtrenda.Clear;
  edtsubordinado.Clear;
  edtfuncionario.Clear;
  edtbase.Clear;
  cbtabela.Clear;
  MemoObsGeral.Clear;
  edtdesrestricao.Clear;
  ckmensalista.Checked := false;
  ckbloqueado.Checked := false;
  ckmail.Checked := false;
  cksms.Checked := false;
  cktel.Checked := false;
  ckcredito.Checked := false;
  ckcartas.Checked := false;
  bbempresa.Enabled := true;
  bbempresadel.Enabled := true;
  inherited;

end;

procedure TFrmcliente.bbgravarClick(Sender: TObject);
begin
  {
  if EdtNome.Text = '' then
    begin
       Application.MessageBox('falta informar o nome do cliente','aviso',MB_ICONWARNING);
       Exit;
    end;
   if CbCidade.Text = '' then
    begin
       Application.MessageBox('Falta informar a cidade do cliente','aviso',MB_ICONWARNING);
       Exit;
    end;
   if operacao = 'inserindo' then
    begin

       Frmprincipal.Qryaux.SQL.Clear;
       Frmprincipal.qryAux.SQL.Add('select max(cd_cliente)as maior from cliente');
       Frmprincipal.qryAux.Open;
       Qrycadastro.SQL.Clear;
       Qrycadastro.SQL.Add('insert into cliente(cd_cliente,cd_cidade,cd_grupo,cd_empresa,');
       Qrycadastro.SQL.Add('cliente,razao_social,data_cadastro,tipo_pessoa,situacao,');
       Qrycadastro.SQL.Add('sexo,cargo,endereco,bairro,numero,complemento,cpf_cnpj,rg_inscrestadual,cep,email,');
       Qrycadastro.SQL.Add('atualizacao_cadastro,data_nascimento,data_pesquisa,fone1,fone2,fone3,');
       Qrycadastro.SQL.Add('renda_anual,tabela_preco,dia_base,descricao,restricao_descricao,');
       Qrycadastro.SQL.Add('mensalista,bloqueado,auto_email,auto_sms,auto_tel,auto_carta,restricao_cred)');
       Qrycadastro.SQL.Add('values (:cod,:codcid,:codgrupo,:codemp,:nm,:ra_so,:cad_data,:tip_pes,:situ,');
       Qrycadastro.SQL.Add (':sexo,:cargo,:end,:bairro,:num,:compl,:cpf_cnpj,:rg_inscest,');
       Qrycadastro.SQL.Add(':cep,:email,:atuali_data,:nasc_data,:pes_data,:fone1,:fone2,:fone3,');
       Qrycadastro.SQL.Add(':renda,:tab,:base,:descr,:descr_res,:mensa,:bloq,:aut_mail,:aut_sms,:aut_tel,:aut_carta,:cred)');
       Qrycadastro.ParamByName('cod').AsInteger := Frmprincipal.Qryaux.fieldbyname('maior').asinteger + 1;
       Qrycadastro.ParamByName('codcid').AsInteger := codigocidade;
       Qrycadastro.ParamByName('codgrupo').AsInteger := codigogrupo;
       Qrycadastro.ParamByName('codemp').AsInteger := codigoempresa;
       Qrycadastro.ParamByName('nm').AsString := EdtNome.Text;
       Qrycadastro.ParamByName('ra_so').AsString:= edtrazao.Text;
       Qrycadastro.ParamByName('cad_data').AsDate := date;
       Qrycadastro.ParamByName('tip_pes').AsInteger:= cbpessoa.ItemIndex;
       Qrycadastro.ParamByName('situ').AsString := cbsituacao.Text;
       Qrycadastro.ParamByName('sexo').AsString := cbsexo.Text;
       Qrycadastro.ParamByName('cargo').AsString := edtcargo.Text;
       Qrycadastro.ParamByName('end').AsString:= edtendereco.Text;
       Qrycadastro.ParamByName('bairro').AsString:= edtbairro.Text;
       Qrycadastro.ParamByName('num').AsInteger := (StrToInt(edtnumero.Text));
       Qrycadastro.ParamByName('compl').AsString  := edtcomplemento.text;
       Qrycadastro.ParamByName('cep').AsString := edtcep.Text;
       Qrycadastro.ParamByName('email').AsString := edtemail.Text;
       Qrycadastro.ParamByName('atuali_data').AsDate := date;
       Qrycadastro.ParamByName('fone1').AsString := edttel1.Text;
       Qrycadastro.ParamByName('fone2').AsString := edttel2.Text;
       Qrycadastro.ParamByName('fone3').AsString := edtcel.Text;
       case cbpessoa.ItemIndex of
       0:begin
       Qrycadastro.ParamByName('cpf_cnpj').AsString:= mskcpf.Text;
       Qrycadastro.ParamByName('rg_inscest').AsString:=  mskrg.Text;
       Qrycadastro.ParamByName('nasc_data').AsDate := strtodate(mskidade.Text);
       Qrycadastro.ParamByName('pes_data').AsDate := strtodate(mskdatapesquisa.Text +'0001');
       end;
       1:begin
       Qrycadastro.ParamByName('cpf_cnpj').AsString:= mskcnpj.Text;
       Qrycadastro.ParamByName('rg_inscest').AsString := edtinscestadual.Text;
       end;end;

        Qrycadastro.ParamByName('renda').AsInteger := strtoint(edtrenda.Text);
       Qrycadastro.ParamByName('tab').AsInteger := strtoint(cbtabela.Text);
       Qrycadastro.ParamByName('base').AsInteger := strtoint(edtbase.Text);
       Qrycadastro.ParamByName('descr').AsString := MemoObsGeral.Lines.Text;
       Qrycadastro.ParamByName('descr_res').AsString := edtdesrestricao.Text;


        if ckmensalista.Checked = true then
        begin
           Qrycadastro.ParamByName('mensa').AsString := 'SIM';
        end
        else
        begin
           Qrycadastro.ParamByName('mensa').AsString := 'NAO';
        end;
       if ckbloqueado.Checked = true then
        begin
           Qrycadastro.ParamByName('bloq').AsString := 'SIM';
        end
        else
         begin
           Qrycadastro.ParamByName('bloq').AsString := 'NAO';
         end;
        if ckmail.Checked = true then
         begin
            Qrycadastro.ParamByName('aut_email').AsString := 'SIM';
         end
         else
         begin
            Qrycadastro.ParamByName('aut_mail').AsString := 'NAO';
         end;
        if cksms.Checked = true then
         begin
            Qrycadastro.ParamByName('aut_sms').AsString := 'SIM';
         end
         else
         begin
            Qrycadastro.ParamByName('aut_sms').AsString := 'NAO';
         end;
        if cktel.Checked = true then
         begin
            Qrycadastro.ParamByName('aut_tel').AsString := 'SIM';
         end
         else
         begin
            Qrycadastro.ParamByName('aut_tel').AsString := 'NAO';
         end;

          if ckcartas.Checked = true then
         begin
            Qrycadastro.ParamByName('aut_carta').AsString := 'SIM';
         end
         else
         begin
            Qrycadastro.ParamByName('aut_carta').AsString := 'NAO';
         end;
         if ckcredito.Checked = true then
         begin
            Qrycadastro.ParamByName('cred').AsString := 'SIM';
         end
         else
         begin
            Qrycadastro.ParamByName('cred').AsString := 'NAO';
         end; 
         Qrycadastro.ExecSQL;
     end
       else
         begin
            qrycadastro.SQL.Clear;
            Qrycadastro.SQL.Add('update  cliente set cd_cidade = :codcid,cd_funcionario = :codfun,cd_grupo = :codgrupo,cliente = :nm,');
            Qrycadastro.SQL.Add('razao_social = :ra_so,tipo_pessoa = :tip_pes,situacao = :situ,');
            Qrycadastro.SQL.Add('sexo = :sexo,empresa = :empr,cargo = :cargo,endereco = :end,bairro = : bairro,numero = :num,');
            Qrycadastro.SQL.Add('complemento =:compl,cpf_cnpj =:cpf_cnpj,rg_inscrestadual = :rg_inscest,cep = :cep,email = :email,');
            Qrycadastro.SQL.Add('renda_anual = :renda,subordinado =:sub,tabela_preco = :tub,dia_base = :base,descricao =:descr,restricao_descricao = : descr_res,');
            Qrycadastro.SQL.Add('mensalista =:mensa,bloqueado =:bloq,auto_tel = :aut_tel,auto_sms =:aut_sms,auto_carta = :aut_carta,');
            Qrycadastro.SQL.Add('auto_email =:aut_email,restricao_cad =:cred,atualizacao_cadastro =:atuali_data,data_nascimento =:nasc_data,');
            Qrycadastro.SQL.Add('data_pesquisa =:pes_data,fone1 =:fone1,fone2 =:fone2,fone3 =:fone3 where cd_cliente = :cod');
            Qrycadastro.ParamByName('cod').AsInteger := QrypesquisaCD_CLIENTE.AsInteger;
            Qrycadastro.ParamByName('codcid').AsInteger := codigocidade;
            Qrycadastro.ParamByName('codfun').AsInteger := codigofuncionario;
            Qrycadastro.ParamByName('codgrupo').AsInteger := codigogrupo;
            Qrycadastro.ParamByName('nm').AsString := EdtNome.Text;
            Qrycadastro.ParamByName('ra_so').AsString:= edtrazao.Text;
            Qrycadastro.ParamByName('tip_pes').AsInteger:= cbpessoa.ItemIndex;
            Qrycadastro.ParamByName('situ').AsString := cbsituacao.Text;
            Qrycadastro.ParamByName('sexo').AsString := cbsexo.Text;
            Qrycadastro.ParamByName('empr').AsString := edtinscestadual.Text;
            Qrycadastro.ParamByName('cargo').AsString := edtcargo.Text;
            Qrycadastro.ParamByName('end').AsString:= edtendereco.Text;
            Qrycadastro.ParamByName('bairro').AsString:= edtbairro.Text;
            Qrycadastro.ParamByName('num').AsInteger := (StrToInt(edtnumero.Text));
            Qrycadastro.ParamByName('compl').AsString  := edtcomplemento.text;
            case cbpessoa.ItemIndex of
            0:begin
            Qrycadastro.ParamByName('cpf_cnpj').AsString:= mskcpf.Text;
            Qrycadastro.ParamByName('rg_inscest').AsString:=  mskrg.Text;
            end;
            1:begin
            Qrycadastro.ParamByName('cnpj').AsString:= mskcnpj.Text;
            Qrycadastro.ParamByName('rg_inscest').AsString := edtinscestadual.Text;
            end;end;
            Qrycadastro.ParamByName('cep').AsString := edtcep.Text;
            Qrycadastro.ParamByName('email').AsString := edtemail.Text;
            Qrycadastro.ParamByName('renda').AsFloat := strtofloat(edtrenda.Text);
            Qrycadastro.ParamByName('sub').AsString := edtsubordinado.Text;
            Qrycadastro.ParamByName('tab').AsString := cbtabela.Text;
            Qrycadastro.ParamByName('base').AsInteger := strtoint(edtbase.Text);
            Qrycadastro.ParamByName('descr').AsString := MemoObsGeral.Lines.Text;
            Qrycadastro.ParamByName('descr_res').AsString := edtdesrestricao.Text;
            Qrycadastro.ParamByName('atuali_data').AsDate := date;
            Qrycadastro.ParamByName('nasc_data').AsDate := strtodate(mskidade.Text);
            Qrycadastro.ParamByName('pes_data').AsDate := strtodate(mskdatapesquisa.Text +'0001');
            Qrycadastro.ParamByName('fone1').AsString := edttel1.Text;
            Qrycadastro.ParamByName('fone2').AsString := edttel2.Text;
            Qrycadastro.ParamByName('fone3').AsString := edtcel.Text;
            if ckmensalista.Checked = true then
            begin
               Qrycadastro.ParamByName('mensa').AsString := 'SIM';
            end
            else
            begin
               Qrycadastro.ParamByName('mensa').AsString := 'NAO';
            end;
           if ckbloqueado.Checked = true then
            begin
               Qrycadastro.ParamByName('bloq').AsString := 'SIM';
            end
            else
             begin
               Qrycadastro.ParamByName('bloq').AsString := 'NAO';
             end;
            if ckmail.Checked = true then
             begin
                Qrycadastro.ParamByName('aut_email').AsString := 'SIM';
             end
             else
             begin
                Qrycadastro.ParamByName('aut_mail').AsString := 'NAO';
             end;
            if cksms.Checked = true then
             begin
                Qrycadastro.ParamByName('aut_sms').AsString := 'SIM';
             end
             else
             begin
                Qrycadastro.ParamByName('aut_sms').AsString := 'NAO';
             end;
            if cktel.Checked = true then
             begin
                Qrycadastro.ParamByName('aut_tel').AsString := 'SIM';
             end
             else
             begin
                Qrycadastro.ParamByName('aut_tel').AsString := 'NAO';
             end;

              if ckcartas.Checked = true then
             begin
                Qrycadastro.ParamByName('aut_carta').AsString := 'SIM';
             end
             else
             begin
                Qrycadastro.ParamByName('aut_carta').AsString := 'NAO';
             end;
             if ckcredito.Checked = true then
             begin
                Qrycadastro.ParamByName('cred').AsString := 'SIM';
             end
             else
             begin
                Qrycadastro.ParamByName('cred').AsString := 'NAO';
             end;
                qrycadastro.ExecSQL;
         end;
   Frmprincipal.TrBanco.Commit;
   Panel4.Enabled:= false;
   Panel5.Enabled:= false;
   cbpessoa.ItemIndex :=-1;
   cbsituacao.ItemIndex :=-1;
   cbpessoa.Color := clScrollBar;
   cbsituacao.Color := clScrollBar;
   cbgrupo.Color := clWhite;
   edtnome.Color := clScrollBar;
   edtrazao.Color := clScrollBar;
   mskcpf.Color := clScrollBar;
   mskcnpj.Color := clScrollBar;
   cbgrupo.Color := clScrollBar;
   mskrg.Color := clScrollBar;
   cbsexo.Color := clScrollBar;
   mskidade.Color := clScrollBar;
   mskcpf.Color := clScrollBar;
   edtcargo.Color := clScrollBar;
   edttel1.Color := clScrollBar;
   edttel2.Color := clScrollBar;
   edtcel.Color := clScrollBar;
   edtemail.Color := clScrollBar;
   edtendereco.Color := clScrollBar;
   edtnumero.Color := clWhite;
   edtcomplemento.Color := clScrollBar;
   edtbairro.Color := clScrollBar;
   cbuf.Color := clScrollBar;
   cbcidade.Color := clScrollBar;
   edtnumero.Color := clScrollBar;
   edtcep.Color := clScrollBar;
   edtrenda.Color := clScrollBar;
   edtsubordinado.Color := clScrollBar;
   edtfuncionario.Color := clScrollBar;
   edtbase.Color := clScrollBar;
   cbtabela.Color := clScrollBar;
   MemoObsGeral.Color := clScrollBar;
   edtdesrestricao.Color := clScrollBar;
   edtinscestadual.Color := clScrollBar;
   edtinscestadual.Clear;
   cbgrupo.Clear;
   edtnome.Clear;
   edtrazao.Clear;
   mskcpf.Clear;
   mskrg.Clear;
   cbsexo.Clear;
   mskidade.Clear;
   mskcpf.Clear;
   edtcargo.Clear;
   edttel1.Clear;
   edttel2.Clear;
   edtcel.Clear;
   edtemail.Clear;
   edtendereco.Clear;
   edtnumero.Clear;
   edtcomplemento.Clear;
   edtbairro.Clear;
   cbuf.Clear;
   cbcidade.Clear;
   edtcep.Clear;
   edtrenda.Clear;
   edtsubordinado.Clear;
   edtfuncionario.Clear;
   edtbase.Clear;
   cbtabela.Clear;
   MemoObsGeral.Clear;
   edtdesrestricao.Clear;
   ckmensalista.Checked := false;
   ckbloqueado.Checked := false;
   ckmail.Checked := false;
   cksms.Checked := false;
   cktel.Checked := false;
   ckcredito.Checked := false;
   ckcartas.Checked := false;
   bbempresa.Enabled := False;
   bbempresadel.Enabled := false;
   inherited
   }
end;

procedure TFrmcliente.bbAnincluirClick(Sender: TObject);
begin
  inherited;
  //FrmAnotacaoCliente := TFrmAnotacaoCliente.Create(Self);
  //FrmAnotacaoCliente.ShowModal;
  //FrmAnotacaoCliente.Free;
end;

procedure TFrmcliente.bbAnAlterarClick(Sender: TObject);
begin
  inherited;
  //FrmAnotacaoCliente := TFrmAnotacaoCliente.Create(Self);
  //FrmAnotacaoCliente.ShowModal;
  //FrmAnotacaoCliente.Free;
end;

procedure TFrmcliente.bbAgIncluirClick(Sender: TObject);
begin
  inherited;
  //FrmRetornoCliente:= TFrmRetornoCliente.Create(Self);
  //FrmRetornoCliente.ShowModal;
  //FrmRetornoCliente.Free;
end;

procedure TFrmcliente.bbAgEditarClick(Sender: TObject);
begin
  inherited;
  //FrmRetornoCliente:= TFrmRetornoCliente.Create(Self);
  //FrmRetornoCliente.ShowModal;
  //FrmRetornoCliente.Free;
end;

procedure TFrmcliente.bbanimalClick(Sender: TObject);
begin
  inherited;
  //FrmAnimal:= TFrmAnimal.Create(Self);
  //FrmAnimal.ShowModal;
  //FrmAnimal.Free;
end;



procedure TFrmcliente.bbcontreceberClick(Sender: TObject);
begin
  inherited;
  edtInfVC.Text := 'texto';
end;

procedure TFrmcliente.cbcidadeChange(Sender: TObject);
begin
  inherited;
  CodigoCidade := Frmprincipal.RetornaCodigoCidade(CbCidade.Text);
end;

procedure TFrmcliente.btngrupoClick(Sender: TObject);
begin
  inherited;
      //FrmGrupos := TFrmGrupos.Create(Self);
      //FrmGrupos.ShowModal;
      //FrmGrupos.Free;
end;

procedure TFrmcliente.cbgrupoDropDown(Sender: TObject);
begin
  inherited;
   cbgrupo.Clear;
   Frmprincipal.MontaListagrupo(cbgrupo.Items);
end;

procedure TFrmcliente.DbgpesquisaCellClick(Column: TColumn);
begin
  inherited;
  selecionadb;
end;

procedure TFrmcliente.DbgpesquisaDblClick(Sender: TObject);
begin
  inherited;
  PageControl1.TabIndex := 1;
  selecionadb;
end;

procedure TFrmcliente.bbcancelarClick(Sender: TObject);
begin
  if Application.MessageBox('Tem certeza que deseja cancelar?','Confirmação de Cancelamento',MB_ICONQUESTION+MB_YESNO) = id_yes then
  begin
  if operacao = 'inserindo' then
   begin
  edtinscestadual.Clear;
  cbgrupo.Clear;
  edtnome.Clear;
  edtrazao.Clear;
  //mskcpf.Clear;
  //mskrg.Clear;
  cbsexo.Clear;
 // mskidade.Clear;
 // mskcpf.Clear;
  edtcargo.Clear;
  edttel1.Clear;
  edttel2.Clear;
  edtempresa.Clear;
  edtcel.Clear;
  edtemail.Clear;
  edtendereco.Clear;
  edtnumero.Clear;
  edtcomplemento.Clear;
  edtbairro.Clear;
  cbuf.Clear;
  cbcidade.Clear;
  edtcep.Clear;
  edtrenda.Clear;
  edtsubordinado.Clear;
  edtfuncionario.Clear;
  edtbase.Clear;
  cbtabela.Clear;
  MemoObsGeral.Clear;
  edtdesrestricao.Clear;
  ckmensalista.Checked := false;
  ckbloqueado.Checked := false;
  ckmail.Checked := false;
  cksms.Checked := false;
  cktel.Checked := false;
  ckcredito.Checked := false;
  ckcartas.Checked := false;
  bbempresa.Enabled := False;
  bbempresadel.Enabled := false;
  Panel4.Enabled:= false;
  Panel5.Enabled:= false;
  Panel21.Enabled :=false;
  Panel22.Enabled :=false;
  Panel23.Enabled :=false;
  Panel24.Enabled :=false;
  Panel25.Enabled :=false;
  Panel26.Enabled :=false;
  Panel27.Enabled :=false;
  cbpessoa.ItemIndex :=-1;
  cbsituacao.ItemIndex :=-1;
  cbpessoa.Color := clScrollBar;
  cbsituacao.Color := clScrollBar;
  cbgrupo.Color := clWhite;
  edtnome.Color := clScrollBar;
  edtrazao.Color := clScrollBar;
  //mskcpf.Color := clScrollBar;
  //mskcnpj.Color := clScrollBar;
  cbgrupo.Color := clScrollBar;
  //mskrg.Color := clScrollBar;
  cbsexo.Color := clScrollBar;
  //mskidade.Color := clScrollBar;
  edtempresa.Color := clScrollBar;
 // mskcpf.Color := clScrollBar;
  edtcargo.Color := clScrollBar;
  edttel1.Color := clScrollBar;
  edttel2.Color := clScrollBar;
  edtcel.Color := clScrollBar;
  edtemail.Color := clScrollBar;
  edtendereco.Color := clScrollBar;
  edtnumero.Color := clWhite;
  edtcomplemento.Color := clScrollBar;
  edtbairro.Color := clScrollBar;
  cbuf.Color := clScrollBar;
  cbcidade.Color := clScrollBar;
  edtnumero.Color := clScrollBar;
  edtcep.Color := clScrollBar;
  edtrenda.Color := clScrollBar;
  edtsubordinado.Color := clScrollBar;
  edtfuncionario.Color := clScrollBar;
  edtbase.Color := clScrollBar;
  cbtabela.Color := clScrollBar;
  MemoObsGeral.Color := clScrollBar;
  edtdesrestricao.Color := clScrollBar;
  edtinscestadual.Color := clScrollBar;
  Panel21.Enabled :=false;
  Panel22.Enabled :=false;
  Panel23.Enabled :=false;
  Panel24.Enabled :=false;
  Panel25.Enabled :=false;
  Panel26.Enabled :=false;
  Panel27.Enabled :=false;
  bbsubopes.Enabled := false;
  bbsubopesdel.Enabled:=false;
  bbatenpes.Enabled := false;
  bbatenpesdel.Enabled := false;

  end
  else
  begin
  Panel4.Enabled:= false;
  Panel5.Enabled:= false;
  cbpessoa.Color := clScrollBar;
  cbsituacao.Color := clScrollBar;
  cbgrupo.Color := clWhite;
  edtnome.Color := clScrollBar;
  edtrazao.Color := clScrollBar;
  //mskcpf.Color := clScrollBar;
  //mskcnpj.Color := clScrollBar;
  cbgrupo.Color := clScrollBar;
  //mskrg.Color := clScrollBar;
  cbsexo.Color := clScrollBar;
 // mskidade.Color := clScrollBar;
 // mskcpf.Color := clScrollBar;
  edtcargo.Color := clScrollBar;
  edttel1.Color := clScrollBar;
  edttel2.Color := clScrollBar;
  edtcel.Color := clScrollBar;
  edtemail.Color := clScrollBar;
  edtempresa.Color := clScrollBar;
  edtendereco.Color := clScrollBar;
  edtnumero.Color := clWhite;
  edtcomplemento.Color := clScrollBar;
  edtbairro.Color := clScrollBar;
  cbuf.Color := clScrollBar;
  cbcidade.Color := clScrollBar;
  edtnumero.Color := clScrollBar;
  edtcep.Color := clScrollBar;
  edtrenda.Color := clScrollBar;
  edtsubordinado.Color := clScrollBar;
  edtfuncionario.Color := clScrollBar;
  edtbase.Color := clScrollBar;
  cbtabela.Color := clScrollBar;
  MemoObsGeral.Color := clScrollBar;
  edtdesrestricao.Color := clScrollBar;
  edtinscestadual.Color := clScrollBar;
  bbempresa.Enabled := False;
  bbempresadel.Enabled := false;
  Panel21.Enabled :=false;
  Panel22.Enabled :=false;
  Panel23.Enabled :=false;
  Panel24.Enabled :=false;
  Panel25.Enabled :=false;
  Panel26.Enabled :=false;
  Panel27.Enabled :=false;
  bbsubopes.Enabled := false;
  bbsubopesdel.Enabled:=false;
  bbatenpes.Enabled := false;
  bbatenpesdel.Enabled := false;
  end;
  end;
  inherited;
end;

procedure TFrmcliente.cbufChange(Sender: TObject);
begin
  Frmprincipal.codigouf := Frmprincipal.RetornaCodigoFiltroEstado(cbuf.Text);
  cbcidade.Clear;
  Frmprincipal.MontaListaCidade(cbcidade.Items);
  inherited;

end;

procedure TFrmcliente.cbufDropDown(Sender: TObject);
begin
  cbuf.Clear;
  Frmprincipal.MontalistaFiltroEstado(cbuf.Items);

end;

procedure TFrmcliente.selecionadb;
begin
     {
     EdtCodigo.Text := QrypesquisaCD_CLIENTE.AsString;
     edtclienteanimal.Text:= QrypesquisaCLIENTE.AsString;
     edtclienteagenda.Text :=QrypesquisaCLIENTE.AsString;
     edtinfocliente.Text := QrypesquisaCLIENTE.AsString;
     edtclienteanotacao.Text := QrypesquisaCLIENTE.AsString;
     Qryclienteanimal.SQL.Clear;
     Qryclienteanimal.SQL.Add('select animal.cd_animal, animal.animal, especie.especie' );
     Qryclienteanimal.SQL.Add(' from animal, especie where animal.cd_especie = especie.cd_especie');
     Qryclienteanimal.SQL.Add('and cd_cliente = :cod');
     Qryclienteanimal.ParamByName('cod').AsInteger := StrToInt(edtcodigo.Text);
     Qryclienteanimal.Open;
     }

end;

procedure TFrmcliente.edtnomeChange(Sender: TObject);
begin
  inherited;
  edtclienteagenda.Text := edtnome.Text;
  edtinfocliente.Text :=  edtnome.Text;
  edtclienteanimal.Text := edtnome.Text;
  edtclienteanotacao.Text := edtnome.Text;
end;

procedure TFrmcliente.mskidadeChange(Sender: TObject);
begin
  inherited;
 //  mskdatapesquisa.Text := mskidade.Text;
end;

procedure TFrmcliente.bbempresaClick(Sender: TObject);
begin
  inherited;
  //FrmModeloPesquisaEmpresa := TFrmModeloPesquisaEmpresa.Create(Self);
  //FrmModeloPesquisaEmpresa.ShowModal;
  //FrmModeloPesquisaEmpresa.Free;
end;

procedure TFrmcliente.bbempresadelClick(Sender: TObject);
begin
  inherited;
  edtempresa.Clear; 
end;

procedure TFrmcliente.edtfuncionarioChange(Sender: TObject);
begin
  inherited;
  //codigofuncionario := Frmprincipal.RetornaCodigoFuncionario(edtfuncionario.Text);
end;

procedure TFrmcliente.bbsubopesdelClick(Sender: TObject);
begin
  inherited;
  edtsubordinado.Clear;
end;

procedure TFrmcliente.bbsubopesClick(Sender: TObject);
begin
  inherited;
  //FrmPesquisaCliente := TFrmPesquisaCliente.Create(Self);
  //FrmPesquisaCliente.ShowModal;
  //FrmPesquisaCliente.Free;
end;

procedure TFrmcliente.bbatenpesClick(Sender: TObject);
begin
  inherited;
  //FrmpesquisaFuncionario := TFrmpesquisaFuncionario.create(self);
  //FrmpesquisaFuncionario.ShowModal;
  //FrmpesquisaFuncionario.free;
end;

procedure TFrmcliente.bbatenpesdelClick(Sender: TObject);
begin
  inherited;
  edtfuncionario.Clear;
end;

procedure TFrmcliente.cbgrupoChange(Sender: TObject);
begin
  inherited;
  codigogrupo := Frmprincipal.RetornaCodigoGrupo(cbgrupo.Text);
end;

end.
