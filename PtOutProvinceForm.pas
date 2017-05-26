unit PtOutProvinceForm;

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
  dxSkinsdxBarPainter, dxStatusBar, dxRibbonStatusBar, dxBarApplicationMenu,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBAccess, MyAccess, MemDS, cxGridLevel,
  cxGridCustomView, cxGrid, dxBarExtItems, cxTextEdit,ShellAPI,cxExport,cxGridExportLink,
  cxContainer, cxProgressBar;

type
  TfrmPtOutProvince = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar3: TdxBar;
    bd: TdxBarDateCombo;
    ed: TdxBarDateCombo;
    btnProcess: TdxBarLargeButton;
    btnExcel: TdxBarLargeButton;
    btnReport: TdxBarLargeButton;
    dxBarLargeButton4: TdxBarLargeButton;
    dxBarLargeButton5: TdxBarLargeButton;
    cxGrid1DBTableView1pcucodeperson: TcxGridDBColumn;
    cxGrid1DBTableView1HN: TcxGridDBColumn;
    cxGrid1DBTableView1n: TcxGridDBColumn;
    cxGrid1DBTableView1age_year: TcxGridDBColumn;
    cxGrid1DBTableView1idcard: TcxGridDBColumn;
    cxGrid1DBTableView1hno: TcxGridDBColumn;
    cxGrid1DBTableView1moo: TcxGridDBColumn;
    cxGrid1DBTableView1subdist: TcxGridDBColumn;
    cxGrid1DBTableView1dist: TcxGridDBColumn;
    cxGrid1DBTableView1prov: TcxGridDBColumn;
    cxGrid1DBTableView1visitno: TcxGridDBColumn;
    cxGrid1DBTableView1service_date: TcxGridDBColumn;
    cxGrid1DBTableView1tservice: TcxGridDBColumn;
    cxGrid1DBTableView1timestart: TcxGridDBColumn;
    cxGrid1DBTableView1rightname: TcxGridDBColumn;
    cxGrid1DBTableView1rightno: TcxGridDBColumn;
    cxGrid1DBTableView1hosmain: TcxGridDBColumn;
    cxGrid1DBTableView1hossub: TcxGridDBColumn;
    cxGrid1DBTableView1money3: TcxGridDBColumn;
    cxGrid1DBTableView1diag: TcxGridDBColumn;
    cxGrid1DBTableView1provider: TcxGridDBColumn;
    cxProgressBar1: TcxProgressBar;

    procedure FormActivate(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure dxBarLargeButton4Click(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPtOutProvince: TfrmPtOutProvince;

implementation

{$R *.dfm}

uses datamodule, Mainfrom, UnitAll, LoginForm, ConnectionSettingForm, EPI05List,
  HouseForm, Pop013Form, Popall0123Form, VaccineCoverage1YearForm;

procedure TfrmPtOutProvince.btnExcelClick(Sender: TObject);
begin
ExportGridToExcel(unitall.gettempdir+ 'cxGridExport.xls', cxGrid1, True, True);
shellexecute(handle, 'Open', pchar(unitall.gettempdir + 'cxGridExport.xls'), nil, nil,sw_normal);
end;

procedure TfrmPtOutProvince.btnProcessClick(Sender: TObject);

begin
MyQuery1.Close;
MyQuery1.Params.ParamByName('bd').Value:=FormatDateTime('yyyy-mm-dd',bd.Date);
MyQuery1.Params.ParamByName('ed').Value:=FormatDateTime('yyyy-mm-dd',ed.date);
progressstatuspanel:=dxRibbonStatusBar1.Panels.Add;
progressstatuspanel.PanelStyleClass:=TdxStatusBarContainerPanelStyle;
cxProgressBar1.Parent:=TdxStatusBarContainerPanelStyle(progressstatuspanel.PanelStyle).Container;
cxProgressBar1.Align:=alClient;
//cxProgressBar1.Visible:=true;
cxGrid1.Visible:=true;
MyQuery1.Open;
// ใส่ progress bar เริ่มตรงนี้
MyQuery1.First;
cxProgressBar1.Position:=-0;
cxProgressBar1.Properties.Max:=MyQuery1.RecordCount;
while not MyQuery1.Eof do
begin
  cxProgressBar1.Visible:=true;
  MyQuery1.Next;
  cxProgressBar1.Position:=cxProgressBar1.Position+1;
  Application.ProcessMessages;
end;
cxProgressBar1.Visible:=False;
btnExcel.Enabled:=true;
btnReport.Enabled:=true;
end;

procedure TfrmPtOutProvince.dxBarLargeButton4Click(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmPtOutProvince.FormActivate(Sender: TObject);
begin
Caption:=frmmain.Caption+#13+' :: '+'ทะเบียนผู้ป่วยนอกเขตจังหวัด';
dxRibbonStatusBar1.Panels[1].Text:=frmmain.Mainstatus.Panels[1].Text;

end;



procedure TfrmPtOutProvince.FormCreate(Sender: TObject);
begin

cxGrid1.Visible:=False;
btnExcel.Enabled:=false;
btnReport.Enabled:=false;
cxProgressBar1.Visible:=False;
end;

end.
