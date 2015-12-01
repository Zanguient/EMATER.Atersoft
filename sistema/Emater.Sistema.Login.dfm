inherited FrmSistemaLogin: TFrmSistemaLogin
  Left = 470
  Top = 181
  BorderStyle = bsDialog
  Caption = 'Login do Usu'#225'rio'
  ClientHeight = 405
  ClientWidth = 323
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  ExplicitLeft = 470
  ExplicitTop = 181
  ExplicitWidth = 339
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 323
    Height = 142
    Align = alTop
    Brush.Color = 4166144
    Pen.Color = 4166144
    ExplicitWidth = 341
  end
  object Shape3: TShape
    Left = 137
    Top = 13
    Width = 48
    Height = 48
    Pen.Color = 2474628
    Pen.Width = 4
  end
  object ImgIcone: TImage
    Left = 145
    Top = 21
    Width = 32
    Height = 32
    AutoSize = True
    Center = True
  end
  object Shape2: TShape
    Left = 0
    Top = 142
    Width = 323
    Height = 6
    Align = alTop
    Brush.Color = 2474628
    Pen.Color = 2474628
    ExplicitTop = 100
    ExplicitWidth = 444
  end
  object PnlLogin: TPanel
    Left = 40
    Top = 176
    Width = 241
    Height = 169
    TabOrder = 3
    object LblTitulo: TLabel
      Left = 8
      Top = 16
      Width = 225
      Height = 16
      Alignment = taCenter
      AutoSize = False
      Caption = 'Login e senha para acesso'
      FocusControl = EdtUserName
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object EdtServerName: TcxTextEdit
      Left = 20
      Top = 39
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 0
      Text = '192.168.255.255'
      TextHint = 'Servidor'
      Visible = False
      Height = 32
      Width = 201
    end
    object EdtDatabase: TcxTextEdit
      Left = 20
      Top = 77
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 1
      TextHint = 'Banco de dados'
      Visible = False
      Height = 32
      Width = 201
    end
    object EdtUserName: TcxTextEdit
      Left = 20
      Top = 39
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGray
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 2
      TextHint = 'Login do usu'#225'rio'
      OnKeyPress = EdtUserNameKeyPress
      Height = 32
      Width = 201
    end
    object EdtPassword: TcxTextEdit
      Left = 20
      Top = 77
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = #8226
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGray
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clWindowText
      Style.IsFontAssigned = True
      TabOrder = 3
      TextHint = 'Senha'
      Height = 32
      Width = 201
    end
    object BtnOK: TcxButton
      Left = 20
      Top = 116
      Width = 201
      Height = 35
      Hint = 'Fazer login'
      Caption = 'Fazer login'
      Default = True
      OptionsImage.NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = BtnOKClick
    end
  end
  object cxLabel1: TcxLabel
    Left = 69
    Top = 65
    Caption = 'SISATER Desktop'
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -24
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.Font.Quality = fqClearType
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = clWhite
    Style.TextStyle = []
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 118
    Top = 95
    Caption = 'EMATER - PAR'#193
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.Font.Quality = fqClearType
    Style.TextColor = clWhite
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 45
    Top = 109
    AutoSize = False
    Caption = 
      'Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do Estado do Par' +
      #225
    ParentColor = False
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.Font.Quality = fqClearType
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.NativeStyle = True
    Style.TextColor = clWhite
    Style.TextStyle = []
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.NativeStyle = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.WordWrap = True
    Transparent = True
    Height = 26
    Width = 233
    AnchorX = 162
    AnchorY = 122
  end
  object BtnCancelar: TcxButton
    Left = 40
    Top = 362
    Width = 113
    Height = 25
    Hint = 'Cancelar login e sair do sistema'
    Cancel = True
    Caption = 'Sair'
    ModalResult = 2
    OptionsImage.NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BtnEncerrar: TcxButton
    Left = 168
    Top = 362
    Width = 113
    Height = 25
    Hint = 'Encerrar aplica'#231#227'o'
    Caption = '&Encerrar'
    Enabled = False
    OptionsImage.NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object BtnMais: TcxButton
    Left = 168
    Top = 362
    Width = 113
    Height = 25
    Hint = 'Configurar par'#226'metros da conex'#227'o com o banco de dados'
    Caption = '&Par'#226'metros'
    OptionsImage.ImageIndex = 3
    OptionsImage.NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = BtnMaisClick
  end
  object dxSkinController: TdxSkinController
    SkinName = 'Office2013White'
    Left = 16
    Top = 24
  end
end
