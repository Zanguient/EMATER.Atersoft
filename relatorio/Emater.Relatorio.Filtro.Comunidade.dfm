object FrmRelatorioFiltroComunidade: TFrmRelatorioFiltroComunidade
  Left = 0
  Top = 0
  Width = 426
  Height = 84
  TabOrder = 0
  object LblComunidade: TLabel
    Left = 8
    Top = 12
    Width = 63
    Height = 13
    Caption = 'Comunidade:'
    Transparent = True
  end
  object LkpCmbBxComunidade: TcxLookupComboBox
    Left = 88
    Top = 8
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'COM_ID'
    Properties.ListColumns = <
      item
        FieldName = 'COM_NOME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcComunidade
    TabOrder = 0
    Width = 337
  end
  object DtSrcComunidade: TDataSource
    DataSet = DtmRelatorioModulo.DtStComunidade
    Left = 312
    Top = 8
  end
end
