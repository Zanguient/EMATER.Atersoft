inherited FrmBaseTabela: TFrmBaseTabela
  Left = 396
  Top = 179
  BorderStyle = bsDialog
  Caption = 'Tabela'
  ClientHeight = 383
  ClientWidth = 570
  Constraints.MinHeight = 355
  Constraints.MinWidth = 418
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 576
  ExplicitHeight = 412
  DesignSize = (
    570
    383)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnSelecionar: TcxButton
    Left = 408
    Top = 351
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'S&elecionar'
    OptionsImage.NumGlyphs = 2
    TabOrder = 6
    Visible = False
    OnClick = BtnSelecionarClick
  end
  object PgCntrlMain: TcxPageControl
    Left = 8
    Top = 8
    Width = 555
    Height = 337
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Properties.ActivePage = TbShtPrincipal
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 335
    ClientRectLeft = 2
    ClientRectRight = 553
    ClientRectTop = 28
    object TbShtPrincipal: TcxTabSheet
      Caption = 'Principal'
      ImageIndex = 0
    end
  end
  object BtnNovo: TcxButton
    Left = 8
    Top = 351
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Novo'
    OptionsImage.NumGlyphs = 2
    TabOrder = 1
    OnClick = BtnNovoClick
  end
  object BtnSalvar: TcxButton
    Left = 88
    Top = 351
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Salvar'
    OptionsImage.NumGlyphs = 2
    TabOrder = 2
    OnClick = BtnSalvarClick
  end
  object BtnCancelar: TcxButton
    Left = 168
    Top = 351
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Cancelar'
    OptionsImage.NumGlyphs = 2
    TabOrder = 3
    OnClick = BtnCancelarClick
  end
  object BtnExcluir: TcxButton
    Left = 248
    Top = 351
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = 'E&xcluir'
    OptionsImage.NumGlyphs = 2
    TabOrder = 4
    OnClick = BtnExcluirClick
  end
  object BtnFechar: TcxButton
    Tag = 2
    Left = 488
    Top = 351
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.NumGlyphs = 2
    TabOrder = 7
  end
  object BtnRelatorio: TcxButton
    Left = 328
    Top = 351
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = '&Imprimir'
    OptionsImage.NumGlyphs = 2
    TabOrder = 5
    Visible = False
  end
  object DtSrcPrincipal: TDataSource
    DataSet = QryPrincipal
    OnStateChange = DtSrcPrincipalStateChange
    Left = 280
    Top = 88
  end
  object QryPrincipal: TFDQuery
    BeforePost = QryPrincipalBeforePost
    OnNewRecord = QryPrincipalNewRecord
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtPrincipal
    Left = 216
    Top = 88
  end
  object UpdtPrincipal: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 248
    Top = 88
  end
end
