unit Unit_MainForm;

interface

uses
  System.Generics.Collections,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TMainForm = class(TForm)
    BtnAddData: TButton;
    GroupBox1: TGroupBox;
    lblName: TLabel;
    edtName: TEdit;
    lblAge: TLabel;
    edtAge: TEdit;
    Memo1: TMemo;
    BtnReadData: TButton;
    procedure BtnAddDataClick(Sender: TObject);
    procedure BtnReadDataClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TPerson=record
    Name:string[20];
    Age:Integer;
  end;
var
  MainForm: TMainForm;
const FILE_SOURCE='C:\Users\lenovo\Desktop\Delphi\2021_1_26_文件\文件进阶\Demo1.txt';
implementation

{$R *.dfm}

procedure TMainForm.BtnReadDataClick(Sender: TObject);
var DataFile:file of TPerson;
    Person:TPerson;
begin
  Memo1.Clear;
  try
    AssignFile(DataFile,FILE_SOURCE);
    Reset(DataFile);
    while not Eof(DataFile) do begin
      Read(DataFile,Person);
      Memo1.Lines.Add('姓名：'+Person.Name+'，年龄：'+Person.Age.ToString);
    end;
  finally
    CloseFile(DataFile);
  end;
  end;

procedure TMainForm.BtnAddDataClick(Sender: TObject);
var ReadDataFile,WriteDataFile:file of TPerson;
    Person:TPerson;
    List:TList<TPerson>;
begin
  //构造数据
  Person.Name:=edtName.Text;
  Person.Age:=StrToInt(edtAge.Text);
  //如果文件不存在
  if not FileExists(FILE_SOURCE) then begin
    try
      //关联变量
      AssignFile(WriteDataFile,FILE_SOURCE);
      Rewrite(WriteDataFile);
      //写入数据
      Write(WriteDataFile,Person);
    finally
      CloseFile(WriteDataFile);
    end;
    Exit;
  end;
  //如果文件存在
  try
    List:=TList<TPerson>.Create;
    //读取文件数据
    AssignFile(ReadDataFile,FILE_SOURCE);
    Reset(ReadDataFile);
    List.Add(Person);
    while not Eof(ReadDataFile) do begin
      Read(ReadDataFile,Person);
      List.Add(Person);
    end;
    //写入文件数据
    AssignFile(WriteDataFile,FILE_SOURCE);
    Rewrite(WriteDataFile);
    for Person in List do begin
      Write(WriteDataFile,Person);
    end;
  finally
    CloseFile(ReadDataFile);
    CloseFile(WriteDataFile);
  end;
end;

end.
