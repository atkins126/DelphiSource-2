library TestDLL;

uses
  System.SysUtils,
  System.Classes;

{$R *.res}
//stdcall参数的传递顺序
function Add(Num1,Num2:Integer):Integer;stdcall;
begin
  Result:=Num1+Num2;
  Exit;
end;
//导出函数列表
exports
  Add;
begin
end.
