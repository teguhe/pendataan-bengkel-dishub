unit UIjin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  Tf_ijin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    a2: TLabeledEdit;
    BitBtn1: TBitBtn;
    Label3: TLabel;
    a3: TMaskEdit;
    a1: TComboBox;
    Label4: TLabel;
    a1a: TLabeledEdit;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kodebengkel,panggil,id: string;
  end;

var
  f_ijin: Tf_ijin;

implementation

{$R *.dfm}

uses UDM;

procedure Tf_ijin.BitBtn1Click(Sender: TObject);
begin
if panggil='tambah' then
  begin
    with dm do
      begin
        zq.close;
        zq.SQL.Text:='insert into perizinan '+
                     '(`kodebengkel`,`namaizin`,`nomor`,`tanggal`,`izin`) values '+
                     '("'+kodebengkel+'","'+IntToStr(a1.ItemIndex)+'","'+a2.Text+'", '+
                     ' "'+copy(a3.Text,7,4)+'-'+copy(a3.Text,4,2)+'-'+copy(a3.Text,1,2)+'","'+a1a.Text+'")';
        zq.ExecSQL;

        MessageDlg('Data berhasil ditambahkan!',mtInformation,[mbOK],0);

        zij.Close;
        zij.Open();
        Close;
      end;
  end;

if panggil='ubah' then
  begin
    with dm do
      begin
        zq.close;
        zq.SQL.Text:='update perizinan set '+
                     '`namaizin` = "'+IntToStr(a1.ItemIndex)+'", '+
                     '`izin`     = "'+a1a.Text+'", '+
                     '`nomor`    = "'+a2.Text+'", '+
                     '`tanggal`  = "'+copy(a3.Text,7,4)+'-'+copy(a3.Text,4,2)+'-'+copy(a3.Text,1,2)+'",  '+
                     '`izin`     = "'+a1a.Text+'" '+
                     'where `kodebengkel` = "'+kodebengkel+'" '+
                     'and `id` ="'+id+'" ';
        zq.ExecSQL;

        MessageDlg('Data berhasil diubah!',mtInformation,[mbOK],0);

        zij.Close;
        zij.Open();
        Close;
      end;
  end;
end;

end.
