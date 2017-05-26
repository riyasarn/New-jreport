program jreport;

uses
  Vcl.Forms,
  LoginForm in 'LoginForm.pas' {frmLogin},
  datamodule in 'datamodule.pas' {dmu: TDataModule},
  Mainfrom in 'Mainfrom.pas' {frmmain},
  ConnectionSettingForm in 'ConnectionSettingForm.pas' {frmConSetting},
  Popall0123Form in 'Popall0123Form.pas' {frmPopAll0123},
  UnitAll in 'UnitAll.pas',
  Pop013Form in 'Pop013Form.pas' {frmPopAll013},
  HouseForm in 'HouseForm.pas' {frmHouse},
  EPI05List in 'EPI05List.pas' {frmEPI05List},
  VaccineCoverage1YearForm in 'VaccineCoverage1YearForm.pas' {frmVaccineCoverage1Year},
  PtOutProvinceForm in 'PtOutProvinceForm.pas' {frmPtOutProvince},
  VaccineCoverage2YearForm in 'VaccineCoverage2YearForm.pas' {frmVaccincoverage2year},
  TempleVillageForm in 'TempleVillageForm.pas' {frmVillagetemple},
  schoolForm in 'schoolForm.pas' {frmschool},
  BussinessFrom in 'BussinessFrom.pas' {frmBussiness},
  SubEPIForm in 'SubEPIForm.pas' {frmSubEpi},
  VaccineCoverage3YearForm in 'VaccineCoverage3YearForm.pas' {frmVaccineCoverage3Year};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmmain, frmmain);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(Tdmu, dmu);
  Application.CreateForm(TfrmConSetting, frmConSetting);
  Application.CreateForm(TfrmPopAll0123, frmPopAll0123);
  Application.CreateForm(TfrmPopAll013, frmPopAll013);
  Application.CreateForm(TfrmHouse, frmHouse);
  Application.CreateForm(TfrmEPI05List, frmEPI05List);
  Application.CreateForm(TfrmVaccineCoverage1Year, frmVaccineCoverage1Year);
  Application.CreateForm(TfrmPtOutProvince, frmPtOutProvince);
  Application.CreateForm(TfrmVaccincoverage2year, frmVaccincoverage2year);
  Application.CreateForm(TfrmVillagetemple, frmVillagetemple);
  Application.CreateForm(Tfrmschool, frmschool);
  Application.CreateForm(TfrmBussiness, frmBussiness);
  Application.CreateForm(TfrmSubEpi, frmSubEpi);
  Application.CreateForm(TfrmVaccineCoverage3Year, frmVaccineCoverage3Year);
  Application.Run;
end.
