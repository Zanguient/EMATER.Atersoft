object DtmProaterModulo: TDtmProaterModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 417
  Top = 208
  Height = 297
  Width = 397
  object DtSrcContexto: TDataSource
    DataSet = QryContexto
    Left = 48
    Top = 112
  end
  object QryContexto: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtContexto
    SQL.Strings = (
      'select'
      '  a.ctx_id,'
      '  a.ctx_tipo,'
      '  a.ctx_contexto,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  case a.ctx_tipo'
      '    when 1 then '#39'DIMENS'#195'O ECON'#212'MICA ('#39' || a.ctx_contexto || '#39')'#39
      '    when 2 then '#39'DIMENS'#195'O SOCIAL ('#39' || a.ctx_contexto || '#39')'#39
      '    when 3 then '#39'DIMENS'#195'O AMBIENTAL ('#39' || a.ctx_contexto || '#39')'#39
      '  end as ctx_tipo_contexto,'
      '  case a.ctx_tipo'
      '    when 1 then '#39'DIMENS'#195'O ECON'#212'MICA'#39
      '    when 2 then '#39'DIMENS'#195'O SOCIAL'#39
      '    when 3 then '#39'DIMENS'#195'O AMBIENTAL'#39
      '  end as ctx_tipo_descricao'
      'from'
      '  tab_prd_proater_contexto a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.ctx_tipo')
    Left = 48
    Top = 16
  end
  object UpdtContexto: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_CONTEXTO'
      '(CTX_ID, CTX_TIPO, CTX_CONTEXTO, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_CTX_ID, :NEW_CTX_TIPO, :NEW_CTX_CONTEXTO, :NEW_REG_' +
        'EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_CONTEXTO'
      
        'SET CTX_ID = :NEW_CTX_ID, CTX_TIPO = :NEW_CTX_TIPO, CTX_CONTEXTO' +
        ' = :NEW_CTX_CONTEXTO, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE CTX_ID = :OLD_CTX_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_CONTEXTO'
      'WHERE CTX_ID = :OLD_CTX_ID')
    FetchRowSQL.Strings = (
      
        'SELECT CTX_ID, CTX_TIPO, CTX_CONTEXTO, REG_EXCLUIDO, REG_REPLICA' +
        'DO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_CONTEXTO'
      'WHERE CTX_ID = :CTX_ID')
    Left = 48
    Top = 64
  end
end
