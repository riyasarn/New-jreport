unit SubEPIForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxRibbonBackstageView, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, dxRibbonCustomizationForm,
  dxSkinsdxBarPainter, dxSkinsForm, dxStatusBar, dxRibbonStatusBar;

type
  TfrmSubEpi = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxRibbon1: TdxRibbon;
    tabEPI: TdxRibbonTab;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxSkinController1: TdxSkinController;
    dxBarManager1Bar2: TdxBar;
    btnCoverage1Year: TdxBarLargeButton;
    btnCoverage2Year: TdxBarLargeButton;
    btnCoverage3Year: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    btnCoverage5Year: TdxBarLargeButton;
    btnStudentP1: TdxBarLargeButton;
    btnStudentP6: TdxBarLargeButton;
    btnVaccine05List: TdxBarLargeButton;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    dxBarLargeButton10: TdxBarLargeButton;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton12: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    procedure btnCoverage1YearClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCoverage2YearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSubEpi: TfrmSubEpi;

implementation

{$R *.dfm}

uses ConnectionSettingForm, datamodule, LoginForm, Mainfrom, UnitAll,
  VaccineCoverage1YearForm, VaccineCoverage2YearForm;

procedure TfrmSubEpi.btnCoverage1YearClick(Sender: TObject);
begin
frmVaccineCoverage1Year.ShowModal;
end;

procedure TfrmSubEpi.btnCoverage2YearClick(Sender: TObject);
begin
frmVaccincoverage2year.Show;
end;

procedure TfrmSubEpi.FormActivate(Sender: TObject);
begin


Caption:=frmmain.Caption+#13+'   :: '+'งานสร้างเสริมภูมิคุ้มกันโรค';
dxRibbonStatusBar1.Panels[1].Text:=frmmain.Mainstatus.Panels[1].Text;


end;

end.
