object f_naker: Tf_naker
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 254
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 124
    Height = 13
    Caption = 'Tambah Tenaga Kerja'
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
    Width = 296
    Height = 10
    Shape = bsBottomLine
  end
  object Label3: TLabel
    Left = 8
    Top = 147
    Width = 93
    Height = 13
    Caption = 'Pendidikan Terakhir'
  end
  object a2: TLabeledEdit
    Left = 8
    Top = 120
    Width = 296
    Height = 21
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Alamat'
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 198
    Width = 298
    Height = 35
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object a1: TLabeledEdit
    Left = 8
    Top = 80
    Width = 296
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Nama'
    TabOrder = 0
  end
  object a3: TComboBox
    Left = 8
    Top = 166
    Width = 145
    Height = 21
    ItemIndex = 2
    TabOrder = 2
    Text = 'SMA/SMK'
    Items.Strings = (
      'SD'
      'SMP'
      'SMA/SMK'
      'D1'
      'D2'
      'D3'
      'D4'
      'S1'
      'S2')
  end
end