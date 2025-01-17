unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait, FireDAC.Comp.UI,
  Vcl.ImgList, Vcl.Controls, frxClass, frxDBSet;

type
  Tdm = class(TDataModule)
    fdc: TFDConnection;
    dbengkel: TDataSource;
    wait: TFDGUIxWaitCursor;
    il: TImageList;
    zq: TFDQuery;
    dfas: TDataSource;
    zfas: TFDQuery;
    dij: TDataSource;
    zij: TFDQuery;
    dct: TDataSource;
    zct: TFDQuery;
    zbengkel: TFDQuery;
    frxct: TfrxDBDataset;
    dtk: TDataSource;
    ztk: TFDQuery;
    zcfas: TFDQuery;
    zcij: TFDQuery;
    zctk: TFDQuery;
    frfas: TfrxDBDataset;
    frij: TfrxDBDataset;
    frtk: TfrxDBDataset;
    dp: TDataSource;
    zp: TFDQuery;
    zcp: TFDQuery;
    frp: TfrxDBDataset;
    dcfas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
