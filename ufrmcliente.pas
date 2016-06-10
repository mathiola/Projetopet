unit Ufrmcliente;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UfrmModelo, StdCtrls, DB, sqldb, ExtCtrls,
  Grids, DBGrids, ComCtrls, Buttons, DBCtrls;

type

  { TFrmcliente }

  TFrmcliente = class(TFrmmodelo)
    cbcidade: TDBLookupComboBox;
    DBEdit16: TDBEdit;
    DSGrupoCli: TDataSource;
    DSClientes: TDataSource;
    DSCidades: TDataSource;
    cbpessoa: TDBComboBox;
    edbairro: TDBEdit;
    edcelular: TDBEdit;
    edcomplemento: TDBEdit;
    edcpf: TDBEdit;
    eddtnasc: TDBEdit;
    edemail: TDBEdit;
    edendereco: TDBEdit;
    edfone1: TDBEdit;
    edfone2: TDBEdit;
    ednumero: TDBEdit;
    edrg: TDBEdit;
    edsituacao: TDBComboBox;
    edsexo: TDBComboBox;
    edcodigo: TDBEdit;
    ednome: TDBEdit;
    edgrupocli: TDBLookupComboBox;
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
    btngrupo: TButton;
    ckcartas: TCheckBox;

    Label22: TLabel;
    Panel28: TPanel;
    bbempresa: TBitBtn;
    Panel29: TPanel;
    bbempresadel: TBitBtn;
    bbsubopesdel: TButton;
    bbatenpes: TButton;
    bbatenpesdel: TButton;
    edtfuncionario: TEdit;
    Panel30: TPanel;
    Panel31: TPanel;
    procedure bbsairClick(Sender: TObject);
    procedure cbpessoaChange(Sender: TObject);
    procedure edemailChange(Sender: TObject);
    procedure edgrupocliChange(Sender: TObject);
    procedure DSClientesDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
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

uses UfrmPrincipal,ufrmDmPrincipal,UfrmRetornoCliente;

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
    //cbsexo.Visible := true;
  //  mskidade.Visible := true;
    Panel29.Visible := true;
    //edtrazao.Visible := false;
    //edtinscestadual.Visible := false;
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
    //cbsexo.Visible := false;
   // mskidade.Visible := false;
    //edtinscestadual.Visible:= true;
    //edtrazao.Visible := true;
   // mskcnpj.Visible:= true;
    lbnascimento.Visible := false;
    lbrg.Visible := false;
    Panel29.Visible := false;
    bbempresa.Enabled := false;
    bbempresadel.Enabled := false;



   end;

end;

procedure TFrmcliente.edemailChange(Sender: TObject);
begin

end;

procedure TFrmcliente.edgrupocliChange(Sender: TObject);
begin

end;

procedure TFrmcliente.DSClientesDataChange(Sender: TObject; Field: TField);
begin

end;


procedure TFrmcliente.FormCreate(Sender: TObject);
begin

  inherited;
   //Frmprincipal.pesquisafun := 2;
   //AbaAnterior:= 1;
   DataModule1.QueryClientes.Active:=true;




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

procedure TFrmcliente.Panel5Click(Sender: TObject);
begin

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
  Panel4.Enabled:=true;
  Panel5.Enabled:=true;
  DataModule1.QueryClientes.Insert;
  inherited;

end;

procedure TFrmcliente.bbgravarClick(Sender: TObject);
begin

  if  ednome.Text = '' then
    begin
       Application.MessageBox('falta informar o nome do cliente','aviso',MB_ICONWARNING);
       Exit;
    end;
   if cbcidade.Text = '' then
    begin
       Application.MessageBox('Falta informar a cidade do cliente','aviso',MB_ICONWARNING);
       Exit;
    end;
   if operacao = 'inserindo' then
        begin
        DataModule1.QueryClientes.Post;
        end
        else
         begin
               DataModule1.QueryClientes.Post;
         end;

   Panel4.Enabled:= false;
   Panel5.Enabled:= false;

   inherited

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
    FrmRetornoCliente:= TFrmRetornoCliente.Create(Self);
    FrmRetornoCliente.ShowModal;
    FrmRetornoCliente.Free;
end;

procedure TFrmcliente.bbAgEditarClick(Sender: TObject);
begin
  inherited;
    FrmRetornoCliente:= TFrmRetornoCliente.Create(Self);
    FrmRetornoCliente.ShowModal;
    FrmRetornoCliente.Free;
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
  DataModule1.QueryClientes.Cancel;
  end;
  inherited;
end;

procedure TFrmcliente.cbufChange(Sender: TObject);
begin

end;

procedure TFrmcliente.cbufDropDown(Sender: TObject);
begin

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
  //edtclienteagenda.Text := edtnome.Text;
  //edtinfocliente.Text :=  edtnome.Text;
  //edtclienteanimal.Text := edtnome.Text;
  //edtclienteanotacao.Text := edtnome.Text;
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
  //edtempresa.Clear; 
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
//  codigogrupo := Frmprincipal.RetornaCodigoGrupo(cbgrupo.Text);
end;

end.
