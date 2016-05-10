inherited FrmSistemaRestauracao: TFrmSistemaRestauracao
  Left = 481
  Top = 153
  BorderStyle = bsDialog
  Caption = 'Restaura'#231#227'o da Base de Dados'
  ClientHeight = 457
  ClientWidth = 633
  Position = poScreenCenter
  OnClose = FormClose
  ExplicitLeft = 481
  ExplicitTop = 153
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
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 128
    Width = 107
    Height = 13
    Caption = 'Detalhes do processo:'
    Transparent = True
  end
  object Label3: TLabel
    Left = 8
    Top = 56
    Width = 177
    Height = 13
    Caption = 'Banco de dados ser'#225' restaurado em:'
    Transparent = True
  end
  object MmLog: TcxMemo
    Left = 8
    Top = 144
    TabStop = False
    ParentFont = False
    Properties.ReadOnly = True
    Properties.ScrollBars = ssBoth
    Properties.WordWrap = False
    TabOrder = 6
    Height = 305
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
    Top = 96
    Width = 121
    Height = 25
    Caption = 'Abrir arquivo'
    OptionsImage.ImageIndex = 22
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 2
    OnClick = BtnAbrirClick
  end
  object BtnIniciar: TcxButton
    Left = 136
    Top = 96
    Width = 121
    Height = 25
    Caption = 'Iniciar restaura'#231#227'o'
    OptionsImage.ImageIndex = 102
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 3
    OnClick = BtnIniciarClick
  end
  object BtnDetalhes: TcxButton
    Left = 264
    Top = 96
    Width = 113
    Height = 25
    Caption = 'Ocultar detalhes'
    OptionsImage.ImageIndex = 9
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 4
    OnClick = BtnDetalhesClick
  end
  object BtnFechar: TcxButton
    Left = 544
    Top = 96
    Width = 81
    Height = 25
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.ImageIndex = 87
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 5
  end
  object EdtDestino: TcxTextEdit
    Left = 8
    Top = 72
    Properties.CharCase = ecLowerCase
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 617
  end
  object OpenDialogBackup: TOpenDialog
    DefaultExt = 'fbk'
    Filter = 'Arquivos de backup (*.fbk)|*.fbk|Todos arquivos (*.*)|*.*'
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Title = 'Selecionar arquivo de backup para restaura'#231#227'o'
    Left = 304
    Top = 168
  end
  object RestoreService: TFDIBRestore
    OnError = RestoreServiceError
    BeforeExecute = RestoreServiceBeforeExecute
    AfterExecute = RestoreServiceAfterExecute
    DriverLink = DtmConexaoModulo.FDPhysFBDriverLink
    OnProgress = RestoreServiceProgress
    Verbose = True
    Options = [roReplace, roCreate]
    Left = 304
    Top = 200
  end
end
