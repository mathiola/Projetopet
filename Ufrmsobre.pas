unit Ufrmsobre;

{$MODE Delphi}

interface

uses Windows, SysUtils, Classes, db, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, DBGrids, ZDataset;

type

  { TFrmsobre }

  TFrmsobre = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    OKButton: TButton;
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frmsobre: TFrmsobre;

implementation

{$R *.lfm}

uses
  ufrmDmPrincipal;

end.
 
