object FrmRelatorioFiltroMetodologia: TFrmRelatorioFiltroMetodologia
  Left = 0
  Top = 0
  Width = 458
  Height = 52
  TabOrder = 0
  object LblMetodologia: TLabel
    Left = 8
    Top = 12
    Width = 62
    Height = 13
    Caption = 'Metodologia:'
  end
  object LkpCmbBxMetodologia: TcxLookupComboBox
    Left = 88
    Top = 8
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'MET_ID'
    Properties.ListColumns = <
      item
        FieldName = 'MET_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcMetodologia
    TabOrder = 0
    Width = 337
  end
  object DtSrcMetodologia: TDataSource
    DataSet = DtmRelatorioModulo.DtStMetodologia
    Left = 312
    Top = 8
  end
end
