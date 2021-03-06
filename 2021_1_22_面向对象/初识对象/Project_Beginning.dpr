program Project_Beginning;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;
{
  1、怎样创建一个类
      类的成员组成
        属性：成员变量、字段
        功能：方法、函数、过程、例程
  2、如何创建一个类的对象
  3、对象的生命周期：创建->消亡
        1、对象的创建
            (1)父类Create
            (2)构造方法constructor
                a)在内存中申请一个空间，从而实现对象的创建
                b)初始化类成员
        2、对象的销毁
            (1)free
            (2)destroy
            (3)freeAndNil             nil等价于C语言的NULL指针
        3、self:表示本类对象
            (1)解决命名冲突
}

//类定义实例
type TUser=class(TObject)            //类TUser，括号可不写，默认继承父类TObject
        //属性
        FName:string;
        //方法
        constructor MyCreate();overload;//创建，无参数，一般要写，以防万一
        constructor MyCreate(FName:string);overload;//创建，有参数，重载
        procedure SetName(FName:string);//自建改名功能
        destructor Destroy(); override;//销毁，覆盖
     end;
//自建创建函数
constructor TUser.MyCreate();
begin

end;
constructor TUser.MyCreate(FName:string);
begin
  Self.FName:=FName;
end;
//自建方法
procedure TUser.SetName(FName:string);
begin
  Self.FName:=FName;
end;
destructor TUser.Destroy;
begin
  //调用父类的销毁方法
  Writeln('自建销毁函数');
  inherited;
end;
var User:TUser;
begin
  User:=TUser.Create;//创建对象方法1，申请空间，创建一个类的对象
  User.FName:='aaa';//设置属性方法1，直接赋值
  User.Free();//销毁对象方法1，仅释放空间

  User:=TUser.MyCreate('bbb');//创建对象方法2，constructor，自建函数，可传参
  User.SetName('ccc');//设置属性方法2，通过类的方法实现
  FreeAndNil(User);//销毁对象方法2，释放空间并将User指向nil

  User:=TUser.MyCreate('ddd');
  User.Destroy;//销毁对象方法3，自建销毁函数，但是方法1,2都有调用，不建议直接使用此方法
  Readln;
end.
