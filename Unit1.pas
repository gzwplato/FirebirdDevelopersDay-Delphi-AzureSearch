unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IPPeerClient, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt,
  System.JSON;

type
  TForm1 = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    Button1: TButton;
    MemoContent: TMemo;
    LinkControlToFieldContent: TLinkControlToField;
    BindingsList1: TBindingsList;
    Label1: TLabel;
    EditParamssearch: TEdit;
    LinkControlToFieldParamssearch: TLinkControlToField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
   jValue: TJSONValue;
begin
  RESTRequest1.Execute;
  jValue:= RESTResponse1.JSONValue;
  MemoContent.Text := jValue.ToString;
end;

end.
