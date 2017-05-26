unit EPI05List;

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
  cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  DBAccess, MyAccess, MemDS,ShellAPI,cxExport,cxGridExportLink;

type
  TfrmEPI05List = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    Qepi05list: TMyQuery;
    MyDataSource1: TMyDataSource;
    gridEpi05listDBTableView1: TcxGridDBTableView;
    gridEpi05listLevel1: TcxGridLevel;
    gridEpi05list: TcxGrid;
    gridEpi05listDBTableView1PID: TcxGridDBColumn;
    gridEpi05listDBTableView1DBColumn: TcxGridDBColumn;
    gridEpi05listDBTableView1DBColumn1: TcxGridDBColumn;
    gridEpi05listDBTableView1DBColumn2: TcxGridDBColumn;
    gridEpi05listDBTableView1hno: TcxGridDBColumn;
    gridEpi05listDBTableView1villno: TcxGridDBColumn;
    gridEpi05listDBTableView1villname: TcxGridDBColumn;
    gridEpi05listDBTableView1BCG: TcxGridDBColumn;
    gridEpi05listDBTableView1HBV1: TcxGridDBColumn;
    gridEpi05listDBTableView1HBV2: TcxGridDBColumn;
    gridEpi05listDBTableView1HBV3: TcxGridDBColumn;
    gridEpi05listDBTableView1DHB1: TcxGridDBColumn;
    gridEpi05listDBTableView1DHB2: TcxGridDBColumn;
    gridEpi05listDBTableView1DHB3: TcxGridDBColumn;
    gridEpi05listDBTableView1DTP1: TcxGridDBColumn;
    gridEpi05listDBTableView1DTP2: TcxGridDBColumn;
    gridEpi05listDBTableView1DTP3: TcxGridDBColumn;
    gridEpi05listDBTableView1DTP4: TcxGridDBColumn;
    gridEpi05listDBTableView1DTP5: TcxGridDBColumn;
    gridEpi05listDBTableView1OPV1: TcxGridDBColumn;
    gridEpi05listDBTableView1OPV2: TcxGridDBColumn;
    gridEpi05listDBTableView1OPV3: TcxGridDBColumn;
    gridEpi05listDBTableView1OPV4: TcxGridDBColumn;
    gridEpi05listDBTableView1OPV5: TcxGridDBColumn;
    gridEpi05listDBTableView1MMR: TcxGridDBColumn;
    gridEpi05listDBTableView1JE1: TcxGridDBColumn;
    gridEpi05listDBTableView1JE2: TcxGridDBColumn;
    gridEpi05listDBTableView1JE3: TcxGridDBColumn;
    gridEpi05listDBTableView1LJE1: TcxGridDBColumn;
    gridEpi05listDBTableView1LJE2: TcxGridDBColumn;
    dxBarManager1Bar2: TdxBar;
    btnExcelExport: TdxBarLargeButton;
    btnBackToMain: TdxBarLargeButton;

    procedure FormActivate(Sender: TObject);
    procedure btnBackToMainClick(Sender: TObject);
    procedure btnExcelExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEPI05List: TfrmEPI05List;

implementation

{$R *.dfm}

uses Mainfrom, LoginForm, datamodule, UnitAll;

procedure TfrmEPI05List.btnBackToMainClick(Sender: TObject);
begin
Self.Close;
end;

procedure TfrmEPI05List.btnExcelExportClick(Sender: TObject);
begin
ExportGridToExcel(unitall.gettempdir+ 'cxGridExport.xls', gridEpi05list, True, True);
shellexecute(handle, 'Open', pchar(unitall.gettempdir + 'cxGridExport.xls'), nil, nil,sw_normal);

end;

procedure TfrmEPI05List.FormActivate(Sender: TObject);
begin
Qepi05list.Active:=False;
Caption:=frmmain.Caption+#13+'   :: '+'·ÐàºÕÂ¹ÇÑ¤«Õ¹à´ç¡ ÍÒÂØ 0-5 »Õ';
dxRibbonStatusBar1.Panels[1].Text:=frmmain.Mainstatus.Panels[1].Text;
Qepi05list.Active:=true;;
end;



end.
