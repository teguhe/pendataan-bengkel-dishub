unit UTebagaKerja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  Tf_naker = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    a2: TLabeledEdit;
    BitBtn1: TBitBtn;
    a1: TLabeledEdit;
    a3: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    panggil,kodebengkel,id : string;
  end;

var
  f_naker: Tf_naker;

implementation

{$R *.dfm}

uses UDM;

procedure Tf_naker.BitBtn1Click(Sender: TObject);
begin
if panggil='tambah' then
  begin
    with dm do
      begin
        zq.close;
        zq.SQL.Text:='insert into tenagakerja '+
                     '(`kodebengkel`,`nama`,`alamat`,`pendidikan`) values '+
                     '("'+kodebengkel+'","'+a1.Text+'","'+a2.Text+'","'+IntToStr(a3.ItemIndex)+'")';
        zq.ExecSQL;

        MessageDlg('Data berhasil ditambahkan!',mtInformation,[mbOK],0);

        ztk.Close;
        ztk.Open();
        Close;
      end;
  end;

if panggil='ubah' then
  begin
    with dm do
      begin
        zq.close;
        zq.SQL.Text:='update tenagakerja set '+
                     '`nama` = "'+a1.Text+'", '+
                     '`alamat`    = "'+a2.Text+'", '+
                     '`pendidikan`   = "'+IntToStr(a3.ItemIndex)+'"  '+
                     'where `kodebengkel` = "'+kodebengkel+'" '+
                     'and `id` = "'+id+'" '+
                     'and `nama` = "'+ztk.Fields[2].AsString+'" ';
        zq.ExecSQL;

        MessageDlg('Data berhasil diubah!',mtInformation,[mbOK],0);

        ztk.Close;
        ztk.Open();
        Close;
      end;
  end;
end;

procedure Tf_naker.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Release;
end;

end.


