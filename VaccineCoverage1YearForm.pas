unit VaccineCoverage1YearForm;

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
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, Data.DB, DBAccess, MyAccess, MemDS,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxDropDownEdit,
  cxBarEditItem,ShellAPI,cxExport,cxGridExportLink, cxTextEdit, cxContainer,
  cxProgressBar, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.DBChart,
  VCLTee.TeeDBCrossTab, VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.TeeData, dxorgchr, dxdborgc, cxCurrencyEdit, Vcl.Menus,
  cxButtons;

type
  TfrmVaccineCoverage1Year = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    Qcoverarge: TMyQuery;
    DataSourceCoverage: TMyDataSource;
    dxBarManager1Bar2: TdxBar;
    cxBarEditItem1: TcxBarEditItem;
    dxBarLargeButton1: TdxBarLargeButton;
    btnExcelExport: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    cmbYear: TdxBarCombo;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1villno: TcxGridDBColumn;
    cxGrid1DBTableView1villname: TcxGridDBColumn;
    cxGrid1DBTableView1b: TcxGridDBColumn;
    cxGrid1DBTableView1bcg: TcxGridDBColumn;
    cxGrid1DBTableView1pbcg: TcxGridDBColumn;
    cxGrid1DBTableView1HBV1: TcxGridDBColumn;
    cxGrid1DBTableView1phbv: TcxGridDBColumn;
    cxGrid1DBTableView1DHB3: TcxGridDBColumn;
    cxGrid1DBTableView1pdhbv3: TcxGridDBColumn;
    cxGrid1DBTableView1OPV3: TcxGridDBColumn;
    cxGrid1DBTableView1popv3: TcxGridDBColumn;
    cxGrid1DBTableView1MMR1: TcxGridDBColumn;
    cxGrid1DBTableView1pmmr1: TcxGridDBColumn;
    cxGrid1DBTableView1IPV: TcxGridDBColumn;
    cxGrid1DBTableView1pipv: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxProgressBar1: TcxProgressBar;
    btnBCG: TdxBarLargeButton;
    DBCrossTabSource1: TDBCrossTabSource;
    DBCrossTabSource2: TDBCrossTabSource;
    DBCrossTabSource3: TDBCrossTabSource;
    DBCrossTabSource4: TDBCrossTabSource;
    Panel1: TPanel;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    Panel2: TPanel;
    Button1: TButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    procedure FormActivate(Sender: TObject);
    procedure dxBarLargeButton3Click(Sender: TObject);
    procedure btnExcelExportClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxGrid1DBTableView1pmmr1StylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVaccineCoverage1Year: TfrmVaccineCoverage1Year;
  progressstatuspanel:TdxStatusBarPanel;
implementation

{$R *.dfm}

uses ConnectionSettingForm, datamodule, LoginForm, Mainfrom, UnitAll;

procedure TfrmVaccineCoverage1Year.btnPrintClick(Sender: TObject);
begin
DBChart1.Print;
end;

procedure TfrmVaccineCoverage1Year.Button1Click(Sender: TObject);
begin
DBChart1.PrintLandscape;
end;





procedure TfrmVaccineCoverage1Year.cxGrid1DBTableView1pmmr1StylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
var  Col: TcxCustomGridTableItem;
begin
col:=(Sender as TcxGridDBTableView).GetColumnByFieldName('pmmr1');

 if ARecord.Values[col.Index]<95 then
 begin
   AStyle:=cxstyle1
 end
 else
 AStyle:=cxstyle2;
{ if ARecord.Values[6]<90 then
 begin
   AStyle:=cxstyle1
   else
    AStyle:=cxstyle2;
 end;

 if ARecord.Values[8]<90 then
 begin
   AStyle:=cxstyle1
   else
    AStyle:=cxstyle2;
 end;
 if ARecord.Values[10]<90 then
 begin
   AStyle:=cxstyle1
   else
    AStyle:=cxstyle2;
 end;}

end;


procedure TfrmVaccineCoverage1Year.dxBarLargeButton1Click(Sender: TObject);

begin



Qcoverarge.Close;
Qcoverarge.Params.ParamValues['y']:=IntToStr(StrToInt(cmbYear.Text)-543);
Qcoverarge.Open;
cxGrid1.Visible:=true;
btnExcelExport.Enabled:=true;





//progress bar
progressstatuspanel:=dxRibbonStatusBar1.Panels.Add;
progressstatuspanel.PanelStyleClass:=TdxStatusBarContainerPanelStyle;
cxProgressBar1.Parent:=TdxStatusBarContainerPanelStyle(progressstatuspanel.PanelStyle).Container;
cxProgressBar1.Align:=alClient;
cxProgressBar1.Visible:=true;
Qcoverarge.First;
  cxProgressBar1.Position:=0;
  cxProgressBar1.Properties.Max:=Qcoverarge.RecordCount;
  while not Qcoverarge.Eof do
  begin
    Qcoverarge.Next;
    Sleep(50);
    cxProgressBar1.Position:=cxProgressBar1.Position+1;
    Application.ProcessMessages;

  end;
cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[7]:=FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[1]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]);

cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[8]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[2]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]);

cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[9]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[3]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]);

cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[10]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[4]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]);
cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[11]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[5]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]);

cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[12]:=
FormatFloat('0.00',(cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[6]*100)
/cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues[0]);
self.SetFocus;

end;

procedure TfrmVaccineCoverage1Year.btnExcelExportClick(Sender: TObject);
begin
ExportGridToExcel(unitall.gettempdir+ 'cxGridExport.xls', cxGrid1, True, True);
shellexecute(handle, 'Open', pchar(unitall.gettempdir + 'cxGridExport.xls'), nil, nil,sw_normal);

end;

procedure TfrmVaccineCoverage1Year.dxBarLargeButton3Click(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmVaccineCoverage1Year.FormActivate(Sender: TObject);
begin
Qcoverarge.Active:=False;
cxProgressBar1.Visible:=False;
Caption:=frmmain.Caption+#13+'   :: '+'รายงานความครอบคลุมการได้รับวัคซีนในเด็กอายุ 1 ปีบริบูรณ์';
dxRibbonStatusBar1.Panels[1].Text:=frmmain.Mainstatus.Panels[1].Text;
cxGrid1.Visible:=False;
btnExcelExport.Enabled:=false;


end;

end.
