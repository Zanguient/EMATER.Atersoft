object DtmDneModulo: TDtmDneModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 271
  Width = 480
  object DtSrcCidade: TDataSource
    DataSet = DtStCidade
    Left = 42
    Top = 128
  end
  object DtSrcNaturalidade: TDataSource
    DataSet = DtStNaturalidade
    Left = 138
    Top = 128
  end
  object DtSrcUF: TDataSource
    DataSet = DtStUF
    Left = 234
    Top = 128
  end
  object DtSrcCidadeAcao: TDataSource
    DataSet = DtStCidadeAcao
    Left = 338
    Top = 128
  end
  object DtStCidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCidade
    SQL.Strings = (
      'select'
      '  a.cid_id,'
      '  a.cid_nome,'
      '  a.cid_tipo,'
      '  a.cid_ibge,'
      '  a.ufe_id'
      'from'
      '  tab_dne_cidade a'
      'where '
      '  (a.ufe_id = '#39'PA'#39') and exists'
      '  (select 1 from tab_sis_unidade u where (u.cid_id = a.cid_id))'
      'order by'
      '  a.cid_nome')
    Left = 42
    Top = 32
    object DtStCidadeCID_ID: TIntegerField
      DisplayLabel = 'Identificador'
      FieldName = 'CID_ID'
      Origin = 'CID_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStCidadeCID_NOME: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      Required = True
      Size = 80
    end
    object DtStCidadeCID_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CID_TIPO'
      Origin = 'CID_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DtStCidadeCID_IBGE: TIntegerField
      DisplayLabel = 'C'#243'digo do IBGE'
      FieldName = 'CID_IBGE'
      Origin = 'CID_IBGE'
    end
    object DtStCidadeUFE_ID: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object UpdtCidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_DNE_CIDADE'
      '(CID_ID, CID_NOME, CID_TIPO, CID_IBGE, UFE_ID)'
      
        'VALUES (:NEW_CID_ID, :NEW_CID_NOME, :NEW_CID_TIPO, :NEW_CID_IBGE' +
        ', :NEW_UFE_ID)')
    ModifySQL.Strings = (
      'UPDATE TAB_DNE_CIDADE'
      
        'SET CID_ID = :NEW_CID_ID, CID_NOME = :NEW_CID_NOME, CID_TIPO = :' +
        'NEW_CID_TIPO, '
      '  CID_IBGE = :NEW_CID_IBGE, UFE_ID = :NEW_UFE_ID'
      'WHERE CID_ID = :OLD_CID_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_DNE_CIDADE'
      'WHERE CID_ID = :OLD_CID_ID')
    FetchRowSQL.Strings = (
      'SELECT CID_ID, CID_NOME, CID_TIPO, CID_IBGE, UFE_ID'
      'FROM TAB_DNE_CIDADE'
      'WHERE CID_ID = :CID_ID')
    Left = 42
    Top = 80
  end
  object DtStNaturalidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtNaturalidade
    SQL.Strings = (
      'select'
      '  a.cid_id,'
      '  a.cid_nome,'
      '  a.cid_tipo,'
      '  a.cid_ibge,'
      '  a.ufe_id'
      'from'
      '  tab_dne_cidade a'
      'order by'
      '  a.cid_nome')
    Left = 138
    Top = 32
    object DtStNaturalidadeCID_ID: TIntegerField
      DisplayLabel = 'Identificador'
      FieldName = 'CID_ID'
      Origin = 'CID_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStNaturalidadeCID_NOME: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      Required = True
      Size = 80
    end
    object DtStNaturalidadeCID_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'CID_TIPO'
      Origin = 'CID_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DtStNaturalidadeCID_IBGE: TIntegerField
      DisplayLabel = 'C'#243'digo do IBGE'
      FieldName = 'CID_IBGE'
      Origin = 'CID_IBGE'
    end
    object DtStNaturalidadeUFE_ID: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
  object UpdtNaturalidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_DNE_CIDADE'
      '(CID_ID, CID_NOME, CID_TIPO, CID_IBGE, UFE_ID)'
      
        'VALUES (:NEW_CID_ID, :NEW_CID_NOME, :NEW_CID_TIPO, :NEW_CID_IBGE' +
        ', :NEW_UFE_ID)')
    ModifySQL.Strings = (
      'UPDATE TAB_DNE_CIDADE'
      
        'SET CID_ID = :NEW_CID_ID, CID_NOME = :NEW_CID_NOME, CID_TIPO = :' +
        'NEW_CID_TIPO, '
      '  CID_IBGE = :NEW_CID_IBGE, UFE_ID = :NEW_UFE_ID'
      'WHERE CID_ID = :OLD_CID_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_DNE_CIDADE'
      'WHERE CID_ID = :OLD_CID_ID')
    FetchRowSQL.Strings = (
      'SELECT CID_ID, CID_NOME, CID_TIPO, CID_IBGE, UFE_ID'
      'FROM TAB_DNE_CIDADE'
      'WHERE CID_ID = :CID_ID')
    Left = 138
    Top = 80
  end
  object DtStUF: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtUF
    SQL.Strings = (
      'SELECT'
      '    UFE_ID,'
      '    UFE_NOME,'
      '    UFE_NOME || '#39' ('#39' || UFE_ID || '#39')'#39' as UFE_UF_NOME'
      'FROM'
      '    TAB_DNE_UF '
      'ORDER BY'
      '    UFE_ID')
    Left = 234
    Top = 32
    object DtStUFUFE_ID: TStringField
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 2
    end
    object DtStUFUFE_NOME: TStringField
      FieldName = 'UFE_NOME'
      Origin = 'UFE_NOME'
      Required = True
      Size = 50
    end
    object DtStUFUFE_UF_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UFE_UF_NOME'
      Origin = 'UFE_UF_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 55
    end
  end
  object UpdtUF: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_DNE_UF'
      '(UFE_ID, UFE_NOME)'
      'VALUES (:NEW_UFE_ID, :NEW_UFE_NOME)')
    ModifySQL.Strings = (
      'UPDATE TAB_DNE_UF'
      'SET UFE_ID = :NEW_UFE_ID, UFE_NOME = :NEW_UFE_NOME'
      'WHERE UFE_ID = :OLD_UFE_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_DNE_UF'
      'WHERE UFE_ID = :OLD_UFE_ID')
    FetchRowSQL.Strings = (
      'SELECT UFE_ID, UFE_NOME'
      'FROM TAB_DNE_UF'
      'WHERE UFE_ID = :UFE_ID')
    Left = 234
    Top = 80
  end
  object DtStCidadeAcao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCidadeAcao
    SQL.Strings = (
      'select'
      '  a.cid_id,'
      '  a.cid_nome,'
      '  a.cid_tipo,'
      '  a.cid_ibge,'
      '  a.ufe_id'
      'from'
      '  tab_dne_cidade a'
      'where '
      '  (a.ufe_id = '#39'PA'#39') and exists'
      '  (select 1 from tab_sis_unidade u where (u.cid_id = a.cid_id))'
      'order by'
      '  a.cid_nome')
    Left = 338
    Top = 32
  end
  object UpdtCidadeAcao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_DNE_CIDADE'
      '(CID_ID, CID_NOME, CID_TIPO, CID_IBGE, UFE_ID)'
      
        'VALUES (:NEW_CID_ID, :NEW_CID_NOME, :NEW_CID_TIPO, :NEW_CID_IBGE' +
        ', :NEW_UFE_ID)')
    ModifySQL.Strings = (
      'UPDATE TAB_DNE_CIDADE'
      
        'SET CID_ID = :NEW_CID_ID, CID_NOME = :NEW_CID_NOME, CID_TIPO = :' +
        'NEW_CID_TIPO, '
      '  CID_IBGE = :NEW_CID_IBGE, UFE_ID = :NEW_UFE_ID'
      'WHERE CID_ID = :OLD_CID_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_DNE_CIDADE'
      'WHERE CID_ID = :OLD_CID_ID')
    FetchRowSQL.Strings = (
      'SELECT CID_ID, CID_NOME, CID_TIPO, CID_IBGE, UFE_ID'
      'FROM TAB_DNE_CIDADE'
      'WHERE CID_ID = :CID_ID')
    Left = 338
    Top = 80
  end
end
