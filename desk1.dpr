program desk1;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {f_utama},
  UDM in 'UDM.pas' {dm: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UBengkel in 'UBengkel.pas' {f_bengkel},
  UTambahData in 'UTambahData.pas' {f_tambahdata},
  UFasilitas in 'UFasilitas.pas' {f_fasilitas},
  UAbout in 'UAbout.pas' {f_about},
  UIjin in 'UIjin.pas' {f_ijin},
  UCetak in 'UCetak.pas' {f_cetak},
  UTebagaKerja in 'UTebagaKerja.pas' {f_naker},
  UPeralatan in 'UPeralatan.pas' {f_peralatan};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Title := 'Aplikasi Pendataan Lokasi Bengkel';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tf_utama, f_utama);
  Application.CreateForm(Tf_peralatan, f_peralatan);
  Application.Run;
end.
