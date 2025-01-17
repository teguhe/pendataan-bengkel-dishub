unit UFasilitas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  Tf_fasilitas = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    a1: TLabeledEdit;
    a2: TLabeledEdit;
    Label3: TLabel;
    a3: TComboBox;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kodebengkel,panggil,id : string;
  end;

var
  f_fasilitas: Tf_fasilitas;

implementation

{$R *.dfm}

uses UDM;

procedure Tf_fasilitas.BitBtn1Click(Sender: TObject);
begin
if panggil='tambah' then
  begin
    with dm do
      begin
        zq.close;
        zq.SQL.Text:='insert into fasilitas '+
                     '(`kodebengkel`,`fasilitas`,`jumlah`,`kondisi`) values '+
                     '("'+kodebengkel+'","'+a1.Text+'","'+a2.Text+'","'+IntToStr(a3.ItemIndex)+'")';
        zq.ExecSQL;

        MessageDlg('Data berhasil ditambahkan!',mtInformation,[mbOK],0);

        zfas.Close;
        zfas.Open();
        Close;
      end;
  end;

if panggil='ubah' then
  begin
    with dm do
      begin
        zq.close;
        zq.SQL.Text:='update fasilitas set '+
                     '`fasilitas` = "'+a1.Text+'", '+
                     '`jumlah`    = "'+a2.Text+'", '+
                     '`kondisi`   = "'+IntToStr(a3.ItemIndex)+'"  '+
                     'where `id` = "'+id+'" '+
                     'and `kodebengkel` = "'+kodebengkel+'" '+
                     'and `fasilitas` = "'+zfas.Fields[1].AsString+'" ';
        zq.ExecSQL;

        MessageDlg('Data berhasil diubah!',mtInformation,[mbOK],0);

        zfas.Close;
        zfas.Open();
        Close;
      end;
  end;
end;

end.
