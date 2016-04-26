object FrmRelatorioFiltroProducao: TFrmRelatorioFiltroProducao
  Left = 0
  Top = 0
  Width = 438
  Height = 162
  TabOrder = 0
  object LblGrupo: TLabel
    Left = 8
    Top = 60
    Width = 33
    Height = 13
    Caption = 'Grupo:'
    Transparent = True
  end
  object LblClasse: TLabel
    Left = 8
    Top = 84
    Width = 35
    Height = 13
    Caption = 'Classe:'
    Transparent = True
  end
  object LblCultura: TLabel
    Left = 8
    Top = 108
    Width = 115
    Height = 13
    Caption = 'Cultura/cria'#231#227'o/servi'#231'o:'
    Transparent = True
  end
  object LblSistema: TLabel
    Left = 8
    Top = 132
    Width = 90
    Height = 13
    Caption = 'Sistema produtivo:'
    Transparent = True
  end
  object LblCategoria: TLabel
    Left = 8
    Top = 12
    Width = 51
    Height = 13
    Caption = 'Categoria:'
    Transparent = True
  end
  object LblAtividade: TLabel
    Left = 8
    Top = 36
    Width = 98
    Height = 13
    Caption = 'Atividade produtiva:'
    Transparent = True
  end
  object LkpCmbBxGrupo: TcxLookupComboBox
    Left = 128
    Top = 56
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'GRP_ID'
    Properties.ListColumns = <
      item
        FieldName = 'GRP_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcGrupo
    TabOrder = 2
    Width = 297
  end
  object LkpCmbBxClasse: TcxLookupComboBox
    Left = 128
    Top = 80
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CLS_ID'
    Properties.ListColumns = <
      item
        FieldName = 'CLS_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcClasse
    TabOrder = 3
    Width = 297
  end
  object LkpCmbBxCultura: TcxLookupComboBox
    Left = 128
    Top = 104
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'PRD_ID'
    Properties.ListColumns = <
      item
        FieldName = 'PRD_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcCultura
    TabOrder = 4
    Width = 297
  end
  object LkpCmbBxSistema: TcxLookupComboBox
    Left = 128
    Top = 128
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'SIP_ID'
    Properties.ListColumns = <
      item
        FieldName = 'SIP_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcSistema
    TabOrder = 5
    Width = 297
  end
  object LkpCmbBxCategoria: TcxLookupComboBox
    Left = 128
    Top = 8
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'CAT_ID'
    Properties.ListColumns = <
      item
        FieldName = 'CAT_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcCategoria
    TabOrder = 0
    Width = 297
  end
  object LkpCmbBxAtividade: TcxLookupComboBox
    Left = 128
    Top = 32
    Properties.ClearKey = 46
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'DIV_ID'
    Properties.ListColumns = <
      item
        FieldName = 'DIV_DESCRICAO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtSrcAtividade
    TabOrder = 1
    Width = 297
  end
  object DtSrcGrupo: TDataSource
    DataSet = DtmRelatorioModulo.DtStGrupo
    Left = 208
    Top = 48
  end
  object DtSrcClasse: TDataSource
    DataSet = DtmRelatorioModulo.DtStClasse
    Left = 368
    Top = 72
  end
  object DtSrcCultura: TDataSource
    DataSet = DtmRelatorioModulo.DtStCultura
    Left = 280
    Top = 104
  end
  object DtSrcSistema: TDataSource
    DataSet = DtmRelatorioModulo.DtStSistema
    Left = 208
    Top = 128
  end
  object DtSrcCategoria: TDataSource
    DataSet = DtmRelatorioModulo.DtStCategoria
    Left = 368
  end
  object DtSrcAtividade: TDataSource
    DataSet = DtmRelatorioModulo.DtStDivisao
    Left = 280
    Top = 24
  end
end
