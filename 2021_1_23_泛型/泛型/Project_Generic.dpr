program Project_Generic;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{*------------------------------------------------------------------------------
  泛型
    1、避免在程序中数据类型强制转换
    2、在容器中使用数据类型更灵活
    3、使用场景
        泛型容器
        反射
-------------------------------------------------------------------------------}
type  TstringArr=array of string;
      TIntArr=array of Integer;
      TArrays<T>=array of T;//泛型定义

var StringArr:TstringArr;
    IntArr:TIntArr;
    Arrays:TArray<string>;//泛型的使用

begin
  StringArr:=['aa','bb'];
  IntArr:=[1,2,3];
end.
