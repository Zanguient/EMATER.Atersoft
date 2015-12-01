object DtmProdutividadeModulo: TDtmProdutividadeModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 173
  Width = 556
  object DtStMetodo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtMetodo
    SQL.Strings = (
      'select'
      '  a.met_id,'
      '  a.met_descricao,'
      '  a.met_detalhe,'
      '  a.met_tipo,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_prd_metodo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.met_descricao')
    Left = 40
    Top = 32
  end
  object UpdtMetodo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_METODO'
      '(MET_ID, MET_DESCRICAO, MET_DETALHE, MET_TIPO, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_MET_ID, :NEW_MET_DESCRICAO, :NEW_MET_DETALHE, :NEW_' +
        'MET_TIPO, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_METODO'
      
        'SET MET_ID = :NEW_MET_ID, MET_DESCRICAO = :NEW_MET_DESCRICAO, ME' +
        'T_DETALHE = :NEW_MET_DETALHE, '
      '  MET_TIPO = :NEW_MET_TIPO, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE MET_ID = :OLD_MET_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_METODO'
      'WHERE MET_ID = :OLD_MET_ID')
    FetchRowSQL.Strings = (
      
        'SELECT MET_ID, MET_DESCRICAO, MET_DETALHE, MET_TIPO, REG_EXCLUID' +
        'O, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_METODO'
      'WHERE MET_ID = :MET_ID')
    Left = 42
    Top = 80
  end
  object DtStMetodoFinal: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtMetodoFinal
    SQL.Strings = (
      'select'
      '  a.met_id,'
      '  a.met_descricao,'
      '  a.met_detalhe,'
      '  a.met_tipo,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_prd_metodo a'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.met_id not in (100000016, 100000001))'
      'order by'
      '  a.met_descricao')
    Left = 120
    Top = 32
  end
  object UpdtMetodoFinal: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_METODO'
      '(MET_ID, MET_DESCRICAO, MET_DETALHE, MET_TIPO, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_MET_ID, :NEW_MET_DESCRICAO, :NEW_MET_DETALHE, :NEW_' +
        'MET_TIPO, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_METODO'
      
        'SET MET_ID = :NEW_MET_ID, MET_DESCRICAO = :NEW_MET_DESCRICAO, ME' +
        'T_DETALHE = :NEW_MET_DETALHE, '
      '  MET_TIPO = :NEW_MET_TIPO, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE MET_ID = :OLD_MET_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_METODO'
      'WHERE MET_ID = :OLD_MET_ID')
    FetchRowSQL.Strings = (
      
        'SELECT MET_ID, MET_DESCRICAO, MET_DETALHE, MET_TIPO, REG_EXCLUID' +
        'O, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_METODO'
      'WHERE MET_ID = :MET_ID')
    Left = 122
    Top = 80
  end
  object DtStFinalidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFinalidade
    SQL.Strings = (
      'select'
      '  a.fin_id,'
      '  a.fin_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_prd_finalidade a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.fin_descricao')
    Left = 208
    Top = 32
  end
  object UpdtFinalidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FINALIDADE'
      '(FIN_ID, FIN_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FIN_ID, :NEW_FIN_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FINALIDADE'
      
        'SET FIN_ID = :NEW_FIN_ID, FIN_DESCRICAO = :NEW_FIN_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE FIN_ID = :OLD_FIN_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FINALIDADE'
      'WHERE FIN_ID = :OLD_FIN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FIN_ID, FIN_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_FINALIDADE'
      'WHERE FIN_ID = :FIN_ID')
    Left = 210
    Top = 80
  end
  object DtStRecurso: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtRecurso
    SQL.Strings = (
      'select'
      '  a.rec_id,'
      '  a.rec_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_prd_recurso a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.rec_descricao')
    Left = 288
    Top = 32
  end
  object UpdtRecurso: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_RECURSO'
      '(REC_ID, REC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_REC_ID, :NEW_REC_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_RECURSO'
      
        'SET REC_ID = :NEW_REC_ID, REC_DESCRICAO = :NEW_REC_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE REC_ID = :OLD_REC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_RECURSO'
      'WHERE REC_ID = :OLD_REC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT REC_ID, REC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_RECURSO'
      'WHERE REC_ID = :REC_ID')
    Left = 290
    Top = 80
  end
  object DtStTecnica: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtTecnica
    SQL.Strings = (
      'select'
      '  a.tec_id,'
      '  a.tec_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_prd_tecnica a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.tec_descricao')
    Left = 368
    Top = 32
  end
  object UpdtTecnica: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_TECNICA'
      '(TEC_ID, TEC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_TEC_ID, :NEW_TEC_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_TECNICA'
      
        'SET TEC_ID = :NEW_TEC_ID, TEC_DESCRICAO = :NEW_TEC_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE TEC_ID = :OLD_TEC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_TECNICA'
      'WHERE TEC_ID = :OLD_TEC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT TEC_ID, TEC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_TECNICA'
      'WHERE TEC_ID = :TEC_ID')
    Left = 370
    Top = 80
  end
  object DtStFerramenta: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFerramenta
    SQL.Strings = (
      'select'
      '  a.fer_id,'
      '  a.fer_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_prd_ferramenta a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.fer_descricao')
    Left = 456
    Top = 32
  end
  object UpdtFerramenta: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FERRAMENTA'
      '(FER_ID, FER_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FER_ID, :NEW_FER_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FERRAMENTA'
      
        'SET FER_ID = :NEW_FER_ID, FER_DESCRICAO = :NEW_FER_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE FER_ID = :OLD_FER_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FERRAMENTA'
      'WHERE FER_ID = :OLD_FER_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FER_ID, FER_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_FERRAMENTA'
      'WHERE FER_ID = :FER_ID')
    Left = 458
    Top = 80
  end
end
