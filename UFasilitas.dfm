object f_fasilitas: Tf_fasilitas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 255
  ClientWidth = 315
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
    Width = 95
    Height = 13
    Caption = 'Tambah Fasilitas'
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
    Top = 144
    Width = 33
    Height = 13
    Caption = 'Kondisi'
  end
  object a1: TLabeledEdit
    Left = 8
    Top = 80
    Width = 297
    Height = 21
    EditLabel.Width = 66
    EditLabel.Height = 13
    EditLabel.Caption = 'Nama fasilitas'
    TabOrder = 0
  end
  object a2: TLabeledEdit
    Left = 8
    Top = 120
    Width = 297
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Jumlah'
    TabOrder = 1
  end
  object a3: TComboBox
    Left = 8
    Top = 163
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 2
    Text = 'Baik'
    Items.Strings = (
      'Baik'
      'Sedang'
      'Rusak')
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 198
    Width = 299
    Height = 35
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
end
