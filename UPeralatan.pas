unit UPeralatan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tf_peralatan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    a1: TLabeledEdit;
    a2: TLabeledEdit;
    a3: TComboBox;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    kodebengkel,panggil,id: string;
  end;

var
  f_peralatan: Tf_peralatan;

implementation

{$R *.dfm}

uses UDM;

procedure Tf_peralatan.BitBtn1Click(Sender: TObject);
begin
if panggil='tambah' then
  begin
    with dm do
      begin
        zq.close;
        zq.SQL.Text:='insert into peralatan '+
                     '(`kodebengkel`,`nama`,`jumlah`,`kondisi`) values '+
                     '("'+kodebengkel+'","'+a1.Text+'","'+a2.Text+'","'+IntToStr(a3.ItemIndex)+'")';
        zq.ExecSQL;

        MessageDlg('Data berhasil ditambahkan!',mtInformation,[mbOK],0);

        zp.Close;
        zp.Open();
        Close;
      end;
  end;

if panggil='ubah' then
  begin
    with dm do
      begin
        zq.close;
        zq.SQL.Text:='update peralatan set '+
                     '`fasilitas` = "'+a1.Text+'", '+
                     '`jumlah`    = "'+a2.Text+'", '+
                     '`kondisi`   = "'+IntToStr(a3.ItemIndex)+'"  '+
                     'where `kodebengkel` = "'+kodebengkel+'" '+
                     'and `id` = "'+id+'" '+
                     'and `nama` = "'+zp.Fields[1].AsString+'" ';
        zq.ExecSQL;

        MessageDlg('Data berhasil diubah!',mtInformation,[mbOK],0);

        zp.Close;
        zp.Open();
        Close;
      end;
  end;
end;

end.
