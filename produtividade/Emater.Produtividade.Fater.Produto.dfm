inherited FrmProdutividadeFaterProduto: TFrmProdutividadeFaterProduto
  Left = 433
  Top = 222
  BorderStyle = bsDialog
  Caption = 'Selecionar produto de cria'#231#227'o/cultura/servi'#231'o'
  ClientHeight = 147
  ClientWidth = 583
  Position = poOwnerFormCenter
  ExplicitLeft = 433
  ExplicitTop = 222
  ExplicitWidth = 599
  ExplicitHeight = 185
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 8
    Top = 16
    Width = 115
    Height = 13
    Caption = 'Cultura/cria'#231#227'o/servi'#231'o:'
    Transparent = True
  end
  object BtnOK: TcxButton
    Left = 416
    Top = 112
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 1
    OnClick = BtnOKClick
  end
  object BtnCancelar: TcxButton
    Left = 496
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object LkpCmbBxProduto: TcxLookupComboBox
    Left = 8
    Top = 32
    Anchors = [akLeft, akTop, akRight]
    Properties.DropDownRows = 16
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'PRD_ID'
    Properties.ListColumns = <
      item
        FieldName = 'PRD_DESCRICAO'
      end
      item
        FieldName = 'DIV_DESCRICAO'
      end
      item
        FieldName = 'GRP_DESCRICAO'
      end
      item
        FieldName = 'CLS_DESCRICAO'
      end
      item
        FieldName = 'UNI_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcProduto
    Properties.PostPopupValueOnTab = True
    TabOrder = 0
    ExplicitWidth = 449
    Width = 564
  end
  object DtSrcProduto: TDataSource
    DataSet = DtmCadastroModulo.DtStProduto
    Left = 144
    Top = 95
  end
end
