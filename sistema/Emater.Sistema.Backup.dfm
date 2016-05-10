inherited FrmSistemaBackup: TFrmSistemaBackup
  Left = 398
  Top = 181
  BorderStyle = bsDialog
  Caption = 'Backup da Base de Dados'
  ClientHeight = 459
  ClientWidth = 633
  Position = poScreenCenter
  OnClose = FormClose
  ExplicitLeft = 398
  ExplicitTop = 181
  ExplicitWidth = 649
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 187
    Height = 13
    Caption = 'Local de destino no arquivo de backup:'
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 96
    Width = 107
    Height = 13
    Caption = 'Detalhes do processo:'
    Transparent = True
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
  object EdtDestino: TcxTextEdit
    Left = 8
    Top = 32
    Properties.CharCase = ecLowerCase
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 617
  end
  object BtnAlterar: TcxButton
    Left = 8
    Top = 56
    Width = 113
    Height = 25
    Caption = 'Alterar destino'
    OptionsImage.ImageIndex = 22
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 1
    OnClick = BtnAlterarClick
  end
  object BtnIniciar: TcxButton
    Left = 128
    Top = 56
    Width = 113
    Height = 25
    Caption = 'Iniciar backup'
    OptionsImage.ImageIndex = 94
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 2
    OnClick = BtnIniciarClick
  end
  object BtnDetalhes: TcxButton
    Left = 248
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
  object BackupService: TFDIBBackup
    OnError = BackupServiceError
    BeforeExecute = BackupServiceBeforeExecute
    AfterExecute = BackupServiceAfterExecute
    DriverLink = DtmConexaoModulo.FDPhysFBDriverLink
    OnProgress = BackupServiceProgress
    Verbose = True
    Left = 320
    Top = 136
  end
end
