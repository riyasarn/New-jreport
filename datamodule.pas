unit datamodule;

interface

uses
  System.SysUtils, System.Classes, DASQLMonitor, MyDacMonitor, MySQLMonitor,
  Data.DB, DBAccess, MyAccess, MemDS;

type
  Tdmu = class(TDataModule)
    MyConnection1: TMyConnection;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmu: Tdmu;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
