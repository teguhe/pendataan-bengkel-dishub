object f_ijin: Tf_ijin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 295
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 101
    Height = 13
    Caption = 'Tambah Perizinan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 26
    Width = 64
    Height = 13
    Caption = 'Pada bengkel'
  end
  object Bevel1: TBevel
    Left = 8
    Top = 43
    Width = 297
    Height = 10
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 8
    Top = 187
    Width = 93
    Height = 13
    Caption = 'Tanggal kadaluarsa'
  end
  object Label4: TLabel
    Left = 8
    Top = 61
    Width = 70
    Height = 13
    Caption = 'Jenis Perizinan'
  end
  object a2: TLabeledEdit
    Left = 8
    Top = 160
    Width = 297
    Height = 21
    EditLabel.Width = 31
    EditLabel.Height = 13
    EditLabel.Caption = 'Nomor'
    TabOrder = 2
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 238
    Width = 299
    Height = 35
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = BitBtn1Click
  end
  object a3: TMaskEdit
    Left = 8
    Top = 206
    Width = 81
    Height = 21
    EditMask = '!99-99-0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  -  -    '
  end
  object a1: TComboBox
    Left = 8
    Top = 80
    Width = 185
    Height = 21
    TabOrder = 0
    Text = 'IMB'
    Items.Strings = (
      'IZIN USAHA'
      'HO'
      'IZIN LAINNYA')
  end
  object a1a: TLabeledEdit
    Left = 8
    Top = 120
    Width = 297
    Height = 21
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = 'Nama Perizinan'
    TabOrder = 1
  end
end