unit LoginForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, dxGDIPlusClasses,
  Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  TfrmLogin = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    btnConnectSetting: TButton;
    lblUsername: TLabel;
    lblPassword: TLabel;
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogin: TButton;
    btnCancel: TButton;
    Label1: TLabel;
    Label2: TLabel;
    cmbUser: TcxComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConnectSettingClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    login:boolean;
    password,username,server,database:string;
    port:Integer;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses ConnectionSettingForm, datamodule, Mainfrom,inifiles;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmLogin.btnConnectSettingClick(Sender: TObject);
begin
    frmConSetting.ShowModal;
end;

procedure TfrmLogin.btnLoginClick(Sender: TObject);
var
szpath : array[0..254] of char;
fini : tinifile;
sqlstr:string;

begin
fini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\jreport.INI');
with dmu.MyConnection1 do
begin
  password:=(fini.ReadString('SECURITY','PASSWORD','123456'));
  username:=(fini.ReadString('SECURITY','USERNAME','root'));
  server:=(fini.ReadString('SECURITY','DB_SERVER','localhost'));
  database:=(fini.ReadString('SECURITY','DB_NAME','jhcisdb'));
  port:=(fini.ReadInteger('SECURITY','DB_PORT',3333));

  with frmmain do
  begin
    con_user:=USERNAME;
    con_pasw:=password;
    con_db:=database;
    con_port:=inttostr(port);
    con_server:=server;
    stLat:=(fini.ReadString('LOCATION','lat','17.9658616'));
    stLng:=(fini.ReadString('LOCATION','lng','97.9418377'));
  end;
end;

try
 with dmu.MyQuery1 do
  begin
Close;
SQL.Clear;
SQL.Add('SELECT * FROM user ');
sql.Add('where username = '+#39+trim(edtusername.Text)+#39);
sql.Add('and password = '+#39+trim(edtpassword.Text)+#39);
SQL.Add('');
Open;
 end;
 if dmu.MyQuery1.RecordCount>0 then
 begin
   with frmmain do
   begin
        user_name:=dmu.MyQuery1.FieldByName('fullname').AsString;
        user_login:=dmu.MyQuery1.FieldByName('username').AsString;
        pasw:=dmu.MyQuery1.FieldByName('password').AsString;
        cid:=dmu.MyQuery1.FieldByName('idcard').AsString;
        hcode:=dmu.MyQuery1.FieldByName('pcucode').AsString;
        //caption:=frmmain.Caption+' :ผู้ใช้งาน :'+dmu.MyQuery1.FieldByName('fullname').AsString;
        dbms:=dmu.MyConnection1.Database;
        Mainstatus.Panels[0].Text:=' :ผู้ใช้งาน :'+dmu.MyQuery1.FieldByName('fullname').AsString;
   end;
 end;
 with dmu.MyQuery1 do
 begin
   close;
   sql.Text:='SELECT hosname from chospital WHERE hoscode= '+frmmain.hcode;
   open;
   frmmain.hosname:=dmu.MyQuery1.FieldByName('hosname').AsString;
   frmmain.Caption:=frmmain.AppName+frmmain.hosname;//.MyQuery1.FieldByName('hosname').AsString;
   close;
   //sql.Text:='SELECT offid506 from office WHERE offid= '+frmmain.hcode;
   //frmmain.offid506:=dmu.MyQuery1.FieldByName('offid506').AsString;
   //close;
   sql.Text:='SELECT VERSION()';
   open;
   frmmain.mysqlver:=dmu.MyQuery1.FieldByName('version()').AsString;
   close;
   SQL.Text := 'select concat(provcode,distcode,subdistcode) as local from chospital where hoscode = '+FrmMain.hcode;
   Open;
   FrmMain.xlocal := dmu.MyQuery1.fieldbyname('local').AsString;
   Close;
 end;
login:=true;
close;
frmmain.login:=true;
finally

end;
end;

procedure TfrmLogin.FormActivate(Sender: TObject);
var
szpath : array[0..254] of char;
fini : tinifile;
sqlstr:string;
begin
  btnLogin.Enabled:=False;
 fini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\jreport.INI');
with dmu.MyConnection1 do
begin
  password:=(fini.ReadString('SECURITY','PASSWORD','123456'));
  username:=(fini.ReadString('SECURITY','USERNAME','root'));
  server:=(fini.ReadString('SECURITY','DB_SERVER','localhost'));
  database:=(fini.ReadString('SECURITY','DB_NAME','jhcisdb'));
  port:=(fini.ReadInteger('SECURITY','DB_PORT',3333));
try
  dmu.MyConnection1.Connected:=true;
  with dmu.MyQuery1 do
  begin
  Close;
  sql.Text:='';
  sql.Text:='SELECT username FROM `user` WHERE officertype is NOT NULL';
  open;
      while not dmu.MyQuery1.eof do
      begin
          cmbUser.Properties.Items.Add(dmu.MyQuery1.Fields.Fields[0].AsString);
          dmu.MyQuery1.Next;
      end;
      dmu.MyConnection1.Close;
  end;
  btnLogin.Enabled:=true;
 except
 // on e:Exception do
 //   begin
 //   dmu.MyConnection1.Connected:=False;
 //   ShowMessage('โปรดตั้งค่าการเชื่อต่อฐานข้อมูล'+#13+e.Message);
 //   end;

end;


  end;
end;

end.
