object FrmRelatorioFiltroUnidadeFuncionarioPeriodo: TFrmRelatorioFiltroUnidadeFuncionarioPeriodo
  Left = 0
  Top = 0
  Width = 450
  Height = 94
  TabOrder = 0
  object LblUnidade: TLabel
    Left = 8
    Top = 36
    Width = 48
    Height = 13
    Caption = 'Escrit'#243'rio:'
  end
  object LblFuncionario: TLabel
    Left = 8
    Top = 60
    Width = 40
    Height = 13
    Caption = 'T'#233'cnico:'
  end
  object LblPeriodoDe: TLabel
    Left = 8
    Top = 12
    Width = 55
    Height = 13
    Caption = 'Per'#237'odo de:'
  end
  object LblPeriodoAte: TLabel
    Left = 248
    Top = 12
    Width = 21
    Height = 13
    Caption = 'At'#233':'
  end
  object LkpCmbBxUnidade: TcxLookupComboBox
    Left = 88
    Top = 32
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
    TabOrder = 2
    Width = 337
  end
  object LkpCmbBxFuncionario: TcxLookupComboBox
    Left = 88
    Top = 56
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'FUN_ID'
    Properties.ListColumns = <
      item
        FieldName = 'FUN_NOME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcFuncionarioLocal
    TabOrder = 3
    Width = 337
  end
  object EdtDataInicio: TcxDateEdit
    Left = 88
    Top = 8
    Properties.ClearKey = 46
    TabOrder = 0
    Width = 153
  end
  object EdtDataFim: TcxDateEdit
    Left = 272
    Top = 8
    Properties.ClearKey = 46
    TabOrder = 1
    Width = 153
  end
  object DtSrcUnidadeLocal: TDataSource
    DataSet = DtmRelatorioModulo.DtStUnidadeLocal
    Left = 312
    Top = 16
  end
  object DtSrcFuncionarioLocal: TDataSource
    DataSet = DtmRelatorioModulo.DtStFuncionarioLocal
    Left = 312
    Top = 48
  end
end
