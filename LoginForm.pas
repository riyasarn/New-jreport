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
    edtPassword: TEdit;
    btnLogin: TButton;
    btnCancel: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edtUser: TEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConnectSettingClick(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClick(Sender: TObject);



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

uses ConnectionSettingForm, datamodule, Mainfrom,inifiles, UnitAll;

procedure TfrmLogin.btnCancelClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmLogin.btnConnectSettingClick(Sender: TObject);
begin
    frmLogin.Deactivate;
    frmConSetting.ShowModal;
end;


procedure TfrmLogin.btnLoginClick(Sender: TObject);
var   fini:TIniFile;


begin
    fini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\jreport.INI');
    Server:=fini.ReadString('SECURITY','DB_server','localhost');
    port:=fini.ReadInteger('SECURITY','DB_PORT',3333);
    username:=fini.ReadString('SECURUTY','USERNAME','root');
    password:=fini.ReadString('SECURUTY','PASSWORD','');
    database:=fini.ReadString('SECURUTY','DB_NAME','jhcisdb');
    with frmmain do
    begin
      con_user:=username;
      con_pasw:=password;
      con_db:=database;
      con_port:=IntToStr(port);
      con_server:=server;

    end;
    ///////////////////////////////////

    ///////////////////////////////////
    WITH dmu.MyQuery1 DO
        BEGIN
        edtUser.Text:='adm';
        edtPassword.Text:='mda';
        Close;
        SQL.Clear;
        SQL.Add('SELECT * FROM user ');
        SQL.Add('WHERE officertype IS NOT NULL');
        SQL.Add('and username='+#39+Trim(edtUser.Text)+#39);
        SQL.Add('AND password='+#39+Trim(edtPassword.Text)+#39);
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
              Caption:=frmmain.Caption+'JHCIS Report :: ผุ้ใช้งาน'+dmu.MyQuery1.FieldByName('fullname').AsString;
              dbms:=dmu.MyConnection1.Database;
              Mainstatus.Panels[1].Text:='JHCIS Report :: ผุ้ใช้งาน'+dmu.MyQuery1.FieldByName('fullname').AsString;

              end;

          with dmu.MyQuery1 do
          begin
              close;
              sql.Text:='Select hosname from chospital where  hoscode = '+frmmain.hcode;
              Open;
              frmmain.hosname:=dmu.MyQuery1.FieldByName('hosname').AsString;
              close;
              frmmain.Caption:='JHCIS Report :: '+frmmain.hcode+'::'+frmmain.hosname;
              sql.Text:='SELECT CONCAT(provcode,distcode,subdistcode) as LOCAL from chospital where hoscode = '+frmmain.hcode;
              open;
              frmmain.xlocal:=dmu.MyQuery1.FieldByName('local').AsString;
              close;
          end;
          login:=true;
          close;
          frmmain.login:=true;
        end
        else
        if dmu.MyQuery1.RecordCount=0 then
        begin
        Application.Title:='JHCIS Report' ;
        ShowMessage('ชื่อผู้ใช้ หรือ รหัสผ่าน ไม่ถูกต้อง');
        end;

end;



procedure TfrmLogin.FormActivate(Sender: TObject);
var   fini:TIniFile;
      check :Boolean;
begin

    fini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\jreport.INI');
    with dmu.MyConnection1 do
    begin
    Server:=fini.ReadString('SECURITY','DB_server','localhost');
    port:=fini.ReadInteger('SECURITY','DB_PORT',3333);
    username:=fini.ReadString('SECURUTY','USERNAME','root');
    password:=fini.ReadString('SECURUTY','PASSWORD','123456');
    database:=fini.ReadString('SECURUTY','DB_NAME','jhcisdb');
  //      ShowMessage(concat(server,username,password,database,inttostr(port)));
    Connected:=False;
    check := true;
    try
      Connected:=true ;
    except
      on e: exception do
      begin
        check := false;
        btnLogin.Enabled:=False;
      end;
    end;
    if check then
      btnLogin.Enabled:=true;
    end;


 end;


procedure TfrmLogin.FormClick(Sender: TObject);
var   fini:TIniFile;
      check :Boolean;


begin

    fini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'\jreport.INI');


    with dmu.MyConnection1 do
    begin
    Server:=fini.ReadString('SECURITY','DB_server','localhost');
    port:=fini.ReadInteger('SECURITY','DB_PORT',3333);
    username:=fini.ReadString('SECURUTY','USERNAME','root');
    password:=fini.ReadString('SECURUTY','PASSWORD','123456');
    database:=fini.ReadString('SECURUTY','DB_NAME','jhcisdb');
  //      ShowMessage(concat(server,username,password,database,inttostr(port)));
    Connected:=False;
    check := true;
    try
      Connected:=true ;
    except
      on e: exception do
      begin
        check := false;
        btnLogin.Enabled:=False;
      end;
    end;
    if check then
      btnLogin.Enabled:=true;
    end;
end;

end.
