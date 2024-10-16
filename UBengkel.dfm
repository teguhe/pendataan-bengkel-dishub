object f_bengkel: Tf_bengkel
  Left = 0
  Top = 0
  ClientHeight = 481
  ClientWidth = 1051
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 478
    Top = 52
    Width = 570
    Height = 426
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabWidth = 80
    object TabSheet1: TTabSheet
      Caption = 'Data'
      object Bevel1: TBevel
        Left = 8
        Top = 245
        Width = 431
        Height = 7
        Shape = bsBottomLine
      end
      object a1: TLabeledEdit
        Left = 8
        Top = 24
        Width = 289
        Height = 21
        EditLabel.Width = 27
        EditLabel.Height = 13
        EditLabel.Caption = 'Nama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object a2: TLabeledEdit
        Left = 8
        Top = 64
        Width = 289
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Alamat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object a3: TLabeledEdit
        Left = 303
        Top = 64
        Width = 136
        Height = 21
        EditLabel.Width = 53
        EditLabel.Height = 13
        EditLabel.Caption = 'Kecamatan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object a5: TLabeledEdit
        Left = 239
        Top = 104
        Width = 121
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'No. Telp'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object a14: TLabeledEdit
        Left = 9
        Top = 352
        Width = 121
        Height = 21
        EditLabel.Width = 49
        EditLabel.Height = 13
        EditLabel.Caption = 'No. Telp 2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object a12: TLabeledEdit
        Left = 8
        Top = 272
        Width = 225
        Height = 21
        EditLabel.Width = 61
        EditLabel.Height = 13
        EditLabel.Caption = 'Nama Pemilik'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object a13: TLabeledEdit
        Left = 8
        Top = 312
        Width = 381
        Height = 21
        EditLabel.Width = 67
        EditLabel.Height = 13
        EditLabel.Caption = 'Alamat Pemilik'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object a15: TLabeledEdit
        Left = 136
        Top = 352
        Width = 71
        Height = 21
        EditLabel.Width = 39
        EditLabel.Height = 13
        EditLabel.Caption = 'Latitude'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object a16: TLabeledEdit
        Left = 213
        Top = 352
        Width = 71
        Height = 21
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = 'Longitude'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object a4: TLabeledEdit
        Left = 8
        Top = 104
        Width = 225
        Height = 21
        EditLabel.Width = 22
        EditLabel.Height = 13
        EditLabel.Caption = 'Kota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object a6: TLabeledEdit
        Left = 8
        Top = 144
        Width = 75
        Height = 21
        EditLabel.Width = 64
        EditLabel.Height = 13
        EditLabel.Caption = 'Jenis Bengkel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object a7: TLabeledEdit
        Left = 89
        Top = 144
        Width = 108
        Height = 21
        EditLabel.Width = 66
        EditLabel.Height = 13
        EditLabel.Caption = 'Bentuk Usaha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object a8: TLabeledEdit
        Left = 203
        Top = 144
        Width = 236
        Height = 21
        EditLabel.Width = 68
        EditLabel.Height = 13
        EditLabel.Caption = 'Jenis Layanan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object a9: TLabeledEdit
        Left = 8
        Top = 184
        Width = 377
        Height = 21
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = 'Hari Kerja'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object a10: TLabeledEdit
        Left = 9
        Top = 224
        Width = 121
        Height = 21
        EditLabel.Width = 45
        EditLabel.Height = 13
        EditLabel.Caption = 'Jam Buka'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object a11: TLabeledEdit
        Left = 136
        Top = 224
        Width = 121
        Height = 21
        EditLabel.Width = 50
        EditLabel.Height = 13
        EditLabel.Caption = 'Jam Tutup'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object a17: TLabeledEdit
        Left = 263
        Top = 224
        Width = 178
        Height = 21
        EditLabel.Width = 29
        EditLabel.Height = 13
        EditLabel.Caption = 'NPWP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
      end
    end
    object Fasilitas: TTabSheet
      Caption = 'Fasilitas'
      ImageIndex = 1
      OnShow = FasilitasShow
      object DBGrid2: TDBGrid
        Left = 0
        Top = 41
        Width = 562
        Height = 312
        Align = alClient
        DataSource = dm.dfas
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fasilitas'
            Title.Alignment = taCenter
            Title.Caption = 'FASILITAS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 220
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'jumlah'
            Title.Alignment = taCenter
            Title.Caption = 'JUMLAH'
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
            FieldName = 'tk_kondisi'
            Title.Alignment = taCenter
            Title.Caption = 'KONDISI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 356
        Width = 556
        Height = 39
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn4: TBitBtn
          Left = 0
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Tambah'
          TabOrder = 0
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 75
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Ubah'
          TabOrder = 1
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 150
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Hapus'
          TabOrder = 2
          OnClick = BitBtn6Click
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 562
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label2: TLabel
          Left = 3
          Top = 22
          Width = 169
          Height = 13
          Caption = 'Daftar fasilitas yang dimiliki bengkel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object Perizinan: TTabSheet
      Caption = 'Perizinan'
      ImageIndex = 2
      OnShow = PerizinanShow
      object DBGrid3: TDBGrid
        Left = 0
        Top = 41
        Width = 562
        Height = 312
        Align = alClient
        DataSource = dm.dij
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tk_izin'
            Title.Alignment = taCenter
            Title.Caption = 'NAMA PERIJINAN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 167
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'nomor'
            Title.Alignment = taCenter
            Title.Caption = 'NOMOR IJIN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 151
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'tanggalakhir'
            Title.Alignment = taCenter
            Title.Caption = 'TANGGAL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 356
        Width = 556
        Height = 39
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn8: TBitBtn
          Left = 75
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Ubah'
          TabOrder = 0
          OnClick = BitBtn8Click
        end
        object BitBtn9: TBitBtn
          Left = 150
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Hapus'
          TabOrder = 1
          OnClick = BitBtn9Click
        end
        object BitBtn7: TBitBtn
          Left = 0
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Tambah'
          TabOrder = 2
          OnClick = BitBtn7Click
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 562
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label3: TLabel
          Left = 3
          Top = 19
          Width = 176
          Height = 13
          Caption = 'Daftar perizinan yang dimiliki bengkel'
        end
      end
    end
    object Lain: TTabSheet
      Caption = 'Tenaga Kerja'
      ImageIndex = 3
      OnShow = LainShow
      object DBGrid4: TDBGrid
        Left = 0
        Top = 41
        Width = 562
        Height = 312
        Align = alClient
        DataSource = dm.dtk
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tk_pendidikan'
            Title.Alignment = taCenter
            Title.Caption = 'PENDIDIKAN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
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
            Visible = True
          end>
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 356
        Width = 556
        Height = 39
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn10: TBitBtn
          Left = 0
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Tambah'
          TabOrder = 0
          OnClick = BitBtn10Click
        end
        object BitBtn11: TBitBtn
          Left = 75
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Ubah'
          TabOrder = 1
          OnClick = BitBtn11Click
        end
        object BitBtn12: TBitBtn
          Left = 150
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Hapus'
          TabOrder = 2
          OnClick = BitBtn12Click
        end
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 562
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label5: TLabel
          Left = 6
          Top = 19
          Width = 110
          Height = 13
          Caption = 'Daftar nama karyawan'
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Peralatan'
      ImageIndex = 5
      OnShow = TabSheet2Show
      object DBGrid5: TDBGrid
        Left = 0
        Top = 41
        Width = 562
        Height = 312
        Align = alClient
        DataSource = dm.dp
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
            Title.Caption = 'NAMA ALAT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 220
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'jumlah'
            Title.Alignment = taCenter
            Title.Caption = 'JUMLAH'
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
            FieldName = 'tk_kondisi'
            Title.Alignment = taCenter
            Title.Caption = 'KONDISI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end>
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 356
        Width = 556
        Height = 39
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        object BitBtn13: TBitBtn
          Left = 0
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Tambah'
          TabOrder = 0
          OnClick = BitBtn13Click
        end
        object BitBtn14: TBitBtn
          Left = 75
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Ubah'
          TabOrder = 1
          OnClick = BitBtn14Click
        end
        object BitBtn15: TBitBtn
          Left = 150
          Top = 0
          Width = 75
          Height = 39
          Align = alLeft
          Caption = 'Hapus'
          TabOrder = 2
          OnClick = BitBtn15Click
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 562
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        object Label6: TLabel
          Left = 6
          Top = 19
          Width = 80
          Height = 13
          Caption = 'Daftar peralatan'
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Peta Lokasi'
      ImageIndex = 4
      OnShow = TabSheet3Show
      object WebBrowser1: TWebBrowser
        Left = 0
        Top = 41
        Width = 562
        Height = 357
        Align = alClient
        TabOrder = 0
        ExplicitLeft = -4
        ExplicitTop = 72
        ExplicitWidth = 446
        ExplicitHeight = 348
        ControlData = {
          4C000000163A0000E62400000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 562
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label4: TLabel
          Left = 96
          Top = 8
          Width = 94
          Height = 13
          Caption = 'Tampilkan Rute dari'
        end
        object Button1: TButton
          Left = 3
          Top = 3
          Width = 75
          Height = 25
          Caption = 'map'
          TabOrder = 0
          OnClick = Button1Click
        end
        object Button2: TButton
          Left = 352
          Top = 3
          Width = 91
          Height = 25
          Caption = 'Tampilkan Arah'
          TabOrder = 1
          OnClick = Button2Click
        end
        object ComboBox1: TComboBox
          Left = 194
          Top = 5
          Width = 154
          Height = 21
          TabOrder = 2
          Text = 'Gedung Dishubkombudpar'
          Items.Strings = (
            'Bundaran Tamansari'
            'Gedung Dishubkombudpar')
        end
      end
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 1051
    Height = 49
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 203
      Height = 19
      Caption = 'DAFTAR NAMA BENGKEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel7: TPanel
    Left = 0
    Top = 49
    Width = 473
    Height = 432
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel7'
    TabOrder = 2
    object DBGrid1: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 467
      Height = 388
      Align = alClient
      DataSource = dm.dbengkel
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyUp = DBGrid1KeyUp
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
          Width = 236
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pemilik'
          Title.Alignment = taCenter
          Title.Caption = 'PEMILIK'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 121
          Visible = True
        end>
    end
    object Panel9: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 397
      Width = 467
      Height = 32
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Label7: TLabel
        Left = 427
        Top = 8
        Width = 37
        Height = 13
        Caption = 'Bengkel'
      end
      object Label8: TLabel
        Left = 408
        Top = 0
        Width = 13
        Height = 25
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 0
        Top = 0
        Width = 75
        Height = 32
        Align = alLeft
        Caption = 'Tambah'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 75
        Top = 0
        Width = 75
        Height = 32
        Align = alLeft
        Caption = 'Ubah'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 150
        Top = 0
        Width = 75
        Height = 32
        Align = alLeft
        Caption = 'Hapus'
        TabOrder = 2
        OnClick = BitBtn3Click
      end
    end
  end
  object Panel8: TPanel
    Left = 473
    Top = 49
    Width = 2
    Height = 432
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
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
    OnZoomChanged = GMMap1ZoomChanged
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
    Left = 448
    Top = 8
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
      end>
    Left = 480
    Top = 8
  end
  object GMPolygon1: TGMPolygon
    Language = English
    AutoUpdate = True
    VisualObjects = <>
    Left = 536
    Top = 8
  end
  object GMDirection1: TGMDirection
    Language = French
    Map = GMMap1
    AutoShow = True
    HiddeOthers = True
    DirectionsRequest.AvoidHighways = False
    DirectionsRequest.AvoidTolls = True
    DirectionsRequest.OptimizeWaypoints = True
    DirectionsRequest.ProvideRouteAlt = False
    DirectionsRequest.Region = r_NO_REGION
    DirectionsRequest.TransitOpt.ArrivalTime = 0.000000011574074074
    DirectionsRequest.TransitOpt.ArrivalDate = 25569.000000000000000000
    DirectionsRequest.TransitOpt.DepartureTime = 0.000000011574074074
    DirectionsRequest.TransitOpt.DepartureDate = 25569.000000000000000000
    DirectionsRequest.TravelMode = tmDRIVING
    DirectionsRequest.UnitSystem = usMETRIC
    DirectionsRequest.WaypointsList = <>
    DirectionsRender.Draggable = False
    DirectionsRender.MarkerOptions.Clickable = False
    DirectionsRender.MarkerOptions.Draggable = False
    DirectionsRender.MarkerOptions.Flat = True
    DirectionsRender.PreserveViewport = False
    DirectionsRender.SuppressBicyclingLayer = False
    DirectionsRender.SuppressInfoWindows = False
    DirectionsRender.SuppressMarkers = False
    DirectionsRender.SuppressPolylines = False
    DirectionsRender.PolylineOptions.Clickable = True
    DirectionsRender.PolylineOptions.Geodesic = False
    DirectionsRender.PolylineOptions.StrokeOpacity = 0.500000000000000000
    DirectionsRender.PolylineOptions.StrokeWeight = 2
    DirectionsRender.PolylineOptions.StrokeColor = clBlue
    Left = 568
    Top = 8
  end
end
