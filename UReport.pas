unit UReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, QuickRpt, Vcl.ExtCtrls, Vcl.ComCtrls,
  QRCtrls, qrpctrls, QRPDFFilt, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components;

type
  Tf_report = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLoopBand1: TQRLoopBand;
    QRPDBText1: TQRPDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_report: Tf_report;

implementation

{$R *.dfm}

uses UDM;

end.
