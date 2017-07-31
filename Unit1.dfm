object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 416
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 91
    Height = 13
    Caption = 'Conteudo a buscar'
  end
  object Button1: TButton
    Left = 255
    Top = 25
    Width = 75
    Height = 25
    Caption = 'Buscar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object MemoContent: TMemo
    Left = 8
    Top = 56
    Width = 664
    Height = 352
    TabOrder = 1
  end
  object EditParamssearch: TEdit
    Left = 8
    Top = 27
    Width = 241
    Height = 21
    TabOrder = 2
    Text = '*'
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'UTF-8, *;q=0.8'
    AcceptEncoding = 'identity'
    BaseURL = 
      'https://acervoartigos.search.windows.net/indexes/artigos/docs?ap' +
      'i-version=2016-09-01'
    Params = <>
    HandleRedirects = True
    RaiseExceptionOn500 = False
    Left = 392
    Top = 8
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkHTTPHEADER
        name = 'api-key'
        Value = 'D250B1BBBB10696B1E17628C60A96F15'
      end
      item
        name = 'search'
        Value = '*'
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 464
    Top = 8
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json; odata.metadata=minimal'
    Left = 560
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 636
    Top = 5
    object LinkControlToFieldContent: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = RESTResponse1
      FieldName = 'Content'
      Control = MemoContent
      Track = False
    end
    object LinkControlToFieldParamssearch: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = RESTRequest1
      FieldName = 'Params.search'
      Control = EditParamssearch
      Track = True
    end
  end
end
