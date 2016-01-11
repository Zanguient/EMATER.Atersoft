object DtmSistemaModulo: TDtmSistemaModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 402
  Top = 191
  Height = 379
  Width = 595
  object DtSrcUnidade: TDataSource
    DataSet = DtStUnidade
    Left = 49
    Top = 120
  end
  object DtSrcParametro: TDataSource
    DataSet = DtStParametro
    Left = 145
    Top = 120
  end
  object DtSrcPerfil: TDataSource
    DataSet = DtStPerfil
    Left = 241
    Top = 120
  end
  object DtSrcUsuario: TDataSource
    DataSet = DtStUsuario
    Left = 337
    Top = 120
  end
  object DtStUnidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtUnidade
    SQL.Strings = (
      'select'
      '  a.und_id, '
      '  a.und_superior,'
      '  a.cid_id,'
      
        '  (a.und_nome || '#39' ('#39' || b.unt_descricao || '#39')'#39') as und_nome_des' +
        'cricao'
      'from'
      
        '  tab_sis_unidade a left join tab_sis_unidade_tipo b on (a.unt_i' +
        'd = b.unt_id)'
      'where'
      '  a.und_id in (select c.und_id from vwt_sis_unidade_local c)'
      'order by'
      '  b.unt_id, und_nome_descricao')
    Left = 48
    Top = 24
  end
  object UpdtUnidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    FetchRowSQL.Strings = (
      'select'
      '  a.und_id, '
      '  a.und_superior,'
      '  a.cid_id,'
      '  (b.unt_descricao || '#39' '#39' || a.und_nome) as und_nome_descricao'
      'from'
      
        '  tab_sis_unidade a left join tab_sis_unidade_tipo b on (a.unt_i' +
        'd = b.unt_id)'
      'where( '
      '  a.und_id in (select c.und_id from vwt_sis_unidade_local c)'
      '     ) and (     A.UND_ID = ::UND_ID'
      '     )')
    Left = 48
    Top = 72
  end
  object StrdPrcGerarIdentificador: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_GERAR_IDENTIFICADOR'
    Left = 472
    Top = 24
    ParamData = <
      item
        Position = 1
        Name = 'TABELA'
        DataType = ftString
        ParamType = ptInput
        Size = 31
      end
      item
        Position = 2
        Name = 'CAMPO'
        DataType = ftString
        ParamType = ptInput
        Size = 31
      end
      item
        Position = 3
        Name = 'ID'
        DataType = ftLargeint
        ParamType = ptOutput
      end>
  end
  object StrdPrcAplicacaoRegistrar: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_APLICACAO_REGISTRAR'
    Left = 472
    Top = 72
    ParamData = <
      item
        Position = 1
        Name = 'MODULO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 3
        Name = 'LEGENDA'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end>
  end
  object StrdPrcControleRegistrar: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_CONTROLE_REGISTRAR'
    Left = 472
    Top = 120
    ParamData = <
      item
        Position = 1
        Name = 'MODULO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'APLICACAO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 3
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = 'LEGENDA'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 5
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 200
      end>
  end
  object StrdPrcRecenteRegistrar: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_RECENTE_REGISTRAR'
    Left = 472
    Top = 168
    ParamData = <
      item
        Position = 1
        Name = 'GRUPO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'IDENTIFICADOR'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'ORDEM'
        DataType = ftSmallint
        ParamType = ptInput
      end
      item
        Position = 4
        Name = 'LEGENDA'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 5
        Name = 'DESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 100
      end
      item
        Position = 6
        Name = 'PINO'
        DataType = ftBoolean
        ParamType = ptInput
      end>
  end
  object StrdPrcRecenteLimpar: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_RECENTE_LIMPAR'
    Left = 472
    Top = 216
  end
  object StrdPrcUsuarioCriar: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_USUARIO_CRIAR'
    Left = 472
    Top = 264
    ParamData = <
      item
        Position = 1
        Name = 'LOGIN'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 2
        Name = 'SENHA'
        DataType = ftString
        ParamType = ptInput
        Size = 80
      end
      item
        Position = 3
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptOutput
      end>
  end
  object DtStParametro: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtParametro
    SQL.Strings = (
      'SELECT '
      '  PAR_ID, '
      '  PAR_DESCRICAO, '
      '  PAR_NOME, '
      '  PAR_VALOR'
      'FROM '
      '  TAB_SIS_PARAMETRO')
    Left = 144
    Top = 24
  end
  object UpdtParametro: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_SIS_PARAMETRO'
      '(PAR_ID, PAR_DESCRICAO, PAR_NOME, PAR_VALOR)'
      
        'VALUES (:NEW_PAR_ID, :NEW_PAR_DESCRICAO, :NEW_PAR_NOME, :NEW_PAR' +
        '_VALOR)')
    ModifySQL.Strings = (
      'UPDATE TAB_SIS_PARAMETRO'
      
        'SET PAR_ID = :NEW_PAR_ID, PAR_DESCRICAO = :NEW_PAR_DESCRICAO, PA' +
        'R_NOME = :NEW_PAR_NOME, '
      '  PAR_VALOR = :NEW_PAR_VALOR'
      'WHERE PAR_ID = :OLD_PAR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_SIS_PARAMETRO'
      'WHERE PAR_ID = :OLD_PAR_ID')
    FetchRowSQL.Strings = (
      'SELECT PAR_ID, PAR_DESCRICAO, PAR_NOME, PAR_VALOR'
      'FROM TAB_SIS_PARAMETRO'
      'WHERE PAR_ID = :PAR_ID')
    Left = 144
    Top = 72
  end
  object UpdtPerfil: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_SIS_PERFIL'
      '(PER_ID, PER_NOME, PER_ATIVO, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PER_ID, :NEW_PER_NOME, :NEW_PER_ATIVO, :NEW_REG_EXC' +
        'LUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_SIS_PERFIL'
      'SET PER_NOME = :NEW_PER_NOME, PER_ATIVO = :NEW_PER_ATIVO, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PER_ID = :OLD_PER_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_SIS_PERFIL'
      'WHERE PER_ID = :OLD_PER_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PER_ID, PER_NOME, PER_ATIVO, REG_EXCLUIDO, REG_REPLICADO,' +
        ' REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_SIS_PERFIL'
      'WHERE '
      '  (PER_ID = :PER_ID) AND'
      '  (reg_excluido = 0)')
    Left = 240
    Top = 72
  end
  object DtStPerfil: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtPerfil
    SQL.Strings = (
      'select'
      '  a.per_id,'
      '  a.per_nome, '
      '  a.per_ativo, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from '
      '  tab_sis_perfil a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.per_nome')
    Left = 240
    Top = 24
  end
  object UpdtUsuario: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    ModifySQL.Strings = (
      'UPDATE TAB_SIS_USUARIO'
      'SET USR_LOGIN = :NEW_USR_LOGIN, USR_ATIVO = :NEW_USR_ATIVO'
      'WHERE USR_ID = :OLD_USR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_SIS_USUARIO'
      'WHERE USR_ID = :OLD_USR_ID')
    FetchRowSQL.Strings = (
      'select'
      '  a.usr_id,'
      '  a.usr_login,'
      '  a.usr_ativo,'
      '  b.per_nome'
      'from'
      
        '  tab_sis_usuario a join tab_sis_perfil b on (a.per_id = b.per_i' +
        'd)'
      'where'
      '  (A.USR_ID = :USR_ID) and'
      '  (a.reg_excluido = 0)')
    Left = 336
    Top = 72
  end
  object DtStUsuario: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtUsuario
    SQL.Strings = (
      'select'
      '  a.usr_id,'
      '  a.usr_login,'
      '  a.usr_ativo,'
      '  b.per_nome'
      'from'
      
        '  tab_sis_usuario a join tab_sis_perfil b on (a.per_id = b.per_i' +
        'd)'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.usr_login')
    Left = 336
    Top = 24
  end
  object DtStControleAtivo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select * from stp_sis_controle_ativo(:modulo, :perfil, :usuario)')
    Left = 48
    Top = 216
    ParamData = <
      item
        Name = 'MODULO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PERFIL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DtStRecenteCarregar: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  rec_grupo,'
      '  rec_identificador,'
      '  rec_ordem, '
      '  rec_legenda, '
      '  rec_descricao, '
      '  rec_pino'
      'from'
      '  tab_sis_recente'
      'where'
      '  (rec_grupo = :grupo)'
      'order by'
      '  rec_ordem')
    Left = 48
    Top = 264
    ParamData = <
      item
        Name = 'GRUPO'
        ParamType = ptInput
      end>
  end
end
