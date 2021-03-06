unit Unit_Attribution;

interface
type TPerson=class
        private
          FName:string;
          FAge:Integer;
          function GetAge(): Integer;
          procedure SetAge(FAge:Integer);
        public
          property Name:string read FName write FName;//读写属性，直接读写
          property R_Age:Integer read GetAge;//只读属性，通过函数读取
          property W_Age:Integer write SetAge;//只写属性，通过函数写入
     end;
implementation

{ TPerson }

function TPerson.GetAge: Integer;
begin
  Result:=Self.FAge;
end;
procedure TPerson.SetAge(FAge: Integer);
begin
  Self.FAge:=FAge;
end;

end.
