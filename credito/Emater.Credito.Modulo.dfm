object DtmCreditoModulo: TDtmCreditoModulo
  OldCreateOrder = False
  Height = 433
  Width = 676
  object DtSrcFinanceira: TDataSource
    DataSet = DtStFinanceira
    Left = 48
    Top = 128
  end
  object DtSrcLinha: TDataSource
    DataSet = DtStLinha
    Left = 128
    Top = 128
  end
  object DtSrcTipo: TDataSource
    DataSet = DtStTipo
    Left = 208
    Top = 128
  end
  object DtSrcPublico: TDataSource
    DataSet = DtStPublico
    Left = 296
    Top = 128
  end
  object DtSrcSituacao: TDataSource
    DataSet = DtStSituacao
    Left = 384
    Top = 128
  end
  object DtSrcClassificacao: TDataSource
    DataSet = DtStClassificacao
    Left = 480
    Top = 128
  end
  object DtSrcGrupo: TDataSource
    DataSet = DtStGrupo
    Left = 576
    Top = 128
  end
  object DtSrcCultura: TDataSource
    DataSet = DtStCultura
    Left = 48
    Top = 312
  end
  object DtSrcCriacao: TDataSource
    DataSet = DtStCriacao
    Left = 128
    Top = 312
  end
  object DtSrcMaquina: TDataSource
    DataSet = DtStMaquina
    Left = 216
    Top = 312
  end
  object DtSrcEquipamento: TDataSource
    DataSet = DtStEquipamento
    Left = 304
    Top = 312
  end
  object DtSrcBenfeitoria: TDataSource
    DataSet = DtStBenfeitoria
    Left = 400
    Top = 312
  end
  object DtSrcVariedade: TDataSource
    DataSet = DtStVariedade
    Left = 488
    Top = 312
  end
  object DtSrcRaca: TDataSource
    DataSet = DtStRaca
    Left = 576
    Top = 312
  end
  object DtStFinanceira: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFinanceira
    SQL.Strings = (
      'select'
      '  a.fin_id,'
      '  a.fin_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_financeira a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.fin_descricao')
    Left = 48
    Top = 32
  end
  object UpdtFinanceira: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_FINANCEIRA'
      '(FIN_ID, FIN_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FIN_ID, :NEW_FIN_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_FINANCEIRA'
      
        'SET FIN_ID = :NEW_FIN_ID, FIN_DESCRICAO = :NEW_FIN_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE FIN_ID = :OLD_FIN_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_FINANCEIRA'
      'WHERE FIN_ID = :OLD_FIN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FIN_ID, FIN_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_FINANCEIRA'
      'WHERE FIN_ID = :FIN_ID')
    Left = 48
    Top = 80
  end
  object DtStRaca: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtRaca
    SQL.Strings = (
      'select'
      '  a.rac_id,'
      '  a.rac_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_raca a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.rac_descricao')
    Left = 576
    Top = 216
  end
  object UpdtRaca: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_RACA'
      '(RAC_ID, RAC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_RAC_ID, :NEW_RAC_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_RACA'
      
        'SET RAC_ID = :NEW_RAC_ID, RAC_DESCRICAO = :NEW_RAC_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE RAC_ID = :OLD_RAC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_RACA'
      'WHERE RAC_ID = :OLD_RAC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT RAC_ID, RAC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_RACA'
      'WHERE RAC_ID = :RAC_ID')
    Left = 576
    Top = 264
  end
  object DtStLinha: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtLinha
    SQL.Strings = (
      'select'
      '  a.lin_id,'
      '  a.lin_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_linha a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.lin_descricao')
    Left = 128
    Top = 32
  end
  object UpdtLinha: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_LINHA'
      '(LIN_ID, LIN_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_LIN_ID, :NEW_LIN_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_LINHA'
      
        'SET LIN_ID = :NEW_LIN_ID, LIN_DESCRICAO = :NEW_LIN_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE LIN_ID = :OLD_LIN_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_LINHA'
      'WHERE LIN_ID = :OLD_LIN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT LIN_ID, LIN_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_LINHA'
      'WHERE LIN_ID = :LIN_ID')
    Left = 128
    Top = 80
  end
  object DtStTipo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtTipo
    SQL.Strings = (
      'select'
      '  a.tip_id,'
      '  a.tip_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_tipo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.tip_descricao')
    Left = 208
    Top = 32
  end
  object UpdtTipo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_TIPO'
      '(TIP_ID, TIP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_TIP_ID, :NEW_TIP_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_TIPO'
      
        'SET TIP_ID = :NEW_TIP_ID, TIP_DESCRICAO = :NEW_TIP_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE TIP_ID = :OLD_TIP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_TIPO'
      'WHERE TIP_ID = :OLD_TIP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT TIP_ID, TIP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_TIPO'
      'WHERE TIP_ID = :TIP_ID')
    Left = 208
    Top = 80
  end
  object DtStPublico: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtPublico
    SQL.Strings = (
      'select'
      '  a.pub_id,'
      '  a.pub_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_publico a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.pub_descricao')
    Left = 296
    Top = 32
  end
  object UpdtPublico: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_PUBLICO'
      '(PUB_ID, PUB_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PUB_ID, :NEW_PUB_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_PUBLICO'
      
        'SET PUB_ID = :NEW_PUB_ID, PUB_DESCRICAO = :NEW_PUB_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PUB_ID = :OLD_PUB_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_PUBLICO'
      'WHERE PUB_ID = :OLD_PUB_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PUB_ID, PUB_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_PUBLICO'
      'WHERE PUB_ID = :PUB_ID')
    Left = 296
    Top = 80
  end
  object DtStSituacao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtSituacao
    SQL.Strings = (
      'select'
      '  a.sit_id,'
      '  a.sit_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_situacao a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.sit_descricao')
    Left = 384
    Top = 32
  end
  object UpdtSituacao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_SITUACAO'
      '(SIT_ID, SIT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_SIT_ID, :NEW_SIT_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_SITUACAO'
      
        'SET SIT_ID = :NEW_SIT_ID, SIT_DESCRICAO = :NEW_SIT_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE SIT_ID = :OLD_SIT_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_SITUACAO'
      'WHERE SIT_ID = :OLD_SIT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT SIT_ID, SIT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_SITUACAO'
      'WHERE SIT_ID = :SIT_ID')
    Left = 384
    Top = 80
  end
  object DtStClassificacao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtClassificacao
    SQL.Strings = (
      'select'
      '  a.cls_id,'
      '  a.cls_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_classificacao a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.cls_descricao')
    Left = 480
    Top = 32
  end
  object UpdtClassificacao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_FINANCEIRA'
      '(FIN_ID, FIN_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FIN_ID, :NEW_FIN_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_FINANCEIRA'
      
        'SET FIN_ID = :NEW_FIN_ID, FIN_DESCRICAO = :NEW_FIN_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE FIN_ID = :OLD_FIN_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_FINANCEIRA'
      'WHERE FIN_ID = :OLD_FIN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FIN_ID, FIN_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_FINANCEIRA'
      'WHERE FIN_ID = :FIN_ID')
    Left = 480
    Top = 80
  end
  object DtStGrupo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtGrupo
    SQL.Strings = (
      'select'
      '  a.grp_id,'
      '  a.grp_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_grupo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.grp_descricao')
    Left = 576
    Top = 32
  end
  object UpdtGrupo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_GRUPO'
      '(GRP_ID, GRP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_GRP_ID, :NEW_GRP_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_GRUPO'
      
        'SET GRP_ID = :NEW_GRP_ID, GRP_DESCRICAO = :NEW_GRP_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE GRP_ID = :OLD_GRP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_GRUPO'
      'WHERE GRP_ID = :OLD_GRP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT GRP_ID, GRP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_GRUPO'
      'WHERE GRP_ID = :GRP_ID')
    Left = 576
    Top = 80
  end
  object DtStCultura: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCultura
    SQL.Strings = (
      'select'
      '  a.prd_id,'
      '  a.prd_descricao'
      'from'
      
        '  tab_cad_produto a join tab_cad_divisao b on (a.div_id = b.div_' +
        'id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (b.div_tipo = 2)'
      'order by'
      '  (a.prd_descricao)')
    Left = 48
    Top = 216
  end
  object UpdtCultura: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUTO'
      '(PRD_ID, PRD_DESCRICAO)'
      'VALUES (:NEW_PRD_ID, :NEW_PRD_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUTO'
      'SET PRD_ID = :NEW_PRD_ID, PRD_DESCRICAO = :NEW_PRD_DESCRICAO'
      'WHERE PRD_ID = :OLD_PRD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUTO'
      'WHERE PRD_ID = :OLD_PRD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRD_ID, PRD_DESCRICAO, PRD_SEMOVENTE, DIV_ID, GRP_ID, CLS' +
        '_ID, '
      
        '  UNI_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_CAD_PRODUTO'
      'WHERE PRD_ID = :PRD_ID')
    Left = 48
    Top = 264
  end
  object DtStCriacao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCriacao
    SQL.Strings = (
      'select'
      '  a.prd_id,'
      '  a.prd_descricao'
      'from'
      
        '  tab_cad_produto a join tab_cad_divisao b on (a.div_id = b.div_' +
        'id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (b.div_tipo = 1)'
      'order by'
      '  (a.prd_descricao)')
    Left = 128
    Top = 216
  end
  object UpdtCriacao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUTO'
      '(PRD_ID, PRD_DESCRICAO)'
      'VALUES (:NEW_PRD_ID, :NEW_PRD_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUTO'
      'SET PRD_ID = :NEW_PRD_ID, PRD_DESCRICAO = :NEW_PRD_DESCRICAO'
      'WHERE PRD_ID = :OLD_PRD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUTO'
      'WHERE PRD_ID = :OLD_PRD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRD_ID, PRD_DESCRICAO, PRD_SEMOVENTE, DIV_ID, GRP_ID, CLS' +
        '_ID, '
      
        '  UNI_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_CAD_PRODUTO'
      'WHERE PRD_ID = :PRD_ID')
    Left = 128
    Top = 264
  end
  object DtStMaquina: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtMaquina
    SQL.Strings = (
      'select'
      '  c.bem_id as prd_id,'
      '  c.bem_descricao as prd_descricao'
      'from'
      '  tab_cad_bem c'
      'where'
      '  (c.reg_excluido = 0) and'
      '  (c.cls_id = 100000002)'
      'order by'
      '  c.bem_descricao')
    Left = 216
    Top = 216
  end
  object UpdtMaquina: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_BEM'
      '(BEM_ID, BEM_DESCRICAO)'
      'VALUES (:NEW_BEM_ID, :NEW_BEM_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_BEM'
      'SET BEM_ID = :NEW_BEM_ID, BEM_DESCRICAO = :NEW_BEM_DESCRICAO'
      
        'WHERE BEM_ID = :OLD_BEM_ID AND BEM_DESCRICAO = :OLD_BEM_DESCRICA' +
        'O')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_BEM'
      
        'WHERE BEM_ID = :OLD_BEM_ID AND BEM_DESCRICAO = :OLD_BEM_DESCRICA' +
        'O')
    FetchRowSQL.Strings = (
      
        'SELECT BEM_ID, BEM_DESCRICAO, CLS_ID, REG_EXCLUIDO, REG_REPLICAD' +
        'O, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_BEM'
      'WHERE BEM_ID = :BEM_ID AND BEM_DESCRICAO = :BEM_DESCRICAO')
    Left = 216
    Top = 264
  end
  object DtStEquipamento: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtEquipamento
    SQL.Strings = (
      'select'
      '  c.bem_id as prd_id,'
      '  c.bem_descricao as prd_descricao'
      'from'
      '  tab_cad_bem c'
      'where'
      '  (c.reg_excluido = 0) and'
      '  (c.cls_id = 100000003)'
      'order by'
      '  c.bem_descricao')
    Left = 304
    Top = 216
  end
  object UpdtEquipamento: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_BEM'
      '(BEM_ID, BEM_DESCRICAO)'
      'VALUES (:NEW_BEM_ID, :NEW_BEM_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_BEM'
      'SET BEM_ID = :NEW_BEM_ID, BEM_DESCRICAO = :NEW_BEM_DESCRICAO'
      
        'WHERE BEM_ID = :OLD_BEM_ID AND BEM_DESCRICAO = :OLD_BEM_DESCRICA' +
        'O')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_BEM'
      
        'WHERE BEM_ID = :OLD_BEM_ID AND BEM_DESCRICAO = :OLD_BEM_DESCRICA' +
        'O')
    FetchRowSQL.Strings = (
      
        'SELECT BEM_ID, BEM_DESCRICAO, CLS_ID, REG_EXCLUIDO, REG_REPLICAD' +
        'O, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_BEM'
      'WHERE BEM_ID = :BEM_ID AND BEM_DESCRICAO = :BEM_DESCRICAO')
    Left = 304
    Top = 264
  end
  object DtStBenfeitoria: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtBenfeitoria
    SQL.Strings = (
      'select'
      '  c.bem_id as prd_id,'
      '  c.bem_descricao as prd_descricao'
      'from'
      '  tab_cad_bem c'
      'where'
      '  (c.reg_excluido = 0) and'
      '  (c.cls_id = 100000001)'
      'order by'
      '  c.bem_descricao')
    Left = 400
    Top = 216
  end
  object UpdtBenfeitoria: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_BEM'
      '(BEM_ID, BEM_DESCRICAO)'
      'VALUES (:NEW_BEM_ID, :NEW_BEM_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_BEM'
      'SET BEM_ID = :NEW_BEM_ID, BEM_DESCRICAO = :NEW_BEM_DESCRICAO'
      
        'WHERE BEM_ID = :OLD_BEM_ID AND BEM_DESCRICAO = :OLD_BEM_DESCRICA' +
        'O')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_BEM'
      
        'WHERE BEM_ID = :OLD_BEM_ID AND BEM_DESCRICAO = :OLD_BEM_DESCRICA' +
        'O')
    FetchRowSQL.Strings = (
      
        'SELECT BEM_ID, BEM_DESCRICAO, CLS_ID, REG_EXCLUIDO, REG_REPLICAD' +
        'O, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_BEM'
      'WHERE BEM_ID = :BEM_ID AND BEM_DESCRICAO = :BEM_DESCRICAO')
    Left = 400
    Top = 264
  end
  object DtStVariedade: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtVariedade
    SQL.Strings = (
      'select'
      '  a.var_id,'
      '  a.var_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_variedade a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.var_descricao')
    Left = 488
    Top = 216
  end
  object UpdtVariedade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_VARIEDADE'
      '(VAR_ID, VAR_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_VAR_ID, :NEW_VAR_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_VARIEDADE'
      
        'SET VAR_ID = :NEW_VAR_ID, VAR_DESCRICAO = :NEW_VAR_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE VAR_ID = :OLD_VAR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_VARIEDADE'
      'WHERE VAR_ID = :OLD_VAR_ID')
    FetchRowSQL.Strings = (
      
        'SELECT VAR_ID, VAR_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_VARIEDADE'
      'WHERE VAR_ID = :VAR_ID')
    Left = 488
    Top = 264
  end
end
