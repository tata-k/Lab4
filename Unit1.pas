unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
Tlol=function(r:real): real; stdcall;
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
function lol(r: real): real; stdcall; external 'Project2';
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject); //Вызываем статически библиотеку
begin
  ShowMessage(FloatToStr(lol(10.5)));
end;

procedure TForm1.Button2Click(Sender: TObject); //Подключаем динамически библиотеку
var
  hndDLLHandle: THandle;
  lol: Tlol; //функция, описанная в библиотеке
begin
// загружаем dll динамически
  hndDLLHandle := loadLibrary ('Project2.dll');
  if hndDLLHandle <> 0 then
  begin
// получаем адрес функции
  @lol:=getProcAddress(hndDLLHandle,'lol');
// если адрес функции найден
  if addr (lol) <> nil then
  begin
  showMessage (floatToStr(lol(10.5)));
  end
  else
  showMessage ('Функция не существует');
  end
  else
  showMessage ('DLL не найдена');
end;

end.
