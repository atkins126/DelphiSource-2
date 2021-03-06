program Project_ObjectAttributes;

{$APPTYPE CONSOLE}

{$R *.res}
{*------------------------------------------------------------------------------
  1、单元
    (1)方便维护
    (2)对代码分类整理
  2、属性
    (1)访问可见性(访问权限修饰符)
        a)private：私有
        b)public：公共
        c)Protected：受保护的，如果某属性或方法被修饰，则只能在其子类中访问
        d)Published
-------------------------------------------------------------------------------}
uses
  System.SysUtils,
  Unit_Tool in 'Unit\Unit_Tool.pas',
  Unit_Attribution in 'Unit\Unit_Attribution.pas';

var Person:TPerson;
begin
  Writeln(Name);
  //Writeln(Age);不可使用
  Person:=TPerson.Create;
  //Writeln(Person.FName);私有属性不可用

  Person.Name:='bbb';//读写属性的读
  Writeln(Person.Name);//读写属性的写

  //Writeln(Person.W_Age);只写属性不可读
  Person.W_Age:=18;//只写属性的写

  Writeln(Person.R_Age);//只读属性的读
  //Person.R_Age:=18;//只读属性不可写
  Readln;
end.
