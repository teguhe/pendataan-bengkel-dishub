unit UCetak;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.OleCtrls, SHDocVw, frxClass, frxPreview, Vcl.CheckLst, GMMap,
  GMLinkedComponents, GMMarker, GMMarkerVCL, GMClasses, GMMapVCL, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tf_cetak = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    c1: TComboBox;
    Label2: TLabel;
    c2: TComboBox;
    PageControl2: TPageControl;
    Data: TTabSheet;
    TabSheet5: TTabSheet;
    WebBrowser1: TWebBrowser;
    frxReport1: TfrxReport;
    Label3: TLabel;
    c3: TComboBox;
    Label4: TLabel;
    c4: TCheckListBox;
    GMMap1: TGMMap;
    GMMarker1: TGMMarker;
    Button3: TButton;
    DBGrid1: TDBGrid;
    rg1: TRadioGroup;
    Button4: TButton;
    Panel1: TPanel;
    Button1: TButton;
    Panel6: TPanel;
    Label5: TLabel;
    Button2: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TabSheet5Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GMMap1AfterPageLoaded(Sender: TObject; First: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    sub_judul,kecamatan,jenis_bengkel,bentuk_usaha :string;
  end;

var
  f_cetak: Tf_cetak;

implementation

{$R *.dfm}

uses UDM;

procedure Tf_cetak.Button1Click(Sender: TObject);
begin

if TabSheet1.Showing=true then
  begin
  if rg1.ItemIndex=0 then sub_judul:='YANG MEMILIKI IZIN USAHA';
  if rg1.ItemIndex=1 then sub_judul:='YANG MASA BERLAKU IZIN USAHANYA HABIS';
  if rg1.ItemIndex=2 then sub_judul:='YANG TIDAK MEMILIKI IZIN USAHA';
  if rg1.ItemIndex=3 then sub_judul:='YANG MASA BERLAKU IZIN USAHANYA HABIS DAN TIDAK MEMILIKI IZIN USAHA';
  if rg1.ItemIndex=4 then sub_judul:='YANG MEMILIKI IZIN HO';
  if rg1.ItemIndex=5 then sub_judul:='YANG MASA BERLAKU IZIN HO HABIS';
  if rg1.ItemIndex=6 then sub_judul:='YANG TIDAKMEMILIKI IZIN HO';
  if rg1.ItemIndex=7 then sub_judul:='YANG MASA BERLAKU IZIN HO HABIS DAN TIDAK MEMILIKI IZIN HO';

  frxReport1.LoadFromFile('./REPORT/data bengkel.fr3');
  frxReport1.ShowReport;
  end
  else
  begin
  kecamatan:=c1.Text;
  jenis_bengkel:=c2.Text;
  bentuk_usaha:=c3.Text;
  frxReport1.LoadFromFile('./REPORT/perizinan.fr3');
  frxReport1.ShowReport;
  end

end;

procedure Tf_cetak.Button2Click(Sender: TObject);
begin
TabSheet5.show;

  {  GMMap1.SetCenter(-7.3262536,110.4970855);
    GMMap1.RequiredProp.Zoom:=15;
    GMMap1.Active:=true;
               }
    GMMarker1.Clear;

    while not dm.zct.eof do
      begin
        GMMarker1.Add(dm.zct.Fields[15].AsFloat,dm.zct.Fields[16].AsFloat,dm.zct.Fields[1].AsString);
        dm.zct.Next;
      end;



end;

procedure Tf_cetak.Button3Click(Sender: TObject);
begin
Data.Show;
with dm.zct do
  begin
    Close;
    SQL.LoadFromFile('./query/select data bengkel.sql');
    SQL.Add('where length(nama)>0 ');
    if c1.ItemIndex=0 then SQL.Add('and kecamatan=0 ');
    if c1.ItemIndex=1 then SQL.Add('and kecamatan=1 ');
    if c1.ItemIndex=2 then SQL.Add('and kecamatan=2 ');
    if c1.ItemIndex=3 then SQL.Add('and kecamatan=3 ');

    if c2.ItemIndex=0 then SQL.Add('and jns_bengkel=0 ');
    if c2.ItemIndex=1 then SQL.Add('and jns_bengkel=1 ');
    if c3.ItemIndex=0 then SQL.Add('and bentuk_usaha=0 ');
    if c3.ItemIndex=1 then SQL.Add('and bentuk_usaha=1 ');
    if c3.ItemIndex=2 then SQL.Add('and bentuk_usaha=2 ');
    if c3.ItemIndex=3 then SQL.Add('and bentuk_usaha=3 ');
    if c3.ItemIndex=4 then SQL.Add('and bentuk_usaha=4 ');
    if c4.State[0]=cbChecked then SQL.Add('and mid(jns_layanan,1,1)=1 ');
    if c4.State[1]=cbChecked then SQL.Add('and mid(jns_layanan,2,1)=1 ');
    if c4.State[2]=cbChecked then SQL.Add('and mid(jns_layanan,3,1)=1 ');
    if c4.State[3]=cbChecked then SQL.Add('and mid(jns_layanan,4,1)=1 ');
    Open;

    kecamatan:=c1.Text;
    jenis_bengkel:=c2.Text;
    bentuk_usaha:=c3.Text;
  end;

with dm.zcfas do
  begin
      Close;
      SQL.LoadFromFile('./query/select data fasilitas.sql');
      Open();
  end;

  with dm.zcij do
  begin
      Close;
      SQL.LoadFromFile('./query/select data perizinan.sql');
      Open();
  end;

  with dm.zctk do
  begin
      Close;
      SQL.LoadFromFile('./query/select data naker.sql');
      Open();
  end;

  with dm.zcp do
  begin
      Close;
      SQL.LoadFromFile('./query/select data peralatan.sql');
      Open();
  end;


end;

procedure Tf_cetak.Button4Click(Sender: TObject);
begin
with dm.zct do
  begin
    Close;
    SQL.LoadFromFile('./query/select data bengkel.sql');
    SQL.Add('where length(nama)>0 ');
    if rg1.ItemIndex=0 then SQL.Add('and (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=0 order by tanggal desc limit 1)>0000-00-00 ');
    if rg1.ItemIndex=1 then SQL.Add('and (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=0 order by tanggal desc limit 1)<NOW() ');
    if rg1.ItemIndex=2 then SQL.Add('and (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=0 order by tanggal desc limit 1) is NULL ');
    if rg1.ItemIndex=3 then SQL.Add('and ((select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=0 order by tanggal desc limit 1) is NULL or  '+
                                         '(select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=0 order by tanggal desc limit 1)<NOW() )');
    if rg1.ItemIndex=4 then SQL.Add('and (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1)>0000-00-00 ');
    if rg1.ItemIndex=5 then SQL.Add('and (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1)<NOW() ');
    if rg1.ItemIndex=6 then SQL.Add('and (select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1) is NULL ');
    if rg1.ItemIndex=7 then SQL.Add('and ((select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1) is NULL or  '+
                                         '(select tanggal from perizinan where kodebengkel=A.kodebengkel and namaizin=1 order by tanggal desc limit 1)<NOW() )');

    Open;
  end;

  Data.Show;
end;

procedure Tf_cetak.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Release;
end;

procedure Tf_cetak.FormCreate(Sender: TObject);
begin
Data.Show;
Button3Click(sender);

try
  begin
    GMMap1.SetCenter(-7.3262536,110.4970855);
    GMMap1.Active:=true;
    //ShowMessage('ok');
  end;
except
  MessageDlg('Gagal terhubung ke internet!',mtInformation,[mbOK],0);
end;
end;

procedure Tf_cetak.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then Close;
end;

procedure Tf_cetak.frxReport1GetValue(const VarName: string;
  var Value: Variant);
//var sub_judul:string;
begin
//sub_judul:=calon_judul;
if dm.zct.Fields[3].AsString='0' then kecamatan:='sidorejo';
if dm.zct.Fields[3].AsString='1' then kecamatan:='sidomukti';
if dm.zct.Fields[3].AsString='2' then kecamatan:='argomulyo';
if dm.zct.Fields[3].AsString='3' then kecamatan:='tingkir';
if dm.zct.Fields[3].AsString='4' then kecamatan:='semua kecamatan';



if CompareText(VarName, 'sub_judul')  = 0  then Value:=sub_judul;
if CompareText(VarName, 'kecamatan')  = 0  then Value:=kecamatan;
if CompareText(VarName, 'jenis_bengkel')  = 0  then Value:=jenis_bengkel;
if CompareText(VarName, 'bentuk_usaha')  = 0  then Value:=bentuk_usaha;
end;

procedure Tf_cetak.GMMap1AfterPageLoaded(Sender: TObject; First: Boolean);
begin
  if First then
  begin
    GMMap1.DoMap;
    //DoDemo;
  end;
end;

procedure Tf_cetak.TabSheet5Show(Sender: TObject);
begin
try
  begin
    GMMap1.SetCenter(-7.3262536,110.4970855);
    GMMap1.Active:=true;
    //ShowMessage('ok');
  end;
except
  MessageDlg('Gagal terhubung ke internet!',mtInformation,[mbOK],0);
end;
end;

end.
