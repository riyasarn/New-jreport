unit HouseForm;

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
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  DBAccess, MyAccess, MemDS, cxCurrencyEdit, cxTextEdit,ShellAPI,cxExport,cxGridExportLink;

type
  TfrmHouse = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    DribonHouse: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1villno: TcxGridDBColumn;
    cxGrid1DBTableView1villname: TcxGridDBColumn;
    cxGrid1DBTableView1total: TcxGridDBColumn;
    dxBarManager1Bar2: TdxBar;
    btnExcelExport: TdxBarLargeButton;
    btnBackToMain: TdxBarLargeButton;
    procedure FormActivate(Sender: TObject);
    procedure btnBackToMainClick(Sender: TObject);
    procedure btnExcelExportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHouse: TfrmHouse;

implementation

{$R *.dfm}

uses datamodule, UnitAll, Mainfrom, LoginForm;

procedure TfrmHouse.btnBackToMainClick(Sender: TObject);
begin
self.Close;
end;

procedure TfrmHouse.btnExcelExportClick(Sender: TObject);
begin
ExportGridToExcel(unitall.gettempdir+ 'cxGridExport.xls', cxGrid1, True, True);
shellexecute(handle, 'Open', pchar(unitall.gettempdir + 'cxGridExport.xls'), nil, nil,sw_normal);

end;

procedure TfrmHouse.FormActivate(Sender: TObject);
begin
MyQuery1.Active:=False;
Caption:=frmmain.Caption+#13+' :: '+'จำนวนหลังคาเรือนแยกรายหมู่บ้าน';
dxRibbonStatusBar1.Panels[1].Text:=frmmain.Mainstatus.Panels[1].Text;
MyQuery1.Active:=true;

end;

procedure TfrmHouse.FormCreate(Sender: TObject);
begin
Self.WindowState:=wsMaximized;
end;

end.
