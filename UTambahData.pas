unit UTambahData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.CheckLst, Vcl.ComCtrls;

type
  Tf_tambahdata = class(TForm)
    a1: TLabeledEdit;
    a2: TLabeledEdit;
    a4: TLabeledEdit;
    a5: TLabeledEdit;
    a14: TLabeledEdit;
    a12: TLabeledEdit;
    a13: TLabeledEdit;
    a15: TLabeledEdit;
    a16: TLabeledEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    a3: TComboBox;
    Label2: TLabel;
    a6: TComboBox;
    Bevel1: TBevel;
    a8: TCheckListBox;
    Label3: TLabel;
    Label4: TLabel;
    a7: TComboBox;
    Label5: TLabel;
    a9: TCheckListBox;
    Label6: TLabel;
    a10: TDateTimePicker;
    Label7: TLabel;
    a11: TDateTimePicker;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ValInput;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    panggil,kodebengkel : string;
  end;

var
  f_tambahdata: Tf_tambahdata;

implementation

{$R *.dfm}

uses UDM, UBengkel;

procedure Tf_tambahdata.ValInput;
begin
if length(a1.Text)=0 then
  begin
      MessageDlg('Isi dulu nama bengkelnya!',mtWarning,[mbOK],0);
      a1.SetFocus;
      DoExit;
  end;

if length(a2.Text)=0 then
  begin
      MessageDlg('Isi dulu Alamat nya!',mtWarning,[mbOK],0);
      exit;
      a2.SetFocus;
  end;

if length(a5.Text)=0 then
  begin
      MessageDlg('Isi dulu Nomor Teleponnya!',mtWarning,[mbOK],0);
      exit;
      a5.SetFocus;
  end;

if length(a12.Text)=0 then
  begin
      MessageDlg('Isi dulu nama pemilik nya!',mtWarning,[mbOK],0);
      exit;
      a12.SetFocus;
  end;
if length(a13.Text)=0 then
  begin
      MessageDlg('Isi dulu nama alamat pemiliknya!',mtWarning,[mbOK],0);
      exit;
      a13.SetFocus;
  end;

if length(a14.Text)=0 then
  begin
      MessageDlg('Isi dulu nomor telepon pemiliknya!',mtWarning,[mbOK],0);
      exit;
      a14.SetFocus;
  end;

if length(a15.Text)=0 then
  begin
      MessageDlg('Isi dulu nama koordinat Latitude nya!',mtWarning,[mbOK],0);
      exit;
      a15.SetFocus;
  end;

if length(a16.Text)=0 then
  begin
      MessageDlg('Isi dulu nama koordinat Longitude nya!',mtWarning,[mbOK],0);
      exit;
      a16.SetFocus;
  end;
end;

procedure Tf_tambahdata.BitBtn1Click(Sender: TObject);
var isihari,isilayanan : string;
nomorrekord: Integer;
begin
//validasi
ValInput;

//isi layanan
isilayanan:='';
if a8.State[0]=cbChecked then isilayanan:=isilayanan+'1' else isilayanan:=isilayanan+'0';
if a8.State[1]=cbChecked then isilayanan:=isilayanan+'1' else isilayanan:=isilayanan+'0';
if a8.State[2]=cbChecked then isilayanan:=isilayanan+'1' else isilayanan:=isilayanan+'0';
if a8.State[3]=cbChecked then isilayanan:=isilayanan+'1' else isilayanan:=isilayanan+'0';
//isi hari
isihari:='';
if a9.State[0]=cbChecked then isihari:=isihari+'1' else isihari:=isihari+'0';
if a9.State[1]=cbChecked then isihari:=isihari+'1' else isihari:=isihari+'0';
if a9.State[2]=cbChecked then isihari:=isihari+'1' else isihari:=isihari+'0';
if a9.State[3]=cbChecked then isihari:=isihari+'1' else isihari:=isihari+'0';
if a9.State[4]=cbChecked then isihari:=isihari+'1' else isihari:=isihari+'0';
if a9.State[5]=cbChecked then isihari:=isihari+'1' else isihari:=isihari+'0';
if a9.State[6]=cbChecked then isihari:=isihari+'1' else isihari:=isihari+'0';

                             //ShowMessage(isilayanan+' '+isihari);
//input data
if panggil='tambah' then
  begin
      with dm do
      begin
          zq.close;
          zq.SQL.Text:='insert into bengkel ('+
                       '`nama`,`alamat`,`kecamatan`,`kota`,`telepon1`, '+
                       '`jns_bengkel`,`bentuk_usaha`,`jns_layanan`,`hari_kerja`,`jam_buka`, '+
                       '`jam_tutup`,`pemilik`,`alamat_pemilik`,`telepon2`,`latitude`,`longitude`) '+
                       'values ('+
                       '"'+a1.Text+'","'+a2.Text+'","'+IntToStr(a3.ItemIndex)+'","'+a4.Text+'","'+a5.Text+'", '+
                       '"'+IntToStr(a6.ItemIndex)+'","'+IntToStr(a7.ItemIndex)+'","'+isilayanan+'","'+isihari+'","'+FormatDateTime('yyyy-mm-dd hh:mm:ss',a10.DateTime)+'", '+
                       '"'+FormatDateTime('yyyy-mm-dd hh:mm:ss',a11.DateTime)+'","'+a12.Text+'","'+a13.Text+'","'+a14.Text+'","'+a15.Text+'", '+
                       '"'+a16.Text+'") ';
          zq.ExecSQL;
          MessageDlg('Data berhasil ditambahkan!',mtInformation,[mbOK],0);

          zbengkel.Close;
          zbengkel.Open();
          zbengkel.Last;
          f_bengkel.tampildata;
          Close;
      end;
  end;

if panggil='ubah' then
  begin
      with dm do
      begin         //          ShowMessage(IntToStr(a3.ItemIndex));
          nomorrekord:=zbengkel.RecNo;
          zq.Close;
          zq.SQL.Text:='update bengkel set '+
                       'nama              ="'+a1.Text+'", '+
                       'alamat            ="'+a2.Text+'", '+
                       'kecamatan         ="'+IntToStr(a3.ItemIndex)+'", '+
                       'kota              ="'+a4.Text+'", '+
                       'telepon1          ="'+a5.Text+'", '+
                       'jns_bengkel       ="'+IntToStr(a6.ItemIndex)+'", '+
                       'bentuk_usaha      ="'+IntToStr(a7.ItemIndex)+'", '+
                       'jns_layanan       ="'+isilayanan+'", '+
                       'hari_kerja        ="'+isihari+'", '+
                       'jam_buka          ="'+FormatDateTime('yyyy-mm-dd hh:mm:ss',a10.DateTime)+'", '+
                       'jam_tutup         ="'+FormatDateTime('yyyy-mm-dd hh:mm:ss',a11.DateTime)+'", '+
                       'pemilik           ="'+a12.Text+'", '+
                       'alamat_pemilik    ="'+a13.Text+'", '+
                       'telepon2          ="'+a14.Text+'", '+
                       'latitude          ="'+a15.Text+'", '+
                       'longitude         ="'+a16.Text+'" '+
                       'where kodebengkel ="'+kodebengkel+'" ';
          zq.ExecSQL;
          MessageDlg('Data berhasil diubah!',mtInformation,[mbOK],0);

          zbengkel.Close;
          zbengkel.Open();
          zbengkel.RecNo:=nomorrekord;
          f_bengkel.tampildata;
          Close;
      end;
  end;
end;

procedure Tf_tambahdata.BitBtn2Click(Sender: TObject);
begin
ShowMessage(FormatDateTime('yyyy-mm-dd hh:mm:ss',a10.DateTime));
end;

procedure Tf_tambahdata.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Release;
end;

end.
