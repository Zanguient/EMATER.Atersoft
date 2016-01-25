object DtmProaterModulo: TDtmProaterModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 417
  Top = 208
  Height = 297
  Width = 492
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
  object DtSrcVeiculoTipo: TDataSource
    DataSet = QryVeiculoTipo
    Left = 136
    Top = 112
  end
  object QryVeiculoTipo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtVeiculoTipo
    SQL.Strings = (
      'select'
      '  a.vtp_id,'
      '  a.vtp_descricao, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_proater_veiculo_tipo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.vtp_descricao')
    Left = 136
    Top = 16
  end
  object UpdtVeiculoTipo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_VEICULO_TIPO'
      '(VTP_ID, VTP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_VTP_ID, :NEW_VTP_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_VEICULO_TIPO'
      
        'SET VTP_ID = :NEW_VTP_ID, VTP_DESCRICAO = :NEW_VTP_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE VTP_ID = :OLD_VTP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_VEICULO_TIPO'
      'WHERE VTP_ID = :OLD_VTP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT VTP_ID, VTP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_VEICULO_TIPO'
      'WHERE VTP_ID = :VTP_ID')
    Left = 136
    Top = 64
  end
  object DtSrcCustoTipo: TDataSource
    DataSet = QryCustoTipo
    Left = 224
    Top = 112
  end
  object QryCustoTipo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCustoTipo
    SQL.Strings = (
      'select'
      '  a.pct_id,'
      '  a.pct_descricao,'
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_proater_custo_tipo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.pct_descricao')
    Left = 224
    Top = 16
  end
  object UpdtCustoTipo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_CUSTO_TIPO'
      '(PCT_ID, PCT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PCT_ID, :NEW_PCT_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_CUSTO_TIPO'
      
        'SET PCT_ID = :NEW_PCT_ID, PCT_DESCRICAO = :NEW_PCT_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PCT_ID = :OLD_PCT_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_CUSTO_TIPO'
      'WHERE PCT_ID = :OLD_PCT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PCT_ID, PCT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_CUSTO_TIPO'
      'WHERE PCT_ID = :PCT_ID')
    Left = 224
    Top = 64
  end
  object DtSrcMetodologia: TDataSource
    DataSet = QryMetodologia
    Left = 312
    Top = 112
  end
  object QryMetodologia: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtMetodologia
    SQL.Strings = (
      'select'
      '  a.met_id,'
      '  a.met_descricao, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_proater_metodologia a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.met_descricao')
    Left = 312
    Top = 16
  end
  object UpdtMetodologia: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_METODOLOGIA'
      '(MET_ID, MET_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_MET_ID, :NEW_MET_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_METODOLOGIA'
      
        'SET MET_ID = :NEW_MET_ID, MET_DESCRICAO = :NEW_MET_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE MET_ID = :OLD_MET_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_METODOLOGIA'
      'WHERE MET_ID = :OLD_MET_ID')
    FetchRowSQL.Strings = (
      
        'SELECT MET_ID, MET_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_METODOLOGIA'
      'WHERE MET_ID = :MET_ID')
    Left = 312
    Top = 64
  end
end
