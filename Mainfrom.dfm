object frmmain: Tfrmmain
  Left = 0
  Top = 0
  ClientHeight = 528
  ClientWidth = 850
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
    Width = 850
    Height = 159
    ApplicationButton.Menu = dxBarApplicationMenu1
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object ribGeneral: TdxRibbonTab
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
  end
  object Mainstatus: TdxRibbonStatusBar
    Left = 0
    Top = 505
    Width = 850
    Height = 23
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 'Report For JHCIS'
        Width = 300
      end
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
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object HouseByVillage: TdxBar
      Caption = #3588#3619#3633#3623#3648#3619#3639#3629#3609
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
  end
  object dxBarApplicationMenu1: TdxBarApplicationMenu
    BarManager = dxBarManager1
    Buttons = <>
    ExtraPane.Items = <>
    ItemLinks = <>
    UseOwnFont = False
    Left = 536
    Top = 8
  end
end
