unit TempleVillageForm;

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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DBAccess,
  MyAccess, MemDS, cxTextEdit,ShellAPI,cxExport,cxGridExportLink;

type
  TfrmVillagetemple = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    tabtemple: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    MyQuery1: TMyQuery;
    MyDataSource1: TMyDataSource;
    dxBarManager1Bar2: TdxBar;
    btnExcelExport: TdxBarLargeButton;
    btnBack: TdxBarLargeButton;
    cxGrid1DBTableView1villno: TcxGridDBColumn;
    cxGrid1DBTableView1villname: TcxGridDBColumn;
    cxGrid1DBTableView1templename: TcxGridDBColumn;
    cxGrid1DBTableView1religionname: TcxGridDBColumn;
    cxGrid1DBTableView1characteristic: TcxGridDBColumn;
    cxGrid1DBTableView1address: TcxGridDBColumn;
    cxGrid1DBTableView1healthytemple: TcxGridDBColumn;
    cxGrid1DBTableView1xgis: TcxGridDBColumn;
    cxGrid1DBTableView1ygis: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnExcelExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVillagetemple: TfrmVillagetemple;

implementation

{$R *.dfm}

uses ConnectionSettingForm, datamodule, LoginForm, Mainfrom, UnitAll;

procedure TfrmVillagetemple.btnBackClick(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmVillagetemple.btnExcelExportClick(Sender: TObject);
begin
ExportGridToExcel(unitall.gettempdir+ 'cxGridExport.xls', cxGrid1, True, True);
shellexecute(handle, 'Open', pchar(unitall.gettempdir + 'cxGridExport.xls'), nil, nil,sw_normal);
end;

procedure TfrmVillagetemple.FormActivate(Sender: TObject);
begin
MyQuery1.Active:=true;
cxGrid1.Visible:=true;
Caption:=frmmain.Caption+#13+' :: '+'ข้อมูลศาสนสถานในเขตรับผิดชอบ';
dxRibbonStatusBar1.Panels[1].Text:=frmmain.Mainstatus.Panels[1].Text;

end;

procedure TfrmVillagetemple.FormCreate(Sender: TObject);
begin
cxGrid1.Visible:=False;
end;

end.
