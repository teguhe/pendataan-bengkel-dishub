unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.Ribbon, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.Menus, inifiles, Vcl.PlatformDefaultStyleActnCtrls,
  System.Actions, Vcl.ActnList, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.RibbonActnMenus, Vcl.ComCtrls, Vcl.Buttons;

type
  Tf_utama = class(TForm)
    Panel1: TPanel;
    l1: TLabeledEdit;
    l2: TLabeledEdit;
    b1: TButton;
    ActionManager1: TActionManager;
    StatusBar1: TStatusBar;
    DataBengkel: TAction;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    MainMenu1: TMainMenu;
    Application1: TMenuItem;
    AboutApp1: TMenuItem;
    Exit1: TMenuItem;
    Image1: TImage;
    SpeedButton6: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DataBengkelExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_utama: Tf_utama;

implementation

{$R *.dfm}

uses UDM, UBengkel, UAbout, UCetak;

procedure Tf_utama.DataBengkelExecute(Sender: TObject);
begin
Application.CreateForm(Tf_bengkel, f_bengkel);
f_bengkel.Show;
end;

procedure Tf_utama.FormCreate(Sender: TObject);
var
 myini : TIniFile;
 db_name,server_name,user_name,passwort,port,nama_app,nama_kantor,alamat,telepon :string;
begin
 myini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'TConfig.ini');

 server_name  := myini.ReadString('koneksi', 'nama', '');
 db_name      := myini.ReadString('koneksi', 'Database', '');
 user_name    := myini.ReadString('koneksi', 'user', '');
 passwort     := myini.ReadString('koneksi', 'Password', '');
 port         := myini.ReadString('koneksi', 'port', '');

 with dm.fdc.Params do begin
  Clear;
  Add('DriverID=MySQL');
  Add('Server='+server_name);
  Add('Database='+db_name);
  Add('User_Name='+user_name);
  Add('Password='+passwort);
  Add('Port='+port);
end;

 nama_app      := myini.ReadString('profile', 'nama_app', '');
 nama_kantor   := myini.ReadString('profile', 'nama_kantor', '');
 alamat        := myini.ReadString('profile', 'alamat', '');
 telepon       := myini.ReadString('profile', 'telepon', '');

 Label1.Caption:=nama_app;
 Label2.Caption:=nama_KANTOR;

 myini.Free;

 try
 dm.fdc.Connected:=true;
 except
    begin
        ShowMessage('Koneksi Gagal');
        Exit;
    end;

 end;

WindowState:=wsMaximized;
Position:=poScreenCenter;
Image1.Align:=alClient;
Image1.Picture.LoadFromFile('./images/wallpaper.bmp');
end;

procedure Tf_utama.SpeedButton1Click(Sender: TObject);
begin
if MessageDlg('Tutup Aplikasi?',mtConfirmation,mbYesNo,0)=mrYes then
Application.Terminate;
end;

procedure Tf_utama.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(Tf_about, f_about);
f_about.Show;
end;

procedure Tf_utama.SpeedButton4Click(Sender: TObject);
begin
      Application.CreateForm(Tf_bengkel, f_bengkel);
      //          ShowMessage('s');
      f_bengkel.Show;
end;

procedure Tf_utama.SpeedButton6Click(Sender: TObject);
begin
Application.CreateForm(Tf_cetak, f_cetak);
      f_cetak.Show;
end;

end.
