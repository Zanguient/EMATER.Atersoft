object FrmRelatorioFiltroProjeto: TFrmRelatorioFiltroProjeto
  Left = 0
  Top = 0
  Width = 400
  Height = 69
  TabOrder = 0
  object LblProjeto: TLabel
    Left = 8
    Top = 12
    Width = 39
    Height = 13
    Caption = 'Projeto:'
    Transparent = True
  end
  object LkpCmbBxProjeto: TcxLookupComboBox
    Left = 88
    Top = 8
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'PRJ_ID'
    Properties.ListColumns = <
      item
        FieldName = 'PRJ_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcProjeto
    TabOrder = 0
    Width = 337
  end
  object DtSrcProjeto: TDataSource
    DataSet = DtmRelatorioModulo.DtStProjeto
    Left = 368
  end
end
