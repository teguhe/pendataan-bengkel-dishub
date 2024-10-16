unit UBengkel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.OleCtrls, SHDocVw, GMMap, GMLinkedComponents, GMMarker, GMMarkerVCL,
  GMClasses, GMMapVCL, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, GMPolyline,
  GMPolygonVCL, GMDirection, GMDirectionVCL;

type
  Tf_bengkel = class(TForm)
    Label1: TLabel;
    GMMap1: TGMMap;
    GMMarker1: TGMMarker;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Fasilitas: TTabSheet;
    Perizinan: TTabSheet;
    a1: TLabeledEdit;
    a2: TLabeledEdit;
    a3: TLabeledEdit;
    a5: TLabeledEdit;
    a14: TLabeledEdit;
    a12: TLabeledEdit;
    a13: TLabeledEdit;
    a15: TLabeledEdit;
    a16: TLabeledEdit;
    Lain: TTabSheet;
    TabSheet3: TTabSheet;
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    DBGrid2: TDBGrid;
    Label2: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid3: TDBGrid;
    Label3: TLabel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    GMPolygon1: TGMPolygon;
    Button2: TButton;
    Label4: TLabel;
    ComboBox1: TComboBox;
    GMDirection1: TGMDirection;
    a4: TLabeledEdit;
    a6: TLabeledEdit;
    a7: TLabeledEdit;
    a8: TLabeledEdit;
    a9: TLabeledEdit;
    a10: TLabeledEdit;
    a11: TLabeledEdit;
    Bevel1: TBevel;
    Panel1: TPanel;
    Label5: TLabel;
    DBGrid4: TDBGrid;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    TabSheet2: TTabSheet;
    DBGrid5: TDBGrid;
    Panel2: TPanel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    a17: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DoDemo;
    procedure GMMap1AfterPageLoaded(Sender: TObject; First: Boolean);
    procedure FasilitasShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure PerizinanShow(Sender: TObject);
    procedure GMMap1ZoomChanged(Sender: TObject; NewZoom: Integer);
    procedure TabSheet3Show(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure tampildata;
    procedure LainShow(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TabSheet2Show(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_bengkel: Tf_bengkel;

implementation

{$R *.dfm}

uses UDM, UTambahData, UFasilitas, UIjin, UTebagaKerja, UPeralatan;

procedure Tf_bengkel.tampildata;
begin
  //
    a1.Text:=dm.zbengkel.Fields[1].AsString;
    a2.Text:=dm.zbengkel.Fields[2].AsString;
    a3.Text:=dm.zbengkel.Fields[18].AsString;
    a4.Text:=dm.zbengkel.Fields[4].AsString;
    a5.Text:=dm.zbengkel.Fields[5].AsString;
    a6.Text:=dm.zbengkel.Fields[19].AsString;
    a7.Text:=dm.zbengkel.Fields[20].AsString;
    a8.Text:=dm.zbengkel.Fields[21].AsString;
    a9.Text:=dm.zbengkel.Fields[22].AsString;
    a10.Text:=dm.zbengkel.Fields[10].AsString;
    a11.Text:=dm.zbengkel.Fields[11].AsString;
    a12.Text:=dm.zbengkel.Fields[12].AsString;
    a13.Text:=dm.zbengkel.Fields[13].AsString;
    a14.Text:=dm.zbengkel.Fields[14].AsString;
    a15.Text:=dm.zbengkel.Fields[15].AsString;
    a16.Text:=dm.zbengkel.Fields[16].AsString;
    a17.Text:=dm.zbengkel.Fields[18].AsString;

  with dm.zfas do
  begin
      Close;
      SQL.LoadFromFile('./query/select data fasilitas.sql');
      SQL.Add('where kodebengkel="'+dm.zbengkel.Fields[0].AsString+'"');
      Open();
  end;

  with dm.zij do
  begin
      Close;
      SQL.LoadFromFile('./query/select data perizinan.sql');
      SQL.Add('where kodebengkel="'+dm.zbengkel.Fields[0].AsString+'"');
      Open();
  end;

  with dm.ztk do
  begin
      Close;
      SQL.LoadFromFile('./query/select data naker.sql');
      SQL.Add('where kodebengkel="'+dm.zbengkel.Fields[0].AsString+'"');
      Open();
  end;

  with dm.zp do
  begin
      Close;
      SQL.LoadFromFile('./query/select data peralatan.sql');
      SQL.Add('where kodebengkel="'+dm.zbengkel.Fields[0].AsString+'"');
      Open();
  end;
end;

procedure Tf_bengkel.DoDemo;
var
  i: Integer;
  s: string;
//  LL: TLatLng;
begin
  s := '';
  for i := 0 to GMPolygon1[0].CountLinePoints - 1 do
    if s = '' then s := GMPolygon1[0][i].ToStr(GMMap1.Precision)
    else s := s + ' - ' + GMPolygon1[0][i].ToStr(GMMap1.Precision);

end;

procedure Tf_bengkel.BitBtn10Click(Sender: TObject);
begin
Application.CreateForm(Tf_naker, f_naker);
with f_naker do
  begin
    panggil:='tambah';
    kodebengkel:=dm.zbengkel.Fields[0].AsString;
    Label1.Caption:='Tambah Data Tenaga Kerja';
    Label2.Caption:='Pada bengkel "'+dm.zbengkel.Fields[1].AsString+'"';
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn11Click(Sender: TObject);
begin
Application.CreateForm(Tf_naker, f_naker);
with f_naker do
  begin
    panggil:='ubah';
    Label1.Caption:='Ubah Data Tenaga Kerja';
    Label2.Caption:='Pada bengkel "'+dm.zbengkel.Fields[1].AsString+'"';
    id          :=dm.ztk.Fields[0].AsString;
    kodebengkel :=dm.ztk.Fields[1].AsString;
    a1.Text     :=dm.ztk.Fields[2].AsString;
    a2.Text     :=dm.ztk.Fields[3].AsString;
    a3.ItemIndex:=dm.ztk.Fields[4].AsInteger;
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn12Click(Sender: TObject);
begin
if MessageDlg('Hapus data tenaga kerja? '+dm.ztk.Fields[1].AsString+' yang bekerja di bengkel '+dm.zbengkel.Fields[1].AsString,
              mtConfirmation,mbYesNo,0)=mrYes then
              begin
                with dm do
                  begin
                    zq.Close;
                    zq.SQL.Text:='delete from tenagakerja where kodebengkel="'+ztk.Fields[0].AsString+'" '+
                                 'and nama="'+ztk.Fields[1].AsString+'" and alamat="'+ztk.Fields[2].AsString+'", '+
                                 ' pendidikan="'+ztk.Fields[3].AsString+'" ';
                    zq.ExecSQL;

                    ztk.Close;
                    ztk.Open();
                  end;
                  MessageDlg('Data berhasil dihapus!',mtInformation,[mbOK],0);
              end;
end;

procedure Tf_bengkel.BitBtn13Click(Sender: TObject);
begin
Application.CreateForm(Tf_peralatan, f_peralatan);
with f_peralatan do
  begin
    panggil:='tambah';
    kodebengkel:=dm.zbengkel.Fields[0].AsString;
    Label1.Caption:='Tambah Data Peralatan';
    Label2.Caption:='Pada bengkel "'+dm.zbengkel.Fields[1].AsString+'"';
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn14Click(Sender: TObject);
begin
Application.CreateForm(Tf_peralatan, f_peralatan);
with f_peralatan do
  begin
    panggil:='ubah';
    Label1.Caption:='Ubah Data Peralatan';
    Label2.Caption:='Pada bengkel "'+dm.zbengkel.Fields[1].AsString+'"';
    id          :=dm.zp.Fields[0].AsString;
    kodebengkel :=dm.zp.Fields[1].AsString;
    a1.Text     :=dm.zp.Fields[2].AsString;
    a2.Text     :=dm.zp.Fields[3].AsString;
    a3.ItemIndex:=dm.zp.Fields[4].AsInteger;
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn15Click(Sender: TObject);
begin
if MessageDlg('Hapus data Alat '+dm.zfas.Fields[1].AsString+' milik bengkel '+dm.zbengkel.Fields[1].AsString,
              mtConfirmation,mbYesNo,0)=mrYes then
              begin
                with dm do
                  begin
                    zq.Close;
                    zq.SQL.Text:='delete from peralatan where kodebengkel="'+zp.Fields[0].AsString+'" '+
                                 'and nama="'+zp.Fields[1].AsString+'" and jumlah="'+zp.Fields[2].AsString+'" ';
                    zq.ExecSQL;

                    zp.Close;
                    zp.Open();
                  end;
                  MessageDlg('Data berhasil dihapus!',mtInformation,[mbOK],0);
              end;
end;

procedure Tf_bengkel.BitBtn1Click(Sender: TObject);
begin
Application.CreateForm(Tf_tambahdata, f_tambahdata);
with f_tambahdata do
  begin
    panggil:='tambah';
    a3.ItemIndex:=0;
    a6.ItemIndex:=0;
    a7.ItemIndex:=0;
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn2Click(Sender: TObject);
begin
Application.CreateForm(Tf_tambahdata, f_tambahdata);
with f_tambahdata do
  begin
    panggil:='ubah';
    kodebengkel :=dm.zbengkel.Fields[0].AsString;
    a1.Text     :=dm.zbengkel.Fields[1].AsString;
    a2.Text     :=dm.zbengkel.Fields[2].AsString;
    if dm.zbengkel.Fields[3].AsInteger=0 then a3.ItemIndex:=0;
    if dm.zbengkel.Fields[3].AsInteger=1 then a3.ItemIndex:=1;
    if dm.zbengkel.Fields[3].AsInteger=2 then a3.ItemIndex:=2;
    if dm.zbengkel.Fields[3].AsInteger=3 then a3.ItemIndex:=3;
    a4.Text     :=dm.zbengkel.Fields[4].AsString;
    a5.Text     :=dm.zbengkel.Fields[5].AsString;
    if dm.zbengkel.Fields[6].AsInteger=0 then a6.ItemIndex:=0;
    if dm.zbengkel.Fields[6].AsInteger=1 then a6.ItemIndex:=1;
    if dm.zbengkel.Fields[7].AsInteger=1 then a7.ItemIndex:=0;
    if dm.zbengkel.Fields[7].AsInteger=2 then a7.ItemIndex:=1;
    if dm.zbengkel.Fields[7].AsInteger=3 then a7.ItemIndex:=2;
    if dm.zbengkel.Fields[7].AsInteger=4 then a7.ItemIndex:=3;
    if dm.zbengkel.Fields[7].AsInteger=5 then a7.ItemIndex:=4;
    //a8.Text     :=dm.zbengkel.Fields[8].AsString;
    if copy(dm.zbengkel.Fields[8].AsString,1,1)='1' then a8.State[0]:=cbChecked else a8.State[0]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[8].AsString,2,1)='1' then a8.State[1]:=cbChecked else a8.State[1]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[8].AsString,3,1)='1' then a8.State[2]:=cbChecked else a8.State[2]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[8].AsString,4,1)='1' then a8.State[3]:=cbChecked else a8.State[3]:=cbUnchecked;
    //a9.Text     :=dm.zbengkel.Fields[9].AsString;
    if copy(dm.zbengkel.Fields[9].AsString,1,1)='1' then a9.State[0]:=cbChecked else a9.State[0]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[9].AsString,2,1)='1' then a9.State[1]:=cbChecked else a9.State[1]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[9].AsString,3,1)='1' then a9.State[2]:=cbChecked else a9.State[2]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[9].AsString,4,1)='1' then a9.State[3]:=cbChecked else a9.State[3]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[9].AsString,5,1)='1' then a9.State[4]:=cbChecked else a9.State[4]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[9].AsString,6,1)='1' then a9.State[5]:=cbChecked else a9.State[5]:=cbUnchecked;
    if copy(dm.zbengkel.Fields[9].AsString,7,1)='1' then a9.State[6]:=cbChecked else a9.State[6]:=cbUnchecked;
    a10.Time    :=dm.zbengkel.Fields[10].AsDateTime;
    a11.Time    :=dm.zbengkel.Fields[11].AsDateTime;
    a12.Text    :=dm.zbengkel.Fields[12].AsString;
    a13.Text    :=dm.zbengkel.Fields[13].AsString;
    a14.Text    :=dm.zbengkel.Fields[14].AsString;
    a15.Text    :=dm.zbengkel.Fields[15].AsString;
    a16.Text    :=dm.zbengkel.Fields[16].AsString;
    ShowModal;
  end;

end;

procedure Tf_bengkel.BitBtn3Click(Sender: TObject);
begin
if MessageDlg('Hapus data bengkel dengan nama '+dm.zbengkel.Fields[1].AsString,mtConfirmation,mbYesNo,0)=mrYes then
  begin
    dm.zbengkel.Delete;
    MessageDlg('Data berhasil dihapus!',mtInformation,[mbOK],0);
  end;
end;

procedure Tf_bengkel.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(Tf_fasilitas, f_fasilitas);
with f_fasilitas do
  begin
    panggil:='tambah';
    kodebengkel:=dm.zbengkel.Fields[0].AsString;
    Label1.Caption:='Tambah Data Fasilitas';
    Label2.Caption:='Pada bengkel "'+dm.zbengkel.Fields[1].AsString+'"';
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn5Click(Sender: TObject);
begin
Application.CreateForm(Tf_fasilitas, f_fasilitas);
with f_fasilitas do
  begin
    panggil:='ubah';
    Label1.Caption:='Ubah Data Fasilitas';
    Label2.Caption:='Pada bengkel "'+dm.zbengkel.Fields[1].AsString+'"';
    id          :=dm.zfas.Fields[0].AsString;
    kodebengkel :=dm.zfas.Fields[1].AsString;
    a1.Text     :=dm.zfas.Fields[2].AsString;
    a2.Text     :=dm.zfas.Fields[3].AsString;
    a3.ItemIndex:=dm.zfas.Fields[4].AsInteger;
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn6Click(Sender: TObject);
begin
if MessageDlg('Hapus data fasilitas '+dm.zfas.Fields[1].AsString+' milik bengkel '+dm.zbengkel.Fields[1].AsString,
              mtConfirmation,mbYesNo,0)=mrYes then
              begin
                with dm do
                  begin
                    zq.Close;
                    zq.SQL.Text:='delete from fasilitas where '+
                                 'kodebengkel="'+zfas.Fields[0].AsString+'" '+
                                 'and kodebengkel="'+zfas.Fields[1].AsString+'" '+
                                 'and fasilitas="'+zfas.Fields[2].AsString+'" '+
                                 'and jumlah="'+zfas.Fields[3].AsString+'" ';
                    zq.ExecSQL;

                    zfas.Close;
                    zfas.Open();
                  end;
                  MessageDlg('Data berhasil dihapus!',mtInformation,[mbOK],0);
              end;

end;

procedure Tf_bengkel.BitBtn7Click(Sender: TObject);
begin
Application.CreateForm(Tf_ijin, f_ijin);
with f_ijin do
  begin
    panggil:='tambah';
    kodebengkel:=dm.zbengkel.Fields[0].AsString;
    Label1.Caption:='Tambah Data Perijinan';
    Label2.Caption:='Pada bengkel "'+dm.zbengkel.Fields[1].AsString+'"';
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn8Click(Sender: TObject);
begin
Application.CreateForm(Tf_ijin, f_ijin);
with f_ijin do
  begin
    panggil:='ubah';
    Label1.Caption:='Ubah Data ijin';
    Label2.Caption:='Pada bengkel "'+dm.zbengkel.Fields[1].AsString+'"';
    id          :=dm.zij.Fields[0].AsString;
    kodebengkel :=dm.zij.Fields[1].AsString;
    a1.ItemIndex:=dm.zij.Fields[2].AsInteger;
    a1a.Text    :=dm.zij.Fields[5].AsString;
    a2.Text     :=dm.zij.Fields[3].AsString;
    a3.Text     :=FormatDateTime('dd-mm-yyyy',dm.zij.Fields[4].AsDateTime);
    ShowModal;
  end;
end;

procedure Tf_bengkel.BitBtn9Click(Sender: TObject);
begin
if MessageDlg('Hapus data perijinan '+dm.zij.Fields[1].AsString+' milik bengkel '+dm.zbengkel.Fields[1].AsString,
              mtConfirmation,mbYesNo,0)=mrYes then
              begin
                with dm do
                  begin
                    zq.Close;
                    zq.SQL.Text:='delete from perizinan where id="'+zij.Fields[0].AsString+'" '+
                                 'and kodebengkel="'+zij.Fields[1].AsString+'" '+
                                 'and NAMAIZIN="'+zij.Fields[2].AsString+'" '+
                                 'and NOMOR="'+zij.Fields[3].AsString+'" '+
                            //     'and TANGGAL="'+zij.Fields[3].AsString+'" '+
                                 'and IZIN="'+zij.Fields[5].AsString+'" ';
                               //  ShowMessage(ZQ.SQL.Text);
                    zq.ExecSQL;

                    zij.Close;
                    zij.Open();
                  end;
                  MessageDlg('Data berhasil dihapus!',mtInformation,[mbOK],0);
              end;

end;

procedure Tf_bengkel.Button1Click(Sender: TObject);
//var LL: TLatLng;
begin
GMDirection1.ClearWaypoint;
    GMDirection1.DirectionsRequest.Origin.LatLng.Lat:=0;
    GMDirection1.DirectionsRequest.Origin.LatLng.Lng:=0;
    GMDirection1.DirectionsRequest.Destination.LatLng.Lat:=0;
    GMDirection1.DirectionsRequest.Destination.LatLng.Lng:=0;
    GMDirection1.Execute;
GMMarker1.Clear;
GMMap1.SetCenter(dm.zbengkel.Fields[15].AsFloat,dm.zbengkel.Fields[16].AsFloat);
GMMap1.RequiredProp.Zoom:=15;
GMMarker1.Add(dm.zbengkel.Fields[15].AsFloat,dm.zbengkel.Fields[16].AsFloat,dm.zbengkel.Fields[1].AsString);
end;

procedure Tf_bengkel.Button2Click(Sender: TObject);
begin
GMMarker1.Clear;
if ComboBox1.ItemIndex=0 then
    begin
    //BUNDERAN TAMANSARI -7.324632, 110.504896
    GMDirection1.DirectionsRequest.Origin.LatLng.Lat:=-7.324632;
    GMDirection1.DirectionsRequest.Origin.LatLng.Lng:=110.504896;
    GMDirection1.DirectionsRequest.Destination.LatLng.Lat:=dm.zbengkel.Fields[15].AsFloat;
    GMDirection1.DirectionsRequest.Destination.LatLng.Lng:=dm.zbengkel.Fields[16].AsFloat;
    GMDirection1.Execute;
    end
ELSE
    begin
    //DISHUBKOMBUDPAR SALATIGA -7.345579, 110.506698
    GMDirection1.DirectionsRequest.Origin.LatLng.Lat:=-7.345579;
    GMDirection1.DirectionsRequest.Origin.LatLng.LNG:=110.506698;
    GMDirection1.DirectionsRequest.Destination.LatLng.Lat:=dm.zbengkel.Fields[15].AsFloat;
    GMDirection1.DirectionsRequest.Destination.LatLng.lng:=dm.zbengkel.Fields[16].AsFloat;
    GMDirection1.Execute;
    end;
end;

procedure Tf_bengkel.DBGrid1CellClick(Column: TColumn);
begin
   tampildata;
end;

procedure Tf_bengkel.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if dm.zbengkel.RecNo mod 2 = 1 then
   DBGrid1.Canvas.Brush.Color:=clBlue
   else
   DBGrid1.Canvas.Brush.Color:=clYellow
end;

procedure Tf_bengkel.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=VK_UP) or (key=VK_DOWN) then
  begin
    tampildata;
  end;
end;

procedure Tf_bengkel.FasilitasShow(Sender: TObject);
begin
with dm.zfas do
  begin
      Close;
      SQL.LoadFromFile('./query/select data fasilitas.sql');
      SQL.Add('where kodebengkel="'+dm.zbengkel.Fields[0].AsString+'"');
      Open();
  end;
end;

procedure Tf_bengkel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Release;
end;

procedure Tf_bengkel.FormCreate(Sender: TObject);
begin

//if dm.fdc.Connected=true then ShowMessage('ok');

  begin
    with dm.zbengkel do
        begin
          Close;
          SQL.LoadFromFile('./query/select data bengkel.sql');
//          Memo1.Text:=dm.zbengkel.SQL.Text;
          Open;
        end;
        Label8.Caption:=IntToStr(dm.zbengkel.RecordCount);
  end;
    tampildata;

    PageControl1.ActivePageIndex:=0;
end;

procedure Tf_bengkel.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key=#27 then Close;
end;

procedure Tf_bengkel.GMMap1AfterPageLoaded(Sender: TObject; First: Boolean);
begin
  if First then
  begin
    GMMap1.DoMap;
    //DoDemo;
  end;
end;

procedure Tf_bengkel.GMMap1ZoomChanged(Sender: TObject; NewZoom: Integer);
const
  Txt = 'Map OnZoomChange fired: %s';
begin
  //sbStatus.Panels[0].Text := Format(Txt, [IntToStr(GMMap1.RequiredProp.Zoom)]);
  //mEvents.Lines.Add(Format(Txt, [IntToStr(GMMap1.RequiredProp.Zoom)]));
end;

procedure Tf_bengkel.LainShow(Sender: TObject);
begin
with dm.ztk do
  begin
      Close;
      SQL.LoadFromFile('./query/select data naker.sql');
      SQL.Add('where kodebengkel="'+dm.zbengkel.Fields[0].AsString+'"');
      Open();
  end;
end;

procedure Tf_bengkel.PerizinanShow(Sender: TObject);
begin
with dm.zij do
  begin
      Close;
      SQL.LoadFromFile('./query/select data perizinan.sql');
      SQL.Add('where kodebengkel="'+dm.zbengkel.Fields[0].AsString+'"');
      Open();
  end;
end;

procedure Tf_bengkel.TabSheet2Show(Sender: TObject);
begin
with dm.zp do
  begin
      Close;
      SQL.LoadFromFile('./query/select data peralatan.sql');
      SQL.Add('where kodebengkel="'+dm.zbengkel.Fields[0].AsString+'"');
      Open();
  end;
end;

procedure Tf_bengkel.TabSheet3Show(Sender: TObject);
begin
try
  begin
    GMMap1.SetCenter(-7.3262536,110.4970855);
    GMMap1.Active:=true;
  end;
except
  MessageDlg('Gagal terhubung ke internet!',mtInformation,[mbOK],0);
end;

end;

end.
