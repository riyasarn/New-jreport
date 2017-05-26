object frmmain: Tfrmmain
  Left = 0
  Top = 0
  Caption = 'JHCIS Report'
  ClientHeight = 528
  ClientWidth = 975
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 975
    Height = 159
    ApplicationButton.Menu = dxBarApplicationMenu1
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object tabGeneral: TdxRibbonTab
      Active = True
      Caption = #3586#3657#3629#3617#3641#3621#3607#3633#3656#3623#3652#3611
      Groups = <
        item
          ToolbarName = 'dxBarpop'
        end
        item
          ToolbarName = 'HouseByVillage'
        end>
      Index = 0
    end
    object tabEPI: TdxRibbonTab
      Caption = #3626#3619#3657#3634#3591#3648#3626#3619#3636#3617#3616#3641#3617#3636#3588#3640#3657#3617#3585#3633#3609
      Groups = <
        item
          ToolbarName = 'barList'
        end
        item
          ToolbarName = 'barCoverage'
        end>
      Index = 1
    end
    object tabInsur: TdxRibbonTab
      Caption = #3591#3634#3609#3611#3619#3632#3585#3633#3609#3626#3640#3586#3616#3634#3614
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 2
    end
    object tabSchoolHealth: TdxRibbonTab
      Caption = #3629#3609#3634#3617#3633#3618#3650#3619#3591#3648#3619#3637#3618#3609
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 3
    end
  end
  object Mainstatus: TdxRibbonStatusBar
    Left = 0
    Top = 505
    Width = 975
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarKeyboardStatePanelStyle'
        PanelStyle.CapsLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.CapsLockKeyAppearance.ActiveCaption = 'CAPS'
        PanelStyle.CapsLockKeyAppearance.InactiveCaption = 'CAPS'
        PanelStyle.NumLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.NumLockKeyAppearance.ActiveCaption = 'NUM'
        PanelStyle.NumLockKeyAppearance.InactiveCaption = 'NUM'
        PanelStyle.ScrollLockKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.ScrollLockKeyAppearance.ActiveCaption = 'SCRL'
        PanelStyle.ScrollLockKeyAppearance.InactiveCaption = 'SCRL'
        PanelStyle.InsertKeyAppearance.ActiveFontColor = clDefault
        PanelStyle.InsertKeyAppearance.ActiveCaption = 'OVR'
        PanelStyle.InsertKeyAppearance.InactiveCaption = 'INS'
        Text = 'Report For JHCIS'
        Width = 127
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Ribbon = dxRibbon1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ExplicitWidth = 850
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 568
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Quick Access Toolbar'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 0
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarpop: TdxBar
      Caption = #3611#3619#3632#3594#3634#3585#3619
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPop0123'
        end
        item
          Visible = True
          ItemName = 'btnPop013'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object HouseByVillage: TdxBar
      Caption = #3588#3619#3633#3623#3648#3619#3639#3629#3609' / '#3626#3640#3586#3634#3616#3636#3610#3634#3621' / '#3626#3606#3634#3609#3611#3619#3632#3585#3629#3610#3585#3634#3619'/'#3650#3619#3591#3648#3619#3637#3618#3609' /'#3623#3633#3604
      CaptionButtons = <>
      DockedLeft = 182
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnHouseByVillage'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'btnSchool'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barList: TdxBar
      Caption = #3607#3632#3648#3610#3637#3618#3609
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnEpi05list'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object barCoverage: TdxBar
      Caption = #3619#3634#3618#3591#3634#3609#3588#3623#3634#3617#3588#3619#3629#3610#3588#3621#3640#3617
      CaptionButtons = <>
      DockedLeft = 85
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn1YearCoverage'
        end
        item
          Visible = True
          ItemName = 'btn2YearCoverage'
        end
        item
          Visible = True
          ItemName = 'btn3YearCoverage'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPtOutProvince'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 884
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnPop0123: TdxBarLargeButton
      Caption = #3592#3635#3609#3623#3609' '#3611#3619#3632#3594#3634#3585#3619#3607#3633#3657#3591#3627#3617#3604
      Category = 0
      Hint = #3592#3635#3609#3623#3609' '#3611#3619#3632#3594#3634#3585#3619#3607#3633#3657#3591#3627#3617#3604
      Visible = ivAlways
      OnClick = btnPop0123Click
    end
    object btnPop013: TdxBarLargeButton
      Caption = #3592#3635#3609#3623#3609' '#3611#3619#3632#3594#3634#3585#3619#3629#3618#3641#3656#3592#3619#3636#3591
      Category = 0
      Hint = #3592#3635#3609#3623#3609' '#3611#3619#3632#3594#3634#3585#3619#3629#3618#3641#3656#3592#3619#3636#3591
      Visible = ivAlways
      OnClick = btnPop013Click
    end
    object btnHouseByVillage: TdxBarLargeButton
      Caption = #3592#3635#3609#3623#3609' '#3627#3621#3633#3591#3588#3634#3648#3619#3639#3629#3609
      Category = 0
      Hint = #3592#3635#3609#3623#3609' '#3627#3621#3633#3591#3588#3634#3648#3619#3639#3629#3609
      Visible = ivAlways
      OnClick = btnHouseByVillageClick
    end
    object btnEpi05list: TdxBarLargeButton
      Caption = #3607#3632#3648#3610#3637#3618#3609#3623#3633#3588#3595#3637#3609' '#3648#3604#3655#3585' 0-5 '#3611#3637
      Category = 0
      Hint = #3607#3632#3648#3610#3637#3618#3609#3623#3633#3588#3595#3637#3609' '#3648#3604#3655#3585' 0-5 '#3611#3637
      Visible = ivAlways
      OnClick = btnEpi05listClick
    end
    object btn1YearCoverage: TdxBarLargeButton
      Caption = #3588#3623#3634#3617#3588#3619#3629#3610#3610#3588#3621#3640#3617' 1 '#3611#3637#3610#3619#3636#3610#3641#3619#3603#3660
      Category = 0
      Hint = #3588#3623#3634#3617#3588#3619#3629#3610#3610#3588#3621#3640#3617' 1 '#3611#3637#3610#3619#3636#3610#3641#3619#3603#3660
      Visible = ivAlways
      OnClick = btn1YearCoverageClick
    end
    object btnPtOutProvince: TdxBarLargeButton
      Caption = #3612#3641#3657#3611#3656#3623#3618#3609#3629#3585' '#3648#3586#3605#3592#3633#3591#3627#3623#3633#3604
      Category = 0
      Hint = #3612#3641#3657#3611#3656#3623#3618#3609#3629#3585' '#3648#3586#3605#3592#3633#3591#3627#3623#3633#3604
      Visible = ivAlways
      OnClick = btnPtOutProvinceClick
    end
    object btn2YearCoverage: TdxBarLargeButton
      Caption = #3588#3623#3634#3617#3588#3619#3629#3610#3588#3621#3640#3617' 2 '#3611#3637#3610#3619#3636#3610#3641#3619#3603#3660
      Category = 0
      Hint = #3588#3623#3634#3617#3588#3619#3629#3610#3588#3621#3640#3617' 2 '#3611#3637#3610#3619#3636#3610#3641#3619#3603#3660
      Visible = ivAlways
      OnClick = btn2YearCoverageClick
    end
    object btn3YearCoverage: TdxBarLargeButton
      Caption = #3588#3623#3634#3617#3588#3619#3629#3610#3588#3621#3640#3617' 3 '#3611#3637#3610#3619#3636#3610#3641#3619#3603#3660
      Category = 0
      Hint = #3588#3623#3634#3617#3588#3619#3629#3610#3588#3621#3640#3617' 3 '#3611#3637#3610#3619#3636#3610#3641#3619#3603#3660
      Visible = ivAlways
      OnClick = btn3YearCoverageClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = #3624#3634#3626#3609' '#3626#3606#3634#3609
      Category = 0
      Hint = #3624#3634#3626#3609' '#3626#3606#3634#3609
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object btnSchool: TdxBarLargeButton
      Caption = #3650#3619#3591#3648#3619#3637#3618#3609
      Category = 0
      Hint = #3650#3619#3591#3648#3619#3637#3618#3609
      Visible = ivAlways
      OnClick = btnSchoolClick
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = #3626#3606#3634#3609' '#3611#3619#3632#3585#3629#3610#3585#3634#3619
      Category = 0
      Hint = #3626#3606#3634#3609' '#3611#3619#3632#3585#3629#3610#3585#3634#3619
      Visible = ivAlways
      OnClick = dxBarLargeButton3Click
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #3592#3635#3609#3623#3609' '#3609#3633#3585#3648#3619#3637#3618#3609
      Category = 0
      Hint = #3592#3635#3609#3623#3609' '#3609#3633#3585#3648#3619#3637#3618#3609
      Visible = ivAlways
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'EPI'
      Category = 0
      Hint = 'EPI'
      Visible = ivAlways
      OnClick = dxBarLargeButton5Click
    end
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
    UseOwnFont = False
    Left = 520
    Top = 8
  end
end
