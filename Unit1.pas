unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls,
  MSHTML, ActiveX, SHDocVw, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    WebBrowser1: TWebBrowser;
    Panel1: TPanel;
    Button2: TButton;
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  FilePath: WideString;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  WebBrowser1.Navigate('https://google.com');
  FilePath := ExtractFilePath(ParamStr(0)) + 'savedpage.mht'; // Путь для сохранения MHT файла
  Label1.Caption:='FilePath: '+FilePath;
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
end;


procedure TForm1.Button1Click(Sender: TObject);
var
  Dispatch: IDispatch;
  OleCommand: IOleCommandTarget;
  CommandType, CommandOption,
  vaIn, vaOut: OleVariant;

begin
  Dispatch := (WebBrowser1.Document as IHTMLDocument2) as IDispatch;

  if Succeeded(Dispatch.QueryInterface(IOleCommandTarget, OleCommand)) then
  begin
    case ComboBox1.ItemIndex of
      0:  CommandType := OLECMDID_SAVEAS;
      1:  CommandType := OLECMDID_SAVE;
    end;

    case ComboBox2.ItemIndex of
      0:  CommandOption := OLECMDEXECOPT_DONTPROMPTUSER;
      1:  CommandOption := OLECMDEXECOPT_PROMPTUSER;
      2:  CommandOption := OLECMDEXECOPT_DODEFAULT;
    end;

    vaIn := FilePath;
    vaOut := OleVariant(True); // Передаем True для перезаписи файла, если он уже существует

    OleCommand.Exec(nil, CommandType, CommandOption, vaIn, vaOut);
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Halt
end;

end.

