object f_tambahdata: Tf_tambahdata
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Bengkel'
  ClientHeight = 521
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 88
    Width = 53
    Height = 13
    Caption = 'Kecamatan'
  end
  object Label2: TLabel
    Left = 9
    Top = 168
    Width = 64
    Height = 13
    Caption = 'Jenis Bengkel'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 330
    Width = 301
    Height = 7
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 10
    Top = 208
    Width = 68
    Height = 13
    Caption = 'Jenis Layanan'
  end
  object Label4: TLabel
    Left = 121
    Top = 168
    Width = 60
    Height = 13
    Caption = 'Betuk Usaha'
  end
  object Label5: TLabel
    Left = 119
    Top = 208
    Width = 47
    Height = 13
    Caption = 'Hari Kerja'
  end
  object Label6: TLabel
    Left = 14
    Top = 311
    Width = 79
    Height = 13
    Caption = 'Jam Operasional'
  end
  object Label7: TLabel
    Left = 206
    Top = 311
    Width = 15
    Height = 13
    Caption = 's/d'
  end
  object a1: TLabeledEdit
    Left = 8
    Top = 24
    Width = 284
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nama'
    TabOrder = 0
  end
  object a2: TLabeledEdit
    Left = 8
    Top = 64
    Width = 285
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Alamat'
    TabOrder = 1
  end
  object a4: TLabeledEdit
    Left = 194
    Top = 104
    Width = 98
    Height = 21
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'Kota'
    ReadOnly = True
    TabOrder = 3
    Text = 'Salatiga'
  end
  object a5: TLabeledEdit
    Left = 8
    Top = 144
    Width = 145
    Height = 21
    EditLabel.Width = 80
    EditLabel.Height = 13
    EditLabel.Caption = 'No. Telp Bengkel'
    TabOrder = 4
  end
  object a14: TLabeledEdit
    Left = 8
    Top = 438
    Width = 145
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'No. Telp 2'
    TabOrder = 13
  end
  object a12: TLabeledEdit
    Left = 8
    Top = 358
    Width = 284
    Height = 21
    EditLabel.Width = 61
    EditLabel.Height = 13
    EditLabel.Caption = 'Nama Pemilik'
    TabOrder = 11
  end
  object a13: TLabeledEdit
    Left = 8
    Top = 398
    Width = 285
    Height = 21
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = 'Alamat Pemilik'
    TabOrder = 12
  end
  object a15: TLabeledEdit
    Left = 158
    Top = 438
    Width = 64
    Height = 21
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = 'Latitude'
    TabOrder = 14
  end
  object a16: TLabeledEdit
    Left = 228
    Top = 438
    Width = 64
    Height = 21
    EditLabel.Width = 47
    EditLabel.Height = 13
    EditLabel.Caption = 'Longitude'
    TabOrder = 15
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 464
    Width = 301
    Height = 49
    Caption = 'Simpan'
    TabOrder = 16
    OnClick = BitBtn1Click
  end
  object a3: TComboBox
    Left = 8
    Top = 104
    Width = 180
    Height = 21
    TabOrder = 2
    Text = 'Sidorejo'
    Items.Strings = (
      'Sidorejo'
      'Sidomukti'
      'Argomulyo'
      'Tingkir')
  end
  object a6: TComboBox
    Left = 8
    Top = 184
    Width = 105
    Height = 21
    TabOrder = 5
    Text = 'Mobil'
    Items.Strings = (
      'Mobil'
      'Motor')
  end
  object a8: TCheckListBox
    Left = 9
    Top = 224
    Width = 104
    Height = 64
    ItemHeight = 13
    Items.Strings = (
      'Perbaikan'
      'Perawatan'
      'Variasi'
      'Sparepart')
    TabOrder = 7
  end
  object a7: TComboBox
    Left = 119
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'PT'
    Items.Strings = (
      'PT'
      'CV'
      'PO'
      'PD'
      'KOPERASI')
  end
  object a9: TCheckListBox
    Left = 119
    Top = 224
    Width = 190
    Height = 78
    Columns = 2
    ItemHeight = 13
    Items.Strings = (
      'Senin'
      'Selasa'
      'Rabo'
      'Kamis'
      'Jumat'
      'Sabtu'
      'Minggu')
    TabOrder = 8
  end
  object a10: TDateTimePicker
    Left = 119
    Top = 307
    Width = 85
    Height = 21
    Date = 39448.333333333340000000
    Time = 39448.333333333340000000
    DateMode = dmUpDown
    Kind = dtkTime
    TabOrder = 9
  end
  object a11: TDateTimePicker
    Left = 227
    Top = 308
    Width = 85
    Height = 21
    Date = 39448.708333333340000000
    Time = 39448.708333333340000000
    DateMode = dmUpDown
    Kind = dtkTime
    TabOrder = 10
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 144
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 17
    Visible = False
    OnClick = BitBtn2Click
  end
end