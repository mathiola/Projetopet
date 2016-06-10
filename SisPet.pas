program SisPet;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, UfrmPrincipal, UfrCidades, Ufrmcliente, zcomponent, ufrmdmprincipal,
  UfrmSenhaAcesso;

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TFrmprincipal, Frmprincipal);
  Application.CreateForm(TDataModule1, DataModule1);

  Application.Run;
end.


