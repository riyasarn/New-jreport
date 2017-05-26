unit Mainfrom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, dxStatusBar, dxRibbonStatusBar, dxBarApplicationMenu,inifiles;

type
  Tfrmmain = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    tabGeneral: TdxRibbonTab;
    Mainstatus: TdxRibbonStatusBar;
    dxBarpop: TdxBar;
    btnPop0123: TdxBarLargeButton;
    btnPop013: TdxBarLargeButton;
    HouseByVillage: TdxBar;
    btnHouseByVillage: TdxBarLargeButton;
    tabEPI: TdxRibbonTab;
    barList: TdxBar;
    btnEpi05list: TdxBarLargeButton;
    barCoverage: TdxBar;
    btn1YearCoverage: TdxBarLargeButton;
    tabInsur: TdxRibbonTab;
    dxBarManager1Bar2: TdxBar;
    btnPtOutProvince: TdxBarLargeButton;
    btn2YearCoverage: TdxBarLargeButton;
    btn3YearCoverage: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    btnSchool: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    tabSchoolHealth: TdxRibbonTab;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnPop0123Click(Sender: TObject);
    procedure btnPop013Click(Sender: TObject);
    procedure btnHouseByVillageClick(Sender: TObject);
    procedure btnEpi05listClick(Sender: TObject);
    procedure btn1YearCoverageClick(Sender: TObject);
    procedure btnPtOutProvinceClick(Sender: TObject);
    procedure btn2YearCoverageClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnSchoolClick(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure dxBarLargeButton5Click(Sender: TObject);
    procedure btn3YearCoverageClick(Sender: TObject);

    const AppName='Report For JHCIS  :  ';
  private
    { Private declarations }
  public
    { Public declarations }
  user_name,user_login,dbms,pasw,cid,hcode,mainhcode,dcscript,hdcscript,cupscript,xlocal : string;
    con_user,con_pasw,con_db,con_server,con_port,xversion,hosname,offid506 : string;
    dwcon_user,dwcon_pasw,dwcon_db,dwcon_server,dwcon_port : string;
    TraceString : TStringList;
    login,first : Boolean;
    stLat,stLng,mysqlver : string;

  end;

var
  frmmain: Tfrmmain;

implementation

{$R *.dfm}

uses datamodule, LoginForm, ConnectionSettingForm, Popall0123Form, Pop013Form,
  UnitAll, HouseForm, EPI05List, VaccineCoverage1YearForm, PtOutProvinceForm,
  VaccineCoverage2YearForm , TempleVillageForm, schoolForm, BussinessFrom,
  SubEPIForm, VaccineCoverage3YearForm;

procedure Tfrmmain.btnPop0123Click(Sender: TObject);
begin
  frmPopAll0123.show;
end;

procedure Tfrmmain.btnPop013Click(Sender: TObject);
begin
frmPopAll013.Show;
end;

procedure Tfrmmain.btnPtOutProvinceClick(Sender: TObject);
begin
frmPtOutProvince.Show;
end;

procedure Tfrmmain.btnSchoolClick(Sender: TObject);
begin
frmschool.ShowModal;
end;

procedure Tfrmmain.dxBarLargeButton1Click(Sender: TObject);
begin
frmVillagetemple.ShowModal;
end;

procedure Tfrmmain.dxBarLargeButton3Click(Sender: TObject);
begin
frmBussiness.ShowModal;
end;

procedure Tfrmmain.dxBarLargeButton5Click(Sender: TObject);
begin
frmSubEpi.ShowModal;
end;

procedure Tfrmmain.btn2YearCoverageClick(Sender: TObject);
begin
frmVaccincoverage2year.ShowModal;
end;



procedure Tfrmmain.btn3YearCoverageClick(Sender: TObject);
begin
frmVaccineCoverage3Year.ShowModal;
end;

procedure Tfrmmain.btn1YearCoverageClick(Sender: TObject);
begin
frmVaccineCoverage1Year.Show;
end;

procedure Tfrmmain.btnEpi05listClick(Sender: TObject);
begin
frmepi05list.show;
end;

procedure Tfrmmain.btnHouseByVillageClick(Sender: TObject);
begin
frmHouse.Show;
end;

procedure Tfrmmain.FormActivate(Sender: TObject);
begin
if not login  then
begin
    if frmLogin=nil then
    frmLogin:=TfrmLogin.Create(nil);
    frmLogin.ShowModal;
end;


end;

procedure Tfrmmain.FormCreate(Sender: TObject);
var
szpath:array[0..254] of char;
fini:tinifile;
begin
login:=False;
first:=true;
Mainstatus.Panels[1].Text:='JHCIS Report :: ผุ้ใช้งาน'+user_name;

//dmu.MySQLMonitor1.Active:=true;
end;

end.
