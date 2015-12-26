library Project2;

uses
  SysUtils,
  Classes;

function lol(r: real): real; stdcall; //Описание функции, используемой в программе
begin
  result:=r*2;
end;

{$R *.res}

exports
  lol index 1;
begin

end.
 