program Project_Method;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_Method in 'unit\Unit_Method.pas';

{*------------------------------------------------------------------------------
  1、种类
      构造方法
      析构方法
      静态方法：类中的默认方法
          关键字：无
          调用规则：类的对象调用
      虚拟方法
          关键字：vitual
          调用规则：如果子类（派生类）要覆盖的父类（基类）的方法，父类方法必须是虚拟方法或动态方法
      动态方法
          关键字：dynamic
          调用规则：和虚拟方法一致，正常情况虚方法速度快，占用空间大；动态方法速度慢，占用空间小；较少用
      类方法
          关键字：class
          调用规则：直接使用类名调用，也可以通过对象调用
      抽象方法
          关键字：abstract
          调用规则：必须是虚拟（动态）方法，一般写在父类中，只有声明没有实现；子类来实现功能
      消息方法
-------------------------------------------------------------------------------}
var Person:TPerson;
var User:TUser;
begin
  TPerson.Class_Method;//类直接调用类方法，无需调用构造方法

  Person:=TPerson.Create;
  User:=TUser.Create;

  Person.Static_Method;//静态方法调用
  User.Virtual_Method;//虚拟方法调用
  Person.Class_Method;// 对象调用方法
  Person.Class_Method;// 对象调用方法，调用前必须调用构造方法

  Person.Free;
  User.Free;
  Readln;
end.
