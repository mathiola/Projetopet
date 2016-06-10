unit UfrmPrincipal;

{$MODE Delphi}

interface

uses
  LCLIntf, LCLType, LMessages, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, sqldb, ComCtrls,
  ExtCtrls, grids, StdCtrls, Buttons, urlmon;

type

  { TFrmprincipal }

  TFrmprincipal = class(TForm)
    MainMenu1: TMainMenu;
    Agendas1: TMenuItem;
    chamarsuporte: TMenuItem;
    Movimentao1: TMenuItem;
    Cadastros1: TMenuItem;
    Acessos1: TMenuItem;
    Diversos1: TMenuItem;
    Ajuda1: TMenuItem;
    Agenda1: TMenuItem;
    Compra1: TMenuItem;
    Venda1: TMenuItem;
    Financeiro1: TMenuItem;
    Entradademercadorias1: TMenuItem;
    Vendas1: TMenuItem;
    Contaspagar1: TMenuItem;
    Contasreceber1: TMenuItem;
    Clientes1: TMenuItem;
    Cidades1: TMenuItem;
    Funcionarios1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    Animais1: TMenuItem;
    Raas1: TMenuItem;
    Espcies1: TMenuItem;
    N2: TMenuItem;
    Acessosdeusurios1: TMenuItem;
    Senhasdeacesso1: TMenuItem;
    rocadeusurioF121: TMenuItem;
    Cpiadesegurana1: TMenuItem;
    N4: TMenuItem;
    Sairdosistema1: TMenuItem;
    Sobreosistema1: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Timer2: TTimer;
    Estado1: TMenuItem;
    Image1: TImage;
    Timer3: TTimer;
    procedure chamarsuporteClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Sairdosistema1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Animais1Click(Sender: TObject);
    procedure Espcies1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Funcionarios1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Raas1Click(Sender: TObject);
    procedure Pesquisaavanadadeclientes1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Entradademercadorias1Click(Sender: TObject);
    procedure Cpiadesegurana1Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Sobreosistema1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     pesquisafun : integer;
     codigoesp : Integer;
     codigouf : integer;
     sexoanimal: String;
     procedure MontaListaCidade(Lista: TStrings );
   //  procedure MontaListaFuncionario(Lista:TStrings);
     procedure MontalistaEstado(Lista:TStrings);
     procedure MontalistaEspecie(lista:TStrings);
     procedure MontalistaPAI(lista:TStrings);
     procedure MontalistaRaca(lista:TStrings);
     procedure MontalistaCliente(lista:TStrings);
     procedure MontalistaFiltroEstado(lista:TStrings);
     procedure Montalistaprofissional(lista:TStrings);
     procedure MontaListaPesquisaCidade(lista:Tstrings);
     procedure MontalistaGrupo(lista:TStrings);
     procedure MontaListaMarca(lista:Tstrings);
     procedure MontaListaGrupoProduto(lista:Tstrings);
     procedure MontaListaFornecedor(lista:Tstrings);
     procedure MontaListaServico(lista:Tstrings);
     function RetornaCodigoEstado(uf:String):integer;
     function RetornaCodigoCidade(cid:string):Integer;
     //function RetornaCodigoFuncionario(fun:String):Integer;
     function RetornaCodigoEspecie(esp:String): Integer;
     function RetornaCodigoPai(pai:String):Integer;
     function RetornaCodigoRaca(raca:String):Integer;
     function RetornaCodigoCliente(cli:String):Integer;
     function RetornaCodigoFiltroEstado(uf:String):Integer;
     function RetornaCodigoProfissional(prof:String):Integer;
     function RetornaCodigoGrupo(grup:String):Integer;
     function RetornaCodigoMarca(marc:String):Integer;
     function RetornaCodigoGrupoProduto(prod:String):Integer;
     function RetornaCodigoFornecdor(forn:String):Integer;
     function RetornaCidigoServico(Serv:String):Integer;





end;

var
  Frmprincipal: TFrmprincipal;

implementation

uses Ufrmcliente, UfrCidades,ufrmDmPrincipal , Ufrmsobre, UfrmSenhaAcesso;





{$R *.lfm}


procedure TFrmprincipal.Clientes1Click(Sender: TObject);
begin
      Frmcliente := TFrmcliente.Create(Self);
      Frmcliente.ShowModal;
      Frmcliente.Free;
     
end;

procedure TFrmprincipal.chamarsuporteClick(Sender: TObject);
begin
  HlinkNavigateString(nil,'http://www.freelive.com.br/suporte');
end;



procedure TFrmprincipal.Sairdosistema1Click(Sender: TObject);
begin
  Frmprincipal.Free;
  Frmprincipal.close;
end;



procedure TFrmprincipal.Timer1Timer(Sender: TObject);
begin
 StatusBar1.Panels.Items[1].Text:=timetostr(time);

end;

procedure TFrmprincipal.Timer2Timer(Sender: TObject);
begin
    if Timer2.Interval = 15000  then
     begin
      StatusBar1.Panels[0].Text := 'Em caso de dúvidas, ligue: (048)3621-3913'
     end;
end;

procedure TFrmprincipal.Animais1Click(Sender: TObject);
begin
   //FrmAnimal := TFrmAnimal.Create(Self);
   //FrmAnimal.ShowModal;
   //FrmAnimal.Free;

end;

procedure TFrmprincipal.MontaListaCidade(Lista: TStrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select cidade.cidade from cidade where cd_estado = :cod order by cidade');
   Qryaux.ParamByName('cod').AsInteger := codigouf;
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
      Lista.Add(QRYAux.FieldbyName('Cidade').AsString);
      QRYAux.Next;
   end;
   }
end;

function TFrmprincipal.RetornaCodigoCidade(cid: string): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select cidade.cd_cidade from cidade where cidade.cidade = :nm');
   QRYAux.ParamByName('nm').AsString := cid;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_cidade').AsInteger;
end;
procedure TFrmprincipal.MontaListaFuncionario(Lista: TStrings);
begin
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select funcionario.funcionario from funcionario order by funcionario');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
      Lista.Add(QRYAux.FieldbyName('funcionario').AsString);
      QRYAux.Next;
   end;
end;
function TFrmprincipal.RetornaCodigoFuncionario(fun: String): Integer;
begin
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select funcionario.cd_funcionario from funcionario where funcionario.funcionario = :nmfun');
   QRYAux.ParamByName('nmfun').AsString := fun;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_funcionario').AsInteger;
    }
end;

procedure TFrmprincipal.Espcies1Click(Sender: TObject);
begin
      //FrmEspecies:=TFrmEspecies.Create(Self);
      //FrmEspecies.ShowModal;
      //FrmEspecies.Free;
end;

procedure TFrmprincipal.Cidades1Click(Sender: TObject);
begin
    Frmcidades:=TFrmcidades.Create(Self);
    Frmcidades.ShowModal;
    Frmcidades.Free;
end;

procedure TFrmprincipal.MontalistaEstado(Lista: TStrings);
begin
    {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select estado.estado from estado order by estado');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
   Lista.Add(QRYAux.FieldbyName('estado').AsString);
   QRYAux.Next;
end;
}
end;



function TFrmprincipal.RetornaCodigoEstado(uf: String): integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select estado.cd_estado from estado where estado.estado = :nmuf');
   QRYAux.ParamByName('nmuf').AsString := uf;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_estado').AsInteger;
   }
   end;

procedure TFrmprincipal.Estado1Click(Sender: TObject);
begin
    //FrmEstado:=TFrmEstado.Create(Self);
    //FrmEstado.ShowModal;
    //FrmEstado.Free;
end;

procedure TFrmprincipal.MontalistaEspecie(lista: TStrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select especie.especie from especie order by especie');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
      Lista.Add(QRYAux.FieldbyName('especie').AsString);
      QRYAux.Next;
   end;
    }
end;

function TFrmprincipal.RetornaCodigoEspecie(esp: string): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select especie.cd_especie from especie where especie.especie = :nmesp');
   QRYAux.ParamByName('nmesp').AsString := esp;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_especie').AsInteger;
   }
end;

procedure TFrmprincipal.Funcionarios1Click(Sender: TObject);
begin
      //FrmFuncionario := TFrmFuncionario.Create(self);
      //FrmFuncionario.ShowModal;
      //FrmFuncionario.Free;
end;

procedure TFrmprincipal.MontalistaPAI(lista: TStrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select animal.animal from animal where animal.sexo = :sexo  order by animal');
   Qryaux.ParamByName('sexo').AsString := sexoanimal;
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
      Lista.Add(QRYAux.FieldbyName('animal').AsString);
      QRYAux.Next;
   end;
   }
   end;

function TFrmprincipal.RetornaCodigoPai(pai: String): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select animal.cd_animal from animal where animal.animal = :nmpai');
   QRYAux.ParamByName('nmpai').AsString := pai;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_animal').AsInteger;
    }
end;

procedure TFrmprincipal.FormCreate(Sender: TObject);
begin
  DoubleBuffered:=True;
  Frmprincipal.Caption := '  Freelive Pet - Módulo Consultório  '+datetostr(date);

  Try
    FrmSenhaAcesso:= Tfrmsenhaacesso.create(nil);
    FrmSenhaAcesso.showmodal;
  finally

    FrmSenhaAcesso.Free;
    FrmSenhaAcesso:=nil;

  end;

  //DmPrincipal.ZConnection1.Connected:=true;
  //DmPrincipal.ZQuery1.Active:=true;

  end;

procedure TFrmprincipal.MontalistaRaca(lista: TStrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select raca.raca from raca where cd_especie = :esp order by raca');
   Qryaux.ParamByName('esp').AsInteger := codigoesp;
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
      Lista.Add(QRYAux.FieldbyName('raca').AsString);
      QRYAux.Next;
   end;
    }
end;

function TFrmprincipal.RetornaCodigoRaca(raca: String): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select raca.cd_raca from raca where raca.raca = :nmraca');
   QRYAux.ParamByName('nmraca').AsString := raca;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_raca').AsInteger;
    }
end;

procedure TFrmprincipal.MontalistaCliente(lista: TStrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select cliente.cliente from cliente order by cliente');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
      Lista.Add(QRYAux.FieldbyName('cliente').AsString);
      QRYAux.Next;
   end;
    }
end;

function TFrmprincipal.RetornaCodigoCliente(cli: String): Integer;
begin
  {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select cliente.cd_cliente from cliente where cliente.cliente = :nmcli');
   QRYAux.ParamByName('nmcli').AsString := cli;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_cliente').AsInteger;
   }
end;

procedure TFrmprincipal.Fornecedores1Click(Sender: TObject);
begin
     //FrmFornecedor := TFrmFornecedor.Create(Self);
     //FrmFornecedor.ShowModal;
     //FrmFornecedor.Free;
end;

procedure TFrmprincipal.Produtos1Click(Sender: TObject);
begin
   //FrmProduto := TFrmProduto.Create(Self);
   //FrmProduto.ShowModal;
   //FrmProduto.Free;
end;

procedure TFrmprincipal.Agenda1Click(Sender: TObject);
begin
   //FrmAgenda := TFrmAgenda.Create(self);
   //FrmAgenda.ShowModal;
   //FrmAgenda.Free;
end;

procedure TFrmprincipal.MontalistaFiltroEstado(lista: TStrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select estado.sigla_estado from estado order by sigla_estado');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
   Lista.Add(QRYAux.FieldbyName('sigla_estado').AsString);
   QRYAux.Next;

end;
}
end;
function TFrmprincipal.RetornaCodigoFiltroEstado(uf: String): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select estado.cd_estado from estado where estado.sigla_estado = :nmuf');
   QRYAux.ParamByName('nmuf').AsString := uf;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_estado').AsInteger;
   }
   end;



procedure TFrmprincipal.Montalistaprofissional(lista: TStrings);
begin
   {QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select area_profissional.area from area_profissional order by area');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
   Lista.Add(QRYAux.FieldbyName('area').AsString);
   QRYAux.Next;

end;
}
end;
function TFrmprincipal.RetornaCodigoProfissional(prof: String): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('Select area_profissional.cd_area from area_profissional where area_profissional.area = :prof');
   QRYAux.ParamByName('prof').AsString := prof;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_area').AsInteger;
    }
end;


procedure TFrmprincipal.Raas1Click(Sender: TObject);
begin
  //FrmRaca := TFrmRaca.Create(Self);
  //FrmRaca.ShowModal;
  //FrmRaca.Free;
end;

procedure TFrmprincipal.MontalistaGrupo(lista: TStrings);
begin
  {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select grupo_cliente.grupo from grupo_cliente order by grupo');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
   Lista.Add(QRYAux.FieldbyName('grupo').AsString);
   QRYAux.Next;

end;
}
end;
function TFrmprincipal.RetornaCodigoGrupo(grup:String):Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select grupo_cliente.cd_grupo from grupo_cliente where grupo_cliente.grupo = :grup');
   QRYAux.ParamByName('grup').AsString := grup;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_grupo').AsInteger;
    }
end;

procedure TFrmprincipal.Pesquisaavanadadeclientes1Click(Sender: TObject);
begin
//  Frmfiltrorelatoriocliente := TFrmfiltrorelatoriocliente.Create(Self);
//  Frmfiltrorelatoriocliente.ShowModal;
//  Frmfiltrorelatoriocliente.Free;
end;

procedure TFrmprincipal.MontaListaPesquisaCidade(lista: Tstrings);
begin
  {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select cidade.cidade from cidade  order by cidade');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
      Lista.Add(QRYAux.FieldbyName('Cidade').AsString);
      QRYAux.Next;
end;
}
end;

procedure TFrmprincipal.Vendas1Click(Sender: TObject);
begin
    //FrmVenda := TFrmVenda.Create(self);
    //FrmVenda.ShowModal;
    //FrmVenda.Free;
end;

procedure TFrmprincipal.Entradademercadorias1Click(Sender: TObject);
begin
   //FrmCompraProduto := TFrmCompraProduto.Create(Self);
   //FrmCompraProduto.ShowModal;
   //FrmCompraProduto.Free;
end;

procedure TFrmprincipal.MontaListaMarca(lista: Tstrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select marca.marca from marca  order by marca');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
   Lista.Add(QRYAux.FieldbyName('marca').AsString);
   QRYAux.Next;
end;
    }
end;

function TFrmprincipal.RetornaCodigoMarca(marc: String): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select marca.cd_marca from marca where marca.marca = :marc');
   QRYAux.ParamByName('marc').AsString := marc;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_marca').AsInteger
    }
end;

procedure TFrmprincipal.MontaListaGrupoProduto(lista: Tstrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select grupo_produto.grupo from grupo_produto  order by grupo');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
   Lista.Add(QRYAux.FieldbyName('grupo').AsString);
   QRYAux.Next;
end;
}
end;


function TFrmprincipal.RetornaCodigoGrupoProduto(prod: String): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select grupo_produto.cd_grupo from grupo_produto where grupo_produto.grupo = :prod');
   QRYAux.ParamByName('prod').AsString := prod;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_grupo').AsInteger;
    }
end;

procedure TFrmprincipal.MontaListaFornecedor(lista: Tstrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select fornecedor.nome_fantasia from fornecedor order by nome_fantasia');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
   Lista.Add(QRYAux.FieldbyName('nome_fantasia').AsString);
   QRYAux.Next;
   }
end;



function TFrmprincipal.RetornaCodigoFornecdor(forn: String): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select fornecedor.cd_fornecedor from fornecedor where fornecedor.nome_fantasia = :forn');
   QRYAux.ParamByName('forn').AsString := forn;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_fornecedor').AsInteger;
   }
end;

procedure TFrmprincipal.Cpiadesegurana1Click(Sender: TObject);
begin
     //FrmBackupRestauracao := TFrmBackupRestauracao.Create(Self);
     //FrmBackupRestauracao.ShowModal;
     //FrmBackupRestauracao.Free;
end;



procedure TFrmprincipal.Timer3Timer(Sender: TObject);
begin
   { if Timer3.Interval = 1000 then
     begin
     FrmSenhaAcesso := TFrmSenhaAcesso.Create(self);
     Timer3.Enabled := false;
     FrmSenhaAcesso.ShowModal;
     FrmSenhaAcesso.Free;

end;
}
end;
procedure TFrmprincipal.MontaListaServico(lista: Tstrings);
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select servico.servico from servico order by servico');
   QRYAux.Open;
   while not(QRYAux.Eof) do
   begin
   Lista.Add(QRYAux.FieldbyName('servico').AsString);
   QRYAux.Next;
    }
end;

function TFrmprincipal.RetornaCidigoServico(Serv: String): Integer;
begin
   {
   QRYAux.SQL.Clear;
   QRYAux.SQL.Add('select servico.cd_servico from servico where servico.servico = :serv');
   QRYAux.ParamByName('serv').AsString := serv;
   QRYAux.Open;
   Result := QRYAux.fieldbyname('cd_servico').AsInteger;
    }
end;

procedure TFrmprincipal.Sobreosistema1Click(Sender: TObject);
begin
   frmsobre :=  TFrmsobre.Create(Self);
   Frmsobre.ShowModal;
   Frmsobre.Free;
end;

end.
