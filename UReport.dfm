object f_report: Tf_report
  Left = 0
  Top = 0
  Caption = 'f_report'
  ClientHeight = 514
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 860
    Height = 514
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object QuickRep1: TQuickRep
        Tag = 1
        Left = 0
        Top = 0
        Width = 794
        Height = 1123
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Functions.Strings = (
          'PAGENUMBER'
          'COLUMNNUMBER'
          'REPORTTITLE'
          'QRLOOPBAND1'
          'QRSTRINGSBAND1')
        Functions.DATA = (
          '0'
          '0'
          #39#39
          '0'
          #39#39)
        Options = [FirstPageHeader, LastPageFooter]
        Page.Columns = 1
        Page.Orientation = poPortrait
        Page.PaperSize = A4Small
        Page.Continuous = False
        Page.Values = (
          127.000000000000000000
          2970.000000000000000000
          127.000000000000000000
          2100.000000000000000000
          127.000000000000000000
          127.000000000000000000
          0.000000000000000000)
        PrinterSettings.Copies = 1
        PrinterSettings.OutputBin = Auto
        PrinterSettings.Duplex = False
        PrinterSettings.FirstPage = 0
        PrinterSettings.LastPage = 0
        PrinterSettings.UseStandardprinter = False
        PrinterSettings.UseCustomBinCode = False
        PrinterSettings.CustomBinCode = 0
        PrinterSettings.ExtendedDuplex = 0
        PrinterSettings.UseCustomPaperCode = False
        PrinterSettings.CustomPaperCode = 0
        PrinterSettings.PrintMetaFile = False
        PrinterSettings.MemoryLimit = 1000000
        PrinterSettings.PrintQuality = 0
        PrinterSettings.Collate = 0
        PrinterSettings.ColorOption = 0
        PrintIfEmpty = True
        SnapToGrid = True
        Units = Inches
        Zoom = 100
        PrevFormStyle = fsNormal
        PreviewInitialState = wsNormal
        PrevInitialZoom = qrZoomToFit
        PreviewDefaultSaveType = stQRP
        PreviewLeft = 0
        PreviewTop = 0
        object QRBand1: TQRBand
          Left = 48
          Top = 48
          Width = 698
          Height = 113
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            298.979166666666700000
            1846.791666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          BandType = rbTitle
          object QRLabel1: TQRLabel
            Left = 0
            Top = 0
            Width = 47
            Height = 17
            Size.Values = (
              44.979166666666670000
              0.000000000000000000
              0.000000000000000000
              124.354166666666700000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Caption = 'Laporan'
            Color = clWhite
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FontSize = 10
          end
        end
        object QRLoopBand1: TQRLoopBand
          Left = 48
          Top = 161
          Width = 698
          Height = 40
          AlignToBottom = False
          Color = clWhite
          TransparentBand = False
          ForceNewColumn = False
          ForceNewPage = False
          Size.Values = (
            105.833333333333300000
            1846.791666666667000000)
          PreCaluculateBandHeight = False
          KeepOnOnePage = False
          Master = QuickRep1
          PrintCount = 0
          PrintBefore = False
          object QRPDBText1: TQRPDBText
            Left = 235
            Top = 0
            Width = 33
            Height = 17
            Size.Values = (
              44.979166666666670000
              621.770833333333300000
              0.000000000000000000
              87.312500000000000000)
            XLColumn = 0
            XLNumFormat = nfGeneral
            Alignment = taLeftJustify
            AlignToBand = False
            Color = clWhite
            DataSet = dm.zct
            DataField = 'nama'
            Transparent = False
            ExportAs = exptText
            WrapStyle = BreakOnSpaces
            FullJustify = False
            MaxBreakChars = 0
            SuppressRepeatedValues = False
            ReprintOnNewPage = False
            ReprintOnNewGroup = False
            BlankIfZero = False
            FixBottomPosition = False
            StretchHeightWithBand = False
            FontSize = 10
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object QRDBText1: TQRDBText
    Left = 52
    Top = 185
    Width = 229
    Height = 17
    Size.Values = (
      44.979166666666670000
      137.583333333333300000
      489.479166666666600000
      605.895833333333400000)
    XLColumn = 0
    XLNumFormat = nfGeneral
    Alignment = taLeftJustify
    AlignToBand = False
    Color = clWhite
    DataSet = dm.zct
    DataField = 'nama'
    Transparent = False
    ExportAs = exptText
    WrapStyle = BreakOnSpaces
    FullJustify = False
    MaxBreakChars = 0
    FontSize = 8
  end
end