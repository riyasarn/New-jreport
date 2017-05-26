unit VaccineCoverage3YearForm;

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
  dxSkinsdxBarPainter, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, DBAccess, MyAccess, MemDS,
  dxStatusBar, dxRibbonStatusBar, dxBarApplicationMenu, cxTextEdit,
  cxCurrencyEdit, cxContainer, cxProgressBar, VclTee.TeeGDIPlus,
  VCLTee.TeEngine, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart,
  VCLTee.DBChart,ShellAPI,cxExport,cxGridExportLink;

type
  TfrmVaccineCoverage3Year = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1villno: TcxGridDBColumn;
    cxGrid1DBTableView1villname: TcxGridDBColumn;
    cxGrid1DBTableView1b: TcxGridDBColumn;
    cxGrid1DBTableView1mmr2: TcxGridDBColumn;
    cxGrid1DBTableView1pmmr2: TcxGridDBColumn;
    cxGrid1DBTableView1j12: TcxGridDBColumn;
    cxGrid1DBTableView1pj12: TcxGridDBColumn;
    cxProgressBar1: TcxProgressBar;
    dxBarManager1Bar2: TdxBar;
    dxBarCombo1: TdxBarCombo;
    btnProcess: TdxBarLargeButton;
    btnExcelExport: TdxBarLargeButton;
    btnBack: TdxBarLargeButton;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    procedure FormActivate(Sender: TObject);
    procedure btnProcessClick(Sender: TObject);
    procedure btnExcelExportClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVaccineCoverage3Year: TfrmVaccineCoverage3Year;
    progressstatuspanel:TdxStatusBarPanel;

implementation

{$R *.dfm}

uses ConnectionSettingForm, datamodule, LoginForm, Mainfrom, UnitAll;

procedure TfrmVaccineCoverage3Year.btnBackClick(Sender: TObject);
begin
self.Close;
end;

procedure TfrmVaccineCoverage3Year.btnExcelExportClick(Sender: TObject);
begin
ExportGridToExcel(unitall.gettempdir+ 'cxGridExport.xls', cxGrid1, True, True);
shellexecute(handle, 'Open', pchar(unitall.gettempdir + 'cxGridExport.xls'), nil, nil,sw_normal);
end;

procedure TfrmVaccineCoverage3Year.btnProcessClick(Sender: TObject);
begin
MyQuery1.Close;
MyQuery1.Params.ParamValues['y']:=IntToStr(StrToInt(dxBarCombo1.Text)-543);
MyQuery1.Open;
cxGrid1.Visible:=true;
btnExcelExport.Enabled:=true;
//บัด ProgressBar
progressstatuspanel:=dxRibbonStatusBar1.Panels.Add;
progressstatuspanel.PanelStyleClass:=TdxStatusBarContainerPanelStyle;
cxProgressBar1.Parent:=TdxStatusBarContainerPanelStyle(progressstatuspanel.PanelStyle).Container;
cxProgressBar1.Align:=alClient;
cxProgressBar1.Visible:=true;
cxProgressBar1.Brush.Color:=clGreen;
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
 cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[4]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[2]*100)/
 cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[3]);

 cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[5]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1]*100)/
 cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[3]) ;



end;

procedure TfrmVaccineCoverage3Year.FormActivate(Sender: TObject);
begin
MyQuery1.close;
cxProgressBar1.Visible:=False;
Caption:=frmmain.Caption+#13+'   :: '+'รายงานความครอบคลุมการได้รับวัคซีนในเด็กอาย 3 ปีบริบูรณ์';
dxRibbonStatusBar1.Panels[1].Text:=frmmain.Mainstatus.Panels[1].Text;
cxGrid1.Visible:=False;
dxRibbon1Tab1.Caption:='รายงานความครอบคลุมวัคซีน เด็ก 3 ปีบริบูรณ์';
cxPageControl1.Pages[0].Caption:='รายงานความครอบคลุม';
cxPageControl1.Pages[1].Caption:='Graph';
btnExcelExport.Enabled:=False;
end;

end.
