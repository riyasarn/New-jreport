object frmSubEpi: TfrmSubEpi
  Left = 0
  Top = 0
  Caption = 'frmSubEpi'
  ClientHeight = 538
  ClientWidth = 981
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
  PixelsPerInch = 96
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 981
    Height = 126
    BarManager = dxBarManager1
    ColorSchemeName = 'Blue'
    QuickAccessToolbar.Toolbar = dxBarManager1Bar1
    SupportNonClientDrawing = True
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object tabEPI: TdxRibbonTab
      Active = True
      Caption = #3591#3634#3609#3626#3619#3657#3634#3591#3648#3626#3619#3636#3617#3616#3641#3617#3636#3588#3640#3657#3617#3585#3633#3609#3650#3619#3588
      Groups = <
        item
          MergeOrder = 2
          ToolbarName = 'dxBarManager1Bar2'
        end
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 0
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 515
    Width = 981
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
    ExplicitTop = 457
    ExplicitWidth = 640
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
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = #3619#3634#3618#3591#3634#3609#3626#3619#3640#3611
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1015
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCoverage1Year'
        end
        item
          Visible = True
          ItemName = 'btnCoverage2Year'
        end
        item
          Visible = True
          ItemName = 'btnCoverage3Year'
        end
        item
          Visible = True
          ItemName = 'btnCoverage5Year'
        end
        item
          Visible = True
          ItemName = 'btnStudentP1'
        end
        item
          Visible = True
          ItemName = 'btnStudentP6'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end>
      OneOnRow = True
      Row = 1
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 633
      DockedTop = 0
      FloatLeft = 1015
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnCoverage1Year: TdxBarLargeButton
      Caption = #3588#3623#3634#3617#3588#3619#3629#3610' '#3588#3621#3640#3617' 1 '#3611#3637
      Category = 0
      Hint = #3588#3623#3634#3617#3588#3619#3629#3610' '#3588#3621#3640#3617' 1 '#3611#3637
      Visible = ivAlways
      OnClick = btnCoverage1YearClick
      HotGlyph.Data = {
        5A130000424D5A13000000000000360000002800000023000000230000000100
        2000000000002413000000000000000000000000000000000000000000000000
        0000000000000000000100000000000000000000000000000000000000000101
        0102000000000000000000000000000000000000000100000000000000000000
        0000000000000000000100000001000000000000000000000000000000000001
        0102000000000000000000000000000000000000000102020205000000001111
        101C8585828A0000000000000000000000000000000001020206010101030000
        0000000000000000000001010103010101050000000000000000000000000000
        0001010101060000000100000000000000000000000001010105010101030000
        0000000000000000000001010103010202060000000000000000000000000202
        020400000000131313258987859C1A1A1A2C0000000000000000000000000000
        0000000000010203030B02020205000000000000000000000000020202070303
        030A000000000000000000000000010101030303030C01010102000000000000
        0000000000010202020A02020206000000000000000000000000020202060203
        030A000000000101010100000000111111227D7C7AA812121223000000000000
        000101010104000000010000000000000000000000010303030D020202060000
        00000000000000000000030303090303030B0000000000000000000000000202
        02050303030E010101020000000000000000000000010303030C020202070000
        000002020203000000000303030A040404100000000013131321918F8CA11213
        1225000000000202020400000000010101020202020A01010102000000000000
        0000000000010303030D02020206000000000000000000000000030303090303
        030B000000000000000000000000010202040303030D01010103000000000000
        0000000000000304040E01010103000000000000000000000000000000001112
        122D8C8A889F1414142200000000020202050000000200000000000000000101
        01040303030D010101020000000000000000000000010303030D020202060000
        00000000000000000000030303090303030B0000000000000000000000000102
        02040303030D010101020000000001010102000000000A0B08213A3F27690707
        060D14191C29272B2C4177726F980F1010280000000001010101000000000000
        0000000000000000000000000000020202050303030D01010102000000000000
        0000000000010303030D02020206000000000000000000000000030303090303
        030B000000000000000000000000010202040303030D02020205000000000F0F
        0F189DAB6DCDA8C547FF8DA659D576C7E0EC99E8FFFF22252639000000000404
        040F000000000000000000000000000000000000000000000000000000000202
        02050303030D000000010000000000000000000000010303030D020202060000
        00000000000000000000030303090303030B0000000000000000000000000303
        0307010101030F100F1ECDCCC8D4F4F3EDFFADBF76EBA3BC47FF9CBA6CF275C3
        D7E7141A1D2A010000010303030A0203030A0000000000000000000000010101
        0102000000000000000000000000020202050303030D01010102000000000000
        0000000000010303030D02020206000000000000000000000000030303090303
        030B0000000002020203000000000C0D0C19AFAFADDBF1F0EBFFF3F0EFFCECEA
        E6F7B1C478EEA3BB47FF8DA559D4090908100000000000000000020202060101
        0105000000000000000001010104020202070000000000000000000000000202
        02050303030D010101020000000000000000000000010303030D020202060000
        00000000000000000000030303090404040E000000001111111DC8C7C4D5F5F3
        EFFFE1E0DDFBF1EFEAFEF6F4F1FFEBE9E6F6ADBE75EAA9C547FF3F452A720000
        0000020202030000000001010103000101020000000000000000020202080303
        030A000000000000000000000000020202050303030D01010102000000000000
        0000000000010303030D02020206000000000000000001010101010101030E0F
        0E23CBCAC7D4DCDBD9FFE6E4E1FAF3F1EDFFE9E7E4FFF1EFEAFEF3F0EFFDF3F2
        EBFE9BAA6CCC0B0D092502020207000000000000000000000000000000000000
        000000000000000000000303030A0303030A0000000000000000000000000202
        02050303030D010101020000000000000000000000010303030D020202060101
        0102000000000F0F0F19B4B4B2DAEBEAE6FFECEAE6FAECEAE7FFF5F3EFFEF0EF
        EBFFE4E2DFFBF7F5F0FFCCCAC7D30F0F0F18000000000304040E020202070000
        00000000000000000000000000000000000000000000000000000303030A0303
        030A000000000000000000000000020202050303030D01010102000000000000
        00000000000104040410000000001111111DC5C4C1D5F9F8F3FFE4E3DFFBECEB
        E7FFF5F3EFFEF4F2EEFFEEECE8FAF4F2EFFFB9B9B6D70C0C0C17000000000101
        0101000000000303030C02020206000000000000000000000001000000010000
        000000000000000000000303030A0303030A0000000000000000000000000202
        02050303030D010101020000000001010102000000000D0D0D22C5C5C1D8DFDE
        DCFFE6E5E1FBF7F5F1FFEBE9E6FEEBEAE6FFEDECE8FAF6F4EFFFCBCAC6D20D0D
        0D1B01010104020202040000000000000000000000010202020A010101030000
        00000000000001010105010101030000000000000000000000000303030A0303
        030A000000000000000000000000020202050303030D02020205000000000F0F
        0F19BFBEBBD9EAE9E6FFE7E5E2FAEDEBE8FFF4F2EEFEF5F3EFFFE7E5E2FBEFED
        EAFFCCCAC7D30F0F0F1900000000030303070303030E01010103000000000000
        000000000000010101050000000100000000000000000202020A020202050000
        000000000000000000000303030A0303030A0000000000000000000000000303
        03080101010310101020C6C5C1D4F6F4F0FFEAE9E5FBEBEAE6FFEFEDEAFEF5F3
        EFFFEEECE8FBF9F7F3FFBEBDBAD50C0C0C1D0000000002020203000000000102
        02040303030D0101010200000000000000000000000000000001000000000000
        0000000000010303030D020202050000000000000000000000000303030A0303
        030A0000000002020203000000000E0E0E1DBBBAB7D9DEDDDBFFE7E6E2FBF7F5
        F0FFF1F0ECFEEAE9E5FFE8E6E3FAF8F6F2FFC8C6C3D20F0F0F19000000000404
        040E000000000000000000000000010202040303030D01010102000000000000
        000000000000000000000000000000000000000000010303030D020202050000
        000000000000000000000303030A0404040D000000000F0F0F19C4C3C0DAF1F0
        ECFFE2E1DDFBEBE9E6FFF5F2EEFEF4F2EEFFECEAE7FAEEECE9FFC5C4C1D70E0E
        0E170000000001010102030303090303030B0000000000000000000000000102
        02040303030D0101010200000000000000000000000000000000000000000000
        0000010101020303030D02020205000000000000000000000001010101040C0C
        0C26C7C4BED3F7F6F3FFEAE8E4FAF1EFECFFEAE8E5FEF2F1EDFFEEECE8FBF6F4
        F0FFC8C6C2D20C0D0D2101010103010101010000000000000000030303090303
        030B000000000000000000000000010202040203030B00000001000000000000
        000101010104000000000000000000000000000000010303030E020202050101
        0102000000001010101A8E887BDB877C6DFFEFECE7F9F7F6F2FFF2F0ECFEF0EE
        EAFFE4E2DFFBF6F5F1FFCAC8C4D20E0E0E180000000004040410020202060000
        00000000000000000000030303090303030B0000000000000000000000000101
        0103010101060000000000000000010101020202020900000001000000000000
        0000000000010303030E0000000010100F1ACCCAC6D5FFFFFFFF9A8760FB8175
        61FCF4F2EDFDF6F5F2FFEDEAE6FAF5F3F0FFBBBAB7D80C0C0C17000000000101
        0102000000010303030D02020206000000000000000000000000030303090303
        030B000000000000000000000000000000010000000200000000000000000202
        020504040410000000006A6A6A9038383854000000000C0D0D21C4C3BED5F9FB
        FFFFE3CD97FAEBB942FE967936FE807561FCEEECE6F9F9F7F4FFCDCDC9D40E0E
        0E1E01010106020202040000000000000000000000010303030D020202060000
        00000000000000000000030303090303030B0000000000000000000000000000
        00000000000000000000000000000303030900000000505050837070709E0B0B
        0B12CCCAC5D8EEF0F4FFE1CB96FAE1AF37FFDEAF3EFEEBB942FE9A8760FB887D
        6EFFC2C0BCD10F0F0F1900000000030303090303030D01010102000000000000
        0000000000010303030D02020206000000000000000000000000030303090303
        030B000000000000000000000000000000000000000000000000000000000000
        00000D0E0E2AABAAAAD9C7C6C2D4FAFBFFFFE4CE98FBD7A835FFDCAF43FEE1AF
        37FFE3CE97FAFFFFFFFF8C867AD90A0A0A200000000002020203000000000202
        02050303030D010101020000000000000000000000010303030D020202060000
        0000000000000000000003030309020202090000000000000000000000010101
        0102000000000000000001010102000000005759599EE2E2E5FFE7CF93F9E0AE
        37FFDFB142FED7A835FFE1CB96FAF9FBFFFFC9C7C4D30F0F0F19000000000303
        030C000000000000000000000000020202050303030D01010102000000000000
        0000000000010303030D02020206000000000000000000000000020202070101
        0105000000000000000001010104030303090000000000000000000000010606
        050DA8A6A1E6D7B563FEE0AE33FCDFAF37FFE4CE98FBEEF0F4FFC2C0BCD30E0E
        0E1800000000010101030303030A0303030A0000000000000000000000000202
        02050303030D010101020000000000000000000000010303030D020202060000
        0000000000000000000001010103010101020000000000000000000000000202
        020602020103000000005B4A2274D3AE56F8BBBAB8FCD8B663FFE8D095FAFAFB
        FFFFCAC8C4D60D0D0D22000000010101010200000000000000000303030A0303
        030A000000000000000000000000020202050303030D01010102000000000000
        0000000000010303030D02020206000000000000000000000000000000000101
        02030202020463502B82A9852ED4B58D37D4B18C38C9E5B43EFFE4B239FFD8B2
        58FEA8A8A2E7E2E2E5FFC6C4C1D3020202040000000004040410020202050000
        000000000000000000000303030A0303030A0000000000000000000000000202
        02050303030D010101020000000000000000000000010303030D020202060000
        0000000000000000000000000000947731B1B48C37CB2B261B4215140F355445
        2089DFB140F8E3B43EFD5A4B23740909091653545597A6A5A5D37171719F3A3A
        3A57010101030303030D020202050000000000000000000000000303030A0303
        030A000000000000000000000000020202050303030D01010102000000000000
        0000000000010303030D02020205000000000000000078612C94B18D36D30000
        00000000000000000000000000005446208AB28E38CA00000000000000000000
        00000E0E0F2B4D4D4D7E6A6A6A9001010101000000010303030E020202050000
        000000000000000000000303030A0303030A0000000000000000000000000202
        02050303030D010101020000000000000000000000010202020A010101030000
        0000F6C140FF524420800000000103030306020202030202020415140F34B58D
        38D4030302050001010102020203000000000000000000000000000000000000
        0000010101020303030D020202050000000000000000000000000303030A0303
        030A000000000000000000000000020202050303030D01010102000000000000
        0000000000000101010500000001DFAD3BEB6D592796000000000505050D0303
        0306000000002621183AAD892FDA020202050000000000000000000000000303
        030904040410000000010000000000000000010101020303030D020202050000
        000000000000000000000303030A0303030A0000000000000000000000000202
        02050303030D010101020000000000000000000000000000000130291B47D3A6
        3AE827221544000000000000000004040307B78F39CF64502B83000000000303
        030A000000000000000000000000020202050202020900000001000000000000
        0000000000010202020A01010103000000000000000000000000020202080202
        0207000000000000000000000000010101040202020A00000001000000000000
        0000000000000000000042392360CDA138E16C58279554452182AB8934CC9377
        31B0030302050000000001010105010101020000000000000000000000000101
        0102010101040000000000000000000000000000000001010105000000010000
        0000000000000000000001010104010101020000000000000000000000000101
        01020101010400000000000000000000000004040408000000002E281A44DBAA
        3AE7EEBB3EF779632D9600000000000000000000000000000000000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000100000000000000000000000000000000000000010000
        000000000000000000000000000000000000000000000000000000000000}
    end
    object btnCoverage2Year: TdxBarLargeButton
      Caption = #3588#3623#3634#3617#3588#3619#3629#3610' '#3588#3621#3640#3617' 2 '#3611#3637
      Category = 0
      Hint = #3588#3623#3634#3617#3588#3619#3629#3610' '#3588#3621#3640#3617' 2 '#3611#3637
      Visible = ivAlways
      OnClick = btnCoverage2YearClick
    end
    object btnCoverage3Year: TdxBarLargeButton
      Caption = #3588#3623#3634#3617#3588#3619#3629#3610' '#3588#3621#3640#3617' 3 '#3611#3637
      Category = 0
      Hint = #3588#3623#3634#3617#3588#3619#3629#3610' '#3588#3621#3640#3617' 3 '#3611#3637
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btnCoverage5Year: TdxBarLargeButton
      Caption = #3588#3623#3634#3617#3588#3619#3629#3610' '#3588#3621#3640#3617' 5 '#3611#3637
      Category = 0
      Hint = #3588#3623#3634#3617#3588#3619#3629#3610' '#3588#3621#3640#3617' 5 '#3611#3637
      Visible = ivAlways
    end
    object btnStudentP1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btnStudentP6: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object btnVaccine05List: TdxBarLargeButton
      Caption = #3607#3632#3648#3610#3637#3610#3609' '#3623#3633#3588#3595#3637#3609' '#3648#3604#3655#3585' 0-5 '#3611#3637
      Category = 0
      Hint = #3607#3632#3648#3610#3637#3610#3609' '#3623#3633#3588#3595#3637#3609' '#3648#3604#3655#3585' 0-5 '#3611#3637
      Visible = ivAlways
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2010Blue'
    Left = 536
    Top = 8
  end
end