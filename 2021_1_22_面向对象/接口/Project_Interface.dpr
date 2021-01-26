program Project_Interface;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_Interface in 'unit\Unit_Interface.pas';

{*------------------------------------------------------------------------------
  接口interface
  定义
    只能有声明，不能有实现，且访问权限只能是public，子类必须实现接口的方法
接口方法与抽象方法的区别
  接口方法必须实现
  抽象方法可以没有实现
-------------------------------------------------------------------------------}

begin

end.
