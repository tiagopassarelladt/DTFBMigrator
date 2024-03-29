unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DTFBMigrator, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    DTFBMigrator1: TDTFBMigrator;
    Memo1: TMemo;
    ProgressBar1: TProgressBar;
    Button2: TButton;
    cboFirebirdAtual: TComboBox;
    cboFirebirdMibrar: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DTFBMigrator1Migrate(Msg: string);
    procedure Button2Click(Sender: TObject);
  private
    procedure ConfiguraComponente;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
       ConfiguraComponente;

       if not DirectoryExists( DTFBMigrator1.CaminhoArquivosMigracao + 'migracao\' ) then
               DTFBMigrator1.DownloadFiles;

       DTFBMigrator1.Migrar;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    ConfiguraComponente;

    DTFBMigrator1.DownloadFiles;
end;

procedure TForm1.ConfiguraComponente;
begin
      case cboFirebirdAtual.ItemIndex of
      0: DTFBMigrator1.vFirebirdAtual := vFB21;
      1: DTFBMigrator1.vFirebirdAtual := vFV25;
      2: DTFBMigrator1.vFirebirdAtual := vFB30;
      3: DTFBMigrator1.vFirebirdAtual := vFB40;
      end;

      case cboFirebirdMibrar.ItemIndex of
      0: DTFBMigrator1.vFirebirdMigrar := vmFB25;
      1: DTFBMigrator1.vFirebirdMigrar := vmFB30;
      2: DTFBMigrator1.vFirebirdMigrar := vmFB40;
      3: DTFBMigrator1.vFirebirdMigrar := vmFB50;
      end;

      DTFBMigrator1.CaminhoDataBase         := Edit1.Text;
      DTFBMigrator1.CaminhoArquivosMigracao := 'C:\temp\';

end;

procedure TForm1.DTFBMigrator1Migrate(Msg: string);
begin
       Memo1.Lines.Add( msg );
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
       Memo1.Lines.Clear;
end;

end.
