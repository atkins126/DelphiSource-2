unit Unit_Beginning;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ButtonMsg: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ButtonMsgClick(Sender: TObject);
  private
    { Private declarations }
  public
    //消息编号
    procedure ShowMyMessage(var MSG:TMessage);message WM_USER+1;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonMsgClick(Sender: TObject);
begin
  //发送消息（窗体句柄，消息编号，指定消息附加信息，指定消息附加信息）
  SendMessage(Self.Handle,WM_USER+1,101,Integer(PChar('你好')));
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage('HelloWorld');
  Application.MessageBox('helloworld',PWideChar('温馨提示'),2);

end;

//消息处理过程，该过程无需手动（显式）调用
procedure TForm1.ShowMyMessage(var MSG: TMessage);
begin
  ShowMessage(PChar(Msg.LParam));
end;

end.
