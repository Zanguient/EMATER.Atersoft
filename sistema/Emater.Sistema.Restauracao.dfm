inherited FrmSistemaRestauracao: TFrmSistemaRestauracao
  Left = 279
  Top = 162
  BorderStyle = bsDialog
  Caption = 'Restaura'#231#227'o da Base de Dados'
  ClientHeight = 457
  ClientWidth = 633
  Position = poScreenCenter
  OnClose = FormClose
  ExplicitLeft = 279
  ExplicitTop = 162
  ExplicitWidth = 649
  ExplicitHeight = 496
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 267
    Height = 13
    Caption = 'Arquivo de backup para restaura'#231#227'o da base de dados:'
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 107
    Height = 13
    Caption = 'Detalhes do processo:'
  end
  object MmLog: TcxMemo
    Left = 8
    Top = 112
    TabStop = False
    ParentFont = False
    Properties.ReadOnly = True
    Properties.ScrollBars = ssBoth
    Properties.WordWrap = False
    TabOrder = 5
    Height = 337
    Width = 617
  end
  object EdtOrigem: TcxTextEdit
    Left = 8
    Top = 32
    Properties.CharCase = ecLowerCase
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 617
  end
  object BtnAbrir: TcxButton
    Left = 8
    Top = 56
    Width = 113
    Height = 25
    Caption = 'Abrir arquivo'
    OptionsImage.ImageIndex = 22
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 1
    OnClick = BtnAbrirClick
  end
  object BtnIniciar: TcxButton
    Left = 128
    Top = 56
    Width = 121
    Height = 25
    Caption = 'Iniciar restaura'#231#227'o'
    OptionsImage.ImageIndex = 102
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 2
    OnClick = BtnIniciarClick
  end
  object BtnDetalhes: TcxButton
    Left = 256
    Top = 56
    Width = 113
    Height = 25
    Caption = 'Ocultar detalhes'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 3
    OnClick = BtnDetalhesClick
  end
  object BtnFechar: TcxButton
    Left = 544
    Top = 56
    Width = 81
    Height = 25
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.ImageIndex = 87
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 4
  end
  object RestoreService: TpFIBRestoreService
    ServerName = 'localhost'
    LibraryName = 'fbclient.dll'
    Protocol = TCP
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    Verbose = True
    PageSize = 0
    PageBuffers = 0
    Options = [Replace, CreateNewDB]
    Left = 280
    Top = 136
  end
  object OpenDialogBackup: TOpenDialog
    DefaultExt = 'fbk'
    Filter = 'Arquivos de backup (*.fbk)|*.fbk|Todos arquivos (*.*)|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Selecionar arquivo de backup para restaura'#231#227'o'
    Left = 312
    Top = 136
  end
end
