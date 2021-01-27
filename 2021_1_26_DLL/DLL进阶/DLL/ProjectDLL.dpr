library ProjectDLL;

uses
  Winapi.Windows,Vcl.Forms,System.SysUtils,
  System.Classes;

{$R *.res}
function Add(a,b:Integer):Integer;overload;stdcall;
begin
  Result:=a+b;
  Exit;
end;
function Add(a,b:Double):Double;overload;stdcall;
begin
  Result:=a+b;
  Exit;
end;
exports
  Add(a,b:Integer) name 'add1',
  Add(a,b:Double) name 'add2';
procedure ShowMsg(str:string);
begin
  Application.MessageBox(PWideChar(str),PWideChar('温馨提示'),MB_OK);
end;
//退出函数
procedure MyExit(Res:Integer);
begin
  case Res of
    DLL_PROCESS_ATTACH:
      ShowMsg('附加，初始化');
    DLL_PROCESS_DETACH:
      ShowMsg('销毁，脱离进程');
    DLL_THREAD_ATTACH:
      ;
    DLL_THREAD_DETACH:
      ;
  end;
end;
begin
  //如果只是单纯的释放，则不需显式调用。
  DllProc:=@MyExit;
  MyExit(DLL_PROCESS_ATTACH);
end.
