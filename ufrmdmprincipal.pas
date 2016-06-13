unit ufrmdmprincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,Dialogs, db, FileUtil, ZConnection, ZDataset, ZSqlUpdate, ZSequence,IniFiles;

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
    procedure ZConnection1BeforeConnect(Sender: TObject);
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



end;

procedure TDataModule1.QueryClientesAfterPost(DataSet: TDataSet);
begin
  QueryClientes.ApplyUpdates;
  QueryClientes.CommitUpdates;
  QueryClientes.Refresh;
  //QueryClientes.Close;

end;

procedure TDataModule1.ZConnection1BeforeConnect(Sender: TObject);
var
  Ini: TIniFile;
begin
    Ini := TIniFile.Create(ExtractFilePath(ApplicationName) + 'freelive.ini');
    try
        ZConnection1.Connected       := False;
        ZConnection1.HostName        := Ini.ReadString('Conexao_ZEOS', 'Hostname', '');
        ZConnection1.Port            := Ini.ReadInteger('Conexao_ZEOS', 'Port', 0);
        ZConnection1.Protocol        := Ini.ReadString('Conexao_ZEOS', 'Protocol', '');
        ZConnection1.LibraryLocation := Ini.ReadString('Conexao_ZEOS', 'LibraryLocation', '');
        ZConnection1.User            := Ini.ReadString('Conexao_ZEOS', 'User', '');
        ZConnection1.Password        := Ini.ReadString('Conexao_ZEOS', 'Password', '');
        ZConnection1.Database        := Ini.ReadString('Conexao_ZEOS', 'Database', '');
        ZConnection1.ClientCodepage  := Ini.ReadString('Conexao_ZEOS', 'Charset', '');

    except
         on E:Exception do
         MessageDlg('Erro ao conectar!'#13'Erro: ' + e.Message, mtError, [mbOK], 0);
    end;
end;

end.

