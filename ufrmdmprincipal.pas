unit ufrmdmprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, FileUtil, ZConnection, ZDataset, ZSqlUpdate, ZSequence;

type

  { TDataModule1 }

  TDataModule1 = class(TDataModule)
    QueryCidadescd_cidade: TLongintField;
    QueryCidadescd_estado: TLongintField;
    QueryCidadescidade: TStringField;
    QueryEstadoscd_estado: TLongintField;
    QueryEstadosestado: TStringField;
    QueryEstadossigla_estado: TStringField;
    QueryGrupoCli: TZQuery;
    QueryClientesatualizacao_cadastro: TDateTimeField;
    QueryClientesauto_carta: TStringField;
    QueryClientesauto_email: TStringField;
    QueryClientesauto_sms: TStringField;
    QueryClientesauto_tel: TStringField;
    QueryClientesbairro: TStringField;
    QueryClientesbloqueado: TStringField;
    QueryClientescargo: TStringField;
    QueryClientescd_cidade: TLongintField;
    QueryClientescd_cliente: TLongintField;
    QueryClientescd_empresa: TLongintField;
    QueryClientescd_funcionario: TLongintField;
    QueryClientescd_grupo: TLongintField;
    QueryClientescd_subordinado: TLongintField;
    QueryClientescep: TStringField;
    QueryClientescliente: TStringField;
    QueryClientescomplemento: TStringField;
    QueryClientescpf_cnpj: TStringField;
    QueryClientesdata_cadastro: TDateTimeField;
    QueryClientesdata_nascimento: TDateTimeField;
    QueryClientesdata_pesquisa: TDateField;
    QueryClientesdescricao: TStringField;
    QueryClientesdia_base: TLongintField;
    QueryClientesemail: TStringField;
    QueryClientesendereco: TStringField;
    QueryClientesfone1: TStringField;
    QueryClientesfone2: TStringField;
    QueryClientesfone3: TStringField;
    QueryClientesmensalista: TStringField;
    QueryClientesnumero: TLongintField;
    QueryClientesprimeira_compra: TDateTimeField;
    QueryClientesrazao_social: TStringField;
    QueryClientesrenda_anual: TFloatField;
    QueryClientesrestricao_cred: TStringField;
    QueryClientesrestricao_descricao: TStringField;
    QueryClientesrg_inscrestadual: TStringField;
    QueryClientessexo: TStringField;
    QueryClientessituacao: TStringField;
    QueryClientestabela_preco: TLongintField;
    QueryClientestipo_pessoa: TStringField;
    QueryClientestotal_compras: TLongintField;
    QueryClientesuf: TStringField;
    QueryClientesultima_compra: TDateTimeField;
    QueryClientesvalor_total_compras: TFloatField;
    QueryClientesvolor_maior_compra: TFloatField;
    QueryEstados: TZQuery;
    QueryGrupoClicd_grupo: TLongintField;
    QueryGrupoCligrupo: TStringField;
    SeqCliente: TZSequence;
    ZConnection1: TZConnection;
    QueryCidades: TZQuery;
    QueryClientes: TZQuery;
    UpCliente: TZUpdateSQL;
    qryAux: TZQuery;
    UpCidade: TZUpdateSQL;
    SeqCidade: TZSequence;
    procedure DataModuleCreate(Sender: TObject);
    procedure QueryClientesAfterPost(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.lfm}

{ TDataModule1 }

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
  ZConnection1.Connected:=true;
  QueryClientes.Active:=true;


end;

procedure TDataModule1.QueryClientesAfterPost(DataSet: TDataSet);
begin
  QueryClientes.ApplyUpdates;
  QueryClientes.CommitUpdates;
  QueryClientes.Refresh;
  //QueryClientes.Close;

end;

end.

