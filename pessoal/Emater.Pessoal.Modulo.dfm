object DtmPessoalModulo: TDtmPessoalModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 451
  Top = 237
  Height = 263
  Width = 489
  object DtSrcFuncionario: TDataSource
    DataSet = DtStFuncionario
    Left = 50
    Top = 126
  end
  object DtSrcFuncao: TDataSource
    DataSet = DtStFuncao
    Left = 154
    Top = 126
  end
  object DtSrcCargo: TDataSource
    DataSet = DtStCargo
    Left = 258
    Top = 126
  end
  object DtSrcFuncaoSituacao: TDataSource
    DataSet = DtStFuncaoSituacao
    Left = 370
    Top = 126
  end
  object DtStFuncionario: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFuncionario
    SQL.Strings = (
      'select'
      '  a.fun_id,'
      '  a.fun_matricula,'
      '  a.fun_nome'
      'from'
      '  tab_pes_funcionario a'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))'
      'order by'
      '  a.fun_nome')
    Left = 50
    Top = 32
  end
  object UpdtFuncionario: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PES_FUNCIONARIO'
      '(FUN_ID, FUN_NOME, FUN_MATRICULA)'
      'VALUES (:NEW_FUN_ID, :NEW_FUN_NOME, :NEW_FUN_MATRICULA)')
    ModifySQL.Strings = (
      'UPDATE TAB_PES_FUNCIONARIO'
      
        'SET FUN_ID = :NEW_FUN_ID, FUN_NOME = :NEW_FUN_NOME, FUN_MATRICUL' +
        'A = :NEW_FUN_MATRICULA'
      'WHERE FUN_ID = :OLD_FUN_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PES_FUNCIONARIO'
      'WHERE FUN_ID = :OLD_FUN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FUN_ID, FUN_DATA, FUN_NOME, FUN_MATRICULA, FUN_SEXO, FUN_' +
        'NASCIMENTO, '
      
        '  FUN_CPF, FUN_RG_NUMERO, FUN_RG_ORGAO, FUN_RG_DATA, FUN_ENDEREC' +
        'O, '
      
        '  FUN_NUMERO, FUN_COMPLEMENTO, FUN_BAIRRO, FUN_CEP, FUN_TELEFONE' +
        ', '
      '  FUN_CELULAR, FUN_EMAIL, FNC_ID, FST_ID, CRG_ID, USR_ID, '
      '  UND_ID, CID_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PES_FUNCIONARIO'
      'WHERE FUN_ID = :FUN_ID')
    Left = 50
    Top = 80
  end
  object DtStFuncao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFuncao
    SQL.Strings = (
      'select'
      '  a.fnc_id,'
      '  a.fnc_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_pes_funcao a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.fnc_descricao')
    Left = 154
    Top = 32
  end
  object UpdtFuncao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PES_FUNCAO'
      '(FNC_ID, FNC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FNC_ID, :NEW_FNC_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PES_FUNCAO'
      
        'SET FNC_ID = :NEW_FNC_ID, FNC_DESCRICAO = :NEW_FNC_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE FNC_ID = :OLD_FNC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PES_FUNCAO'
      'WHERE FNC_ID = :OLD_FNC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FNC_ID, FNC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PES_FUNCAO'
      'WHERE FNC_ID = :FNC_ID')
    Left = 154
    Top = 80
  end
  object DtStCargo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCargo
    SQL.Strings = (
      'select'
      '  a.crg_id,'
      '  a.crg_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_pes_cargo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.crg_descricao')
    Left = 258
    Top = 32
  end
  object UpdtCargo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PES_CARGO'
      '(CRG_ID, CRG_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_CRG_ID, :NEW_CRG_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PES_CARGO'
      
        'SET CRG_ID = :NEW_CRG_ID, CRG_DESCRICAO = :NEW_CRG_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE CRG_ID = :OLD_CRG_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PES_CARGO'
      'WHERE CRG_ID = :OLD_CRG_ID')
    FetchRowSQL.Strings = (
      
        'SELECT CRG_ID, CRG_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PES_CARGO'
      'WHERE CRG_ID = :CRG_ID')
    Left = 258
    Top = 80
  end
  object DtStFuncaoSituacao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFuncaoSituacao
    SQL.Strings = (
      'select'
      '  a.fst_id,'
      '  a.fst_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_pes_funcao_situacao a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.fst_descricao')
    Left = 370
    Top = 32
  end
  object UpdtFuncaoSituacao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PES_FUNCAO_SITUACAO'
      '(FST_ID, FST_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FST_ID, :NEW_FST_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PES_FUNCAO_SITUACAO'
      
        'SET FST_ID = :NEW_FST_ID, FST_DESCRICAO = :NEW_FST_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE FST_ID = :OLD_FST_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PES_FUNCAO_SITUACAO'
      'WHERE FST_ID = :OLD_FST_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FST_ID, FST_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PES_FUNCAO_SITUACAO'
      'WHERE FST_ID = :FST_ID')
    Left = 370
    Top = 80
  end
end
