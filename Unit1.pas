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

procedure TForm1.Button1Click(Sender: TObject); //�������� ���������� ����������
begin
  ShowMessage(FloatToStr(lol(10.5)));
end;

procedure TForm1.Button2Click(Sender: TObject); //���������� ����������� ����������
var
  hndDLLHandle: THandle;
  lol: Tlol; //�������, ��������� � ����������
begin
// ��������� dll �����������
  hndDLLHandle := loadLibrary ('Project2.dll');
  if hndDLLHandle <> 0 then
  begin
// �������� ����� �������
  @lol:=getProcAddress(hndDLLHandle,'lol');
// ���� ����� ������� ������
  if addr (lol) <> nil then
  begin
  showMessage (floatToStr(lol(10.5)));
  end
  else
  showMessage ('������� �� ����������');
  end
  else
  showMessage ('DLL �� �������');
end;

end.
