object FrmRelatorioFiltroUnidadeFuncionario: TFrmRelatorioFiltroUnidadeFuncionario
  Left = 0
  Top = 0
  Width = 443
  Height = 64
  TabOrder = 0
  object LblUnidade: TLabel
    Left = 8
    Top = 12
    Width = 48
    Height = 13
    Caption = 'Escrit'#243'rio:'
    Transparent = True
  end
  object LblFuncionario: TLabel
    Left = 8
    Top = 36
    Width = 40
    Height = 13
    Caption = 'T'#233'cnico:'
    Transparent = True
  end
  object LkpCmbBxUnidade: TcxLookupComboBox
    Left = 88
    Top = 8
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'UND_ID'
    Properties.ListColumns = <
      item
        MinWidth = 145
        Width = 145
        FieldName = 'UND_NOME'
      end
      item
        Width = 100
        FieldName = 'UND_TIPO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcUnidadeLocal
    TabOrder = 0
    Width = 337
  end
  object LkpCmbBxFuncionario: TcxLookupComboBox
    Left = 88
    Top = 32
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'FUN_ID'
    Properties.ListColumns = <
      item
        FieldName = 'FUN_NOME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcFuncionarioLocal
    TabOrder = 1
    Width = 337
  end
  object DtSrcUnidadeLocal: TDataSource
    DataSet = DtmRelatorioModulo.DtStUnidadeLocal
    Left = 312
  end
  object DtSrcFuncionarioLocal: TDataSource
    DataSet = DtmRelatorioModulo.DtStFuncionarioLocal
    Left = 312
    Top = 32
  end
end
