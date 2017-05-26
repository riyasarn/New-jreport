unit VaccineCoverage2YearForm;

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
  cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, MemDS,
  DBAccess, MyAccess, dxBarBuiltInMenu, cxTextEdit, cxCurrencyEdit, cxPC,
  cxContainer, cxProgressBar,ShellAPI,cxExport,cxGridExportLink,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, VCLTee.Series;

type
  TfrmVaccincoverage2year = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarManager1Bar2: TdxBar;
    cmbyear: TdxBarCombo;
    btnProcess: TdxBarLargeButton;
    btnExcelExport: TdxBarLargeButton;
    btnback: TdxBarLargeButton;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1villno: TcxGridDBColumn;
    cxGrid1DBTableView1villname: TcxGridDBColumn;
    cxGrid1DBTableView1b: TcxGridDBColumn;
    cxGrid1DBTableView1dtp4: TcxGridDBColumn;
    cxGrid1DBTableView1pdtp4: TcxGridDBColumn;
    cxGrid1DBTableView1opv4: TcxGridDBColumn;
    cxGrid1DBTableView1popv4: TcxGridDBColumn;
    cxGrid1DBTableView1j11: TcxGridDBColumn;
    cxGrid1DBTableView1pj11: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxProgressBar1: TcxProgressBar;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    procedure btnbackClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure btnExcelExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVaccincoverage2year: TfrmVaccincoverage2year;
  progressstatuspanel:TdxStatusBarPanel;

implementation

{$R *.dfm}

uses ConnectionSettingForm, datamodule, LoginForm, Mainfrom, UnitAll;

procedure TfrmVaccincoverage2year.btnbackClick(Sender: TObject);
begin
self.Close;
end;

procedure TfrmVaccincoverage2year.btnExcelExportClick(Sender: TObject);
begin
ExportGridToExcel(unitall.gettempdir+ 'cxGridExport.xls', cxGrid1, True, True);
shellexecute(handle, 'Open', pchar(unitall.gettempdir + 'cxGridExport.xls'), nil, nil,sw_normal);
end;

procedure TfrmVaccincoverage2year.btnProcessClick(Sender: TObject);

begin
MyQuery1.Close;
MyQuery1.Params.ParamValues['y']:=IntToStr(StrToInt(cmbyear.Text)-543);
MyQuery1.Open;
cxGrid1.Visible:=true;
btnExcelExport.Enabled:=true;

//�Ѵ ProgressBar
progressstatuspanel:=dxRibbonStatusBar1.Panels.Add;
progressstatuspanel.PanelStyleClass:=TdxStatusBarContainerPanelStyle;
cxProgressBar1.Parent:=TdxStatusBarContainerPanelStyle(progressstatuspanel.PanelStyle).Container;
cxProgressBar1.Align:=alClient;
cxProgressBar1.Visible:=true;
MyQuery1.First;
  cxProgressBar1.Position:=0;
  cxProgressBar1.Properties.Max:=MyQuery1.RecordCount;
  while not MyQuery1.Eof do
  begin
    MyQuery1.Next;
    Sleep(50);
    cxProgressBar1.Position:=cxProgressBar1.Position+1;
    Application.ProcessMessages;

  end;
  //
  cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[7]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[2]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1]);

cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[8]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[3]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1]);

cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[9]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[4]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1]);


end;




procedure TfrmVaccincoverage2year.FormActivate(Sender: TObject);
begin
MyQuery1.close;
cxProgressBar1.Visible:=False;
Caption:=frmmain.Caption+#13+'   :: '+'��§ҹ������ͺ����������Ѻ�Ѥ�չ������ 2 �պ�Ժ�ó�';
dxRibbonStatusBar1.Panels[1].Text:=frmmain.Mainstatus.Panels[1].Text;
cxGrid1.Visible:=False;
btnExcelExport.Enabled:=false;
end;

end.
