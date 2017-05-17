unit ConnectionSettingForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxLabel,
  cxTextEdit,inifiles;

type
  TfrmConSetting = class(TForm)
    GroupBox1: TGroupBox;
    edtServer: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel5: TcxLabel;
    edtdatabase: TcxTextEdit;
    edtpassword: TcxTextEdit;
    cxLabel4: TcxLabel;
    edtport: TcxTextEdit;
    cxLabel3: TcxLabel;
    edtuser: TcxTextEdit;
    cxLabel2: TcxLabel;
    Panel1: TPanel;
    btnTestConnect: TcxButton;
    btnSaveConnection: TcxButton;
    btncancel: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure btnTestConnectClick(Sender: TObject);
    procedure btnSaveConnectionClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    var fini:tinifile;
  end;

var
  frmConSetting: TfrmConSetting;

implementation

{$R *.dfm}

uses datamodule, LoginForm;

procedure TfrmConSetting.btncancelClick(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmConSetting.btnSaveConnectionClick(Sender: TObject);
var fini:tinifile;
begin
  fini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\jreport.INI');
  fini.WriteString('SECURITY','DB_SERVER',edtServer.Text);
  fini.WriteString('SECURITY','DB_PORT',edtport.Text);
  fini.WriteString('SECURITY','USER',edtuser.Text);
  fini.WriteString('SECURITY','PASSWORD',(edtpassword.Text));
  fini.WriteString('SECURITY','DB_NAME',edtdatabase.Text);
  ShowMessage('OK');
{  with frmLogin do
  begin
  fini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\jreport.INI');
  password:=(fini.ReadString('SECURITY','PASSWORD','123456'));
  username:=(fini.ReadString('SECURITY','USERNAME','root'));
  server:=(fini.ReadString('SECURITY','DB_SERVER','localhost'));
  database:=(fini.ReadString('SECURITY','DB_NAME','jhcisdb'));
  port:=(fini.ReadInteger('SECURITY','DB_PORT',3333));
  end;
 }
  Self.Close;


end;

procedure TfrmConSetting.btnTestConnectClick(Sender: TObject);
var b:Boolean;
begin
  with dmu.MyConnection1 do
  begin
    Connected:=False;
    Server:=edtServer.Text;
    Database:=edtdatabase.Text;
    Username:=edtuser.Text;
    Password:=edtpassword.Text;
    Port:=StrToIntDef(edtport.Text,3333);
    b:=true;

    try
        Connected:=true;
    except
        on e:Exception do
        begin
          b:=False;
             ShowMessage('Connection Error !'+#13+e.Message);
        end;
    end;
    Connected:=False;
    if b then ShowMessage('Connect Successful');

  end;
end;

procedure TfrmConSetting.FormClose(Sender: TObject; var Action: TCloseAction);
var b:Boolean;
begin
{
  with dmu.MyConnection1 do
  begin
    Connected:=False;
    Server:=edtServer.Text;
    Database:=edtdatabase.Text;
    Username:=edtuser.Text;
    Password:=edtpassword.Text;
    Port:=StrToIntDef(edtport.Text,3333);
    b:=true;

    try
        Connected:=true;
    except
        on e:Exception do
        begin
          b:=False;
             ShowMessage('Connection Error !'+#13+e.Message);
       end;
    end;
    Connected :=False;
    if b then
    }
    frmLogin.btnLogin.Enabled:=true;
      dmu.MyQuery1.Close;
      dmu.MyQuery1.sql.Text:='';
      dmu.MyQuery1.sql.Text:='SELECT username FROM `user` WHERE officertype is NOT NULL';
      dmu.MyQuery1.open;
          while not dmu.MyQuery1.eof do
          begin
              frmLogin.cmbUser.Properties.Items.Add(dmu.MyQuery1.Fields.Fields[0].AsString);
              dmu.MyQuery1.Next;
          end;

  //end;

end;

procedure TfrmConSetting.FormCreate(Sender: TObject);
var fini:tinifile;
szpath:array[0..254] of char;

begin
fini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\jreport.INI');
edtServer.Text:=fini.ReadString('SECURITY','DB_server','localhost');
edtport.Text:=inttostr(fini.ReadInteger('SECURITY','DB_PORT',3333));
edtuser.Text:=fini.ReadString('SECURUTY','USERNAME','root');
edtpassword.Text:=fini.ReadString('SECURUTY','PASSWORD','123456');
edtdatabase.Text:=fini.ReadString('SECURUTY','DB_NAME','jhcisdb');
end;

end.
