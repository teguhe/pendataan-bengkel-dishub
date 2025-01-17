object f_cetak: Tf_cetak
  Left = 0
  Top = 0
  ClientHeight = 446
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 257
    Height = 391
    ActivePage = TabSheet1
    Align = alLeft
    TabOrder = 0
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = 'Data Bengkel'
      object Label1: TLabel
        Left = 3
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Kecamatan'
      end
      object Label2: TLabel
        Left = 3
        Top = 40
        Width = 64
        Height = 13
        Caption = 'Jenis Bengkel'
      end
      object Label3: TLabel
        Left = 3
        Top = 64
        Width = 66
        Height = 13
        Caption = 'Bentuk Usaha'
      end
      object Label4: TLabel
        Left = 4
        Top = 86
        Width = 68
        Height = 13
        Caption = 'Jenis Layanan'
      end
      object c1: TComboBox
        Left = 80
        Top = 13
        Width = 145
        Height = 21
        ItemIndex = 4
        TabOrder = 0
        Text = 'Semua'
        Items.Strings = (
          'Sidorejo'
          'Sidomukti'
          'Argomulyo'
          'Tingkir'
          'Semua')
      end
      object c2: TComboBox
        Left = 80
        Top = 37
        Width = 145
        Height = 21
        ItemIndex = 2
        TabOrder = 1
        Text = 'Semua'
        Items.Strings = (
          'Mobil'
          'Motor'
          'Semua')
      end
      object c3: TComboBox
        Left = 80
        Top = 61
        Width = 145
        Height = 21
        ItemIndex = 5
        TabOrder = 2
        Text = 'Semua'
        Items.Strings = (
          'PT'
          'CV'
          'PO'
          'PD'
          'KOPERASI'
          'Semua')
      end
      object c4: TCheckListBox
        Left = 80
        Top = 85
        Width = 104
        Height = 76
        ItemHeight = 13
        Items.Strings = (
          'Perbaikan'
          'Perawatan'
          'Variasi'
          'Sparepart')
        TabOrder = 3
      end
      object Button3: TButton
        Left = 3
        Top = 175
        Width = 240
        Height = 50
        Caption = 'Tampilkan Data'
        TabOrder = 4
        OnClick = Button3Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Perizinan'
      ImageIndex = 2
      object rg1: TRadioGroup
        Left = 0
        Top = 0
        Width = 249
        Height = 201
        Align = alTop
        Caption = '[ Pilih kategori ]'
        ItemIndex = 0
        Items.Strings = (
          'Izin Usaha - Ada'
          'Izin Usaha - Ada tapi Habis'
          'Izin Usaha - Tidak Ada'
          'Izin Usaha - Habis/Tidak ada'
          'HO - Ada'
          'HO - Ada tapi habis'
          'HO - Tidak ada'
          'HO - Habis/Tidak ada'
          'Tampilkan semua bengkel')
        TabOrder = 0
      end
      object Button4: TButton
        Left = 0
        Top = 201
        Width = 249
        Height = 40
        Align = alTop
        Caption = 'Tampilkan Data'
        TabOrder = 1
        OnClick = Button4Click
      end
    end
  end
  object PageControl2: TPageControl
    AlignWithMargins = True
    Left = 266
    Top = 52
    Width = 524
    Height = 391
    ActivePage = Data
    Align = alClient
    TabOrder = 1
    TabWidth = 100
    object Data: TTabSheet
      Caption = 'Data'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 516
        Height = 322
        Align = alClient
        DataSource = dm.dct
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nama'
            Title.Alignment = taCenter
            Title.Caption = 'NAMA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'alamat'
            Title.Alignment = taCenter
            Title.Caption = 'ALAMAT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 196
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tk_kecamatan'
            Title.Alignment = taCenter
            Title.Caption = 'KECAMATAN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tk_jns_layanan'
            Title.Alignment = taCenter
            Title.Caption = 'JENIS LAYANAN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IU_max'
            Title.Alignment = taCenter
            Title.Caption = 'Exp Izin Usaha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'HO_max'
            Title.Alignment = taCenter
            Title.Caption = 'Exp HO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomorijin'
            Title.Alignment = taCenter
            Title.Caption = 'Nomor Ijin Usaha'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomorHO'
            Title.Alignment = taCenter
            Title.Caption = 'Nomor HO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 322
        Width = 516
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object Button1: TButton
          Left = 0
          Top = 0
          Width = 145
          Height = 41
          Align = alLeft
          Caption = 'Preview Cetak'
          TabOrder = 0
          OnClick = Button1Click
          ExplicitLeft = -4
          ExplicitTop = 6
        end
        object Button2: TButton
          Left = 145
          Top = 0
          Width = 166
          Height = 41
          Align = alLeft
          Caption = 'Preview Map'
          TabOrder = 1
          OnClick = Button2Click
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Map'
      ImageIndex = 1
      OnShow = TabSheet5Show
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 0
        Width = 516
        Height = 363
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 48
        ExplicitTop = 40
        ExplicitWidth = 300
        ExplicitHeight = 150
        ControlData = {
          4C00000055350000842500000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 49
    Align = alTop
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 16
      Width = 187
      Height = 19
      Caption = 'CETAK DATA BENGKEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object frxReport1: TfrxReport
    Version = '4.15.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42155.381128946800000000
    ReportOptions.LastChange = 42582.080889027800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = frxReport1GetValue
    Left = 468
    Top = 65535
    Datasets = <
      item
        DataSet = dm.frfas
        DataSetName = 'frfas'
      end
      item
        DataSet = dm.frij
        DataSetName = 'frij'
      end
      item
        DataSet = dm.frp
        DataSetName = 'frp'
      end
      item
        DataSet = dm.frtk
        DataSetName = 'frtk'
      end
      item
        DataSet = dm.frxct
        DataSetName = 'frxct'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Width = 740.787879999999000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'DAFTAR NAMA BENGKEL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 49.133890000000000000
          Width = 86.928945910000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            'KECAMATAN'
            'JENIS USAHA'
            'JENIS LAYANAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 86.929190000000000000
          Top = 49.133890000000000000
          Width = 377.952755910000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            ': [kecamatan]'
            ': [jenis_BENGKEL]'
            ': [bentuk_usaha]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 105.826840000000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        DataSet = dm.frxct
        DataSetName = 'frxct'
        KeepTogether = True
        PrintIfDetailEmpty = True
        RowCount = 0
        StartNewPage = True
        object Line: TfrxMemoView
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
        object frxctnama: TfrxMemoView
          Left = 41.574830000000000000
          Width = 680.315400000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = dm.frxct
          DataSetName = 'frxct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            '[frxct."nama"]')
          ParentFont = False
        end
        object frxctIU_max: TfrxMemoView
          Left = 442.205010000000000000
          Top = 22.000000000000100000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frxct
          DataSetName = 'frxct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            'Tgl. kadaluarsa ijin usaha ')
          ParentFont = False
        end
        object frxctHO_max: TfrxMemoView
          Left = 442.205010000000000000
          Top = 40.897650000000100000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frxct
          DataSetName = 'frxct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            'Tgl. kadaluarsa ijin HO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 41.574830000000000000
          Top = 22.677180000000100000
          Width = 400.630180000000000000
          Height = 49.133890000000000000
          ShowHint = False
          DataSet = dm.frxct
          DataSetName = 'frxct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frxct."alamat"]'
            '[frxct."tk_kecamatan"]'
            '[frxct."kota"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 608.504330000000000000
          Top = 21.677180000000100000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frxct
          DataSetName = 'frxct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frxct."IU_max"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 608.504330000000000000
          Top = 40.574830000000100000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frxct
          DataSetName = 'frxct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frxct."HO_max"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 597.165740000000000000
          Top = 21.677180000000100000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frxct
          DataSetName = 'frxct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '=')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 597.165740000000000000
          Top = 40.574830000000100000
          Width = 11.338590000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frxct
          DataSetName = 'frxct'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '=')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 22.677180000000000000
        Top = 922.205320000000000000
        Width = 740.409927000000000000
      end
      object DetailData1: TfrxDetailData
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        DataSet = dm.frfas
        DataSetName = 'frfas'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frfasfasilitas: TfrxMemoView
          Left = 83.149660000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'fasilitas'
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frfas."fasilitas"]')
          ParentFont = False
        end
        object frfasjumlah: TfrxMemoView
          Left = 483.779840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlah'
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frfas."jumlah"]')
          ParentFont = False
        end
        object frfastk_kondisi: TfrxMemoView
          Left = 563.149970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tk_kondisi'
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frfas."tk_kondisi"]')
          ParentFont = False
        end
        object Line1: TfrxMemoView
          Left = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
      object DetailData2: TfrxDetailData
        Height = 18.897650000000000000
        Top = 506.457020000000000000
        Width = 740.409927000000000000
        DataSet = dm.frij
        DataSetName = 'frij'
        PrintIfDetailEmpty = True
        RowCount = 0
        object frijtanggalakhir: TfrxMemoView
          Left = 483.779840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggalakhir'
          DataSet = dm.frij
          DataSetName = 'frij'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frij."tanggalakhir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frijtk_izin: TfrxMemoView
          Left = 83.149660000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tk_izin'
          DataSet = dm.frij
          DataSetName = 'frij'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frij."tk_izin"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 38.795300000000000000
        Top = 306.141930000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          Left = 41.574830000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Fasilitas yang dimiliki :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 83.149660000000000000
          Top = 19.897650000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Fasilitas')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 483.779840000000000000
          Top = 19.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 563.149970000000000000
          Top = 19.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kondisi')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 41.574830000000000000
          Top = 19.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
        end
      end
      object Header2: TfrxHeader
        Height = 38.795300000000000000
        Top = 445.984540000000000000
        Width = 740.409927000000000000
        object Memo4: TfrxMemoView
          Left = 41.574830000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Perizinan yang dimiliki :')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 83.149660000000000000
          Top = 19.897650000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Perizinan')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 483.779840000000000000
          Top = 19.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tgl. Exp')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 41.574830000000000000
          Top = 19.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 15.118120000000000000
        Top = 408.189240000000000000
        Width = 740.409927000000000000
      end
      object DetailData3: TfrxDetailData
        Height = 37.795300000000000000
        Top = 646.299630000000000000
        Width = 740.409927000000000000
        DataSet = dm.frtk
        DataSetName = 'frtk'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo18: TfrxMemoView
          Left = 483.779840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tk_pendidikan'
          DataSet = dm.frtk
          DataSetName = 'frtk'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frtk."tk_pendidikan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 83.149660000000000000
          Width = 400.630180000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = dm.frtk
          DataSetName = 'frtk'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frtk."nama"]'
            '[frtk."alamat"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
      object Header3: TfrxHeader
        Height = 38.795300000000000000
        Top = 585.827150000000000000
        Width = 740.409927000000000000
        object Memo21: TfrxMemoView
          Left = 41.574830000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Tenaga Kerja')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 83.149660000000000000
          Top = 19.897650000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Pegawai')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 483.779840000000000000
          Top = 19.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pendidikan')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 41.574830000000000000
          Top = 19.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        Height = 15.118120000000000000
        Top = 548.031850000000000000
        Width = 740.409927000000000000
      end
      object DetailData4: TfrxDetailData
        Height = 18.897650000000000000
        Top = 805.039890000000000000
        Width = 740.409927000000000000
        DataSet = dm.frp
        DataSetName = 'frp'
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo25: TfrxMemoView
          Left = 83.149660000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = dm.frp
          DataSetName = 'frp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          Memo.UTF8W = (
            '[frp."nama"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 483.779840000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jumlah'
          DataSet = dm.frp
          DataSetName = 'frp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frp."jumlah"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 563.149970000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tk_kondisi'
          DataSet = dm.frp
          DataSetName = 'frp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frp."tk_kondisi"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 41.574830000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
        end
      end
      object Header4: TfrxHeader
        Height = 38.795300000000000000
        Top = 744.567410000000000000
        Width = 740.409927000000000000
        object Memo28: TfrxMemoView
          Left = 41.574830000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Daftar Inventory Peralatan')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 83.149660000000000000
          Top = 19.897650000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Alat')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 41.574830000000000000
          Top = 19.897650000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 483.779840000000000000
          Top = 18.897650000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 563.149970000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = dm.frfas
          DataSetName = 'frfas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kondisi')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        Height = 15.118120000000000000
        Top = 706.772110000000000000
        Width = 740.409927000000000000
      end
      object Footer4: TfrxFooter
        Height = 15.118120000000000000
        Top = 846.614720000000000000
        Width = 740.409927000000000000
      end
    end
  end
  object GMMap1: TGMMap
    Language = English
    Active = False
    IntervalEvents = 200
    Precision = 10
    RequiredProp.Center.Lat = -7.324621800000000000
    RequiredProp.Center.Lng = 110.504887700000000000
    RequiredProp.MapType = mtROADMAP
    RequiredProp.Zoom = 13
    NonVisualProp.MaxZoom = 0
    NonVisualProp.MinZoom = 0
    NonVisualProp.MapMaker = False
    Layers.Panoramio.Filtered = False
    Layers.Panoramio.Clickable = True
    Layers.Panoramio.Show = False
    Layers.Kml.Clickable = True
    Layers.Kml.PreserveViewport = False
    Layers.Kml.ScreenOverlays = True
    Layers.Kml.SuppressInfoWindows = False
    Layers.Kml.Show = False
    Layers.Traffic.Show = False
    Layers.Transit.Show = False
    Layers.Bicycling.Show = False
    Layers.Weather.Show = False
    Layers.Weather.Clickable = True
    Layers.Weather.LabelColor = lcBLACK
    Layers.Weather.SuppressInfoWindows = False
    Layers.Weather.TemperatureUnit = tuCELSIUS
    Layers.Weather.WindSpeedUnit = wsKILOMETERS_PER_HOUR
    StreetView.Visible = False
    AfterPageLoaded = GMMap1AfterPageLoaded
    VisualProp.MapTypeCtrl.Position = cpTOP_RIGHT
    VisualProp.MapTypeCtrl.Style = mtcDEFAULT
    VisualProp.MapTypeCtrl.Show = True
    VisualProp.OverviewMapCtrl.Opened = False
    VisualProp.OverviewMapCtrl.Show = False
    VisualProp.PanCtrl.Position = cpTOP_LEFT
    VisualProp.PanCtrl.Show = True
    VisualProp.RotateCtrl.Position = cpTOP_LEFT
    VisualProp.RotateCtrl.Show = True
    VisualProp.ScaleCtrl.Position = cpBOTTOM_LEFT
    VisualProp.ScaleCtrl.Style = scDEFAULT
    VisualProp.ScaleCtrl.Show = True
    VisualProp.StreetViewCtrl.Position = cpTOP_LEFT
    VisualProp.StreetViewCtrl.Show = True
    VisualProp.ZoomCtrl.Position = cpTOP_LEFT
    VisualProp.ZoomCtrl.Style = zcDEFAULT
    VisualProp.ZoomCtrl.Show = True
    VisualProp.BGColor = 15659247
    WebBrowser = WebBrowser1
    Left = 384
  end
  object GMMarker1: TGMMarker
    Language = English
    Map = GMMap1
    AutoUpdate = True
    VisualObjects = <
      item
        Tag = 0
        Direction = 0
        MarkerType = mtStandard
        Animation.OnDrop = False
        Animation.Bounce = False
        Clickable = True
        Draggable = False
        Flat = False
        Title = 'TMarker'
        Visible = True
        Optimized = True
        RaiseOnDrag = True
        CrossOnDrag = True
        InfoWindow.DisableAutoPan = False
        InfoWindow.MaxWidth = 0
        InfoWindow.PixelOffset.Height = 0
        InfoWindow.PixelOffset.Width = 0
        InfoWindow.CloseOtherBeforeOpen = True
        ShowInfoWinMouseOver = False
        ColoredMarker.Width = 32
        ColoredMarker.Height = 32
        ColoredMarker.PrimaryColor = clRed
        ColoredMarker.StrokeColor = clBlack
        ColoredMarker.CornerColor = clWhite
        StyledMarker.StyledIcon = siMarker
        StyledMarker.ShowStar = False
        StyledMarker.BackgroundColor = clRed
        StyledMarker.TextColor = clBlack
        StyledMarker.StarColor = clLime
      end
      item
        Tag = 0
        Direction = 0
        MarkerType = mtStandard
        Animation.OnDrop = False
        Animation.Bounce = False
        Clickable = True
        Draggable = False
        Flat = False
        Title = 'jhcvjhr'
        Visible = True
        Optimized = True
        RaiseOnDrag = True
        CrossOnDrag = True
        InfoWindow.DisableAutoPan = False
        InfoWindow.MaxWidth = 0
        InfoWindow.PixelOffset.Height = 0
        InfoWindow.PixelOffset.Width = 0
        InfoWindow.CloseOtherBeforeOpen = True
        ShowInfoWinMouseOver = False
        ColoredMarker.Width = 32
        ColoredMarker.Height = 32
        ColoredMarker.PrimaryColor = clRed
        ColoredMarker.StrokeColor = clBlack
        ColoredMarker.CornerColor = clWhite
        StyledMarker.StyledIcon = siMarker
        StyledMarker.ShowStar = False
        StyledMarker.BackgroundColor = clRed
        StyledMarker.TextColor = clBlack
        StyledMarker.StarColor = clLime
      end>
    Left = 416
  end
end
