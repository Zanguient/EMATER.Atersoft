object DtmCadastroModulo: TDtmCadastroModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 305
  Top = 101
  Height = 590
  Width = 811
  object DtSrcParentesco: TDataSource
    DataSet = DtStParentesco
    Left = 48
    Top = 296
  end
  object DtSrcDAPTipo: TDataSource
    DataSet = DtStDAPTipo
    Left = 256
    Top = 112
  end
  object DtSrcDivisao: TDataSource
    DataSet = DtStDivisao
    Left = 152
    Top = 112
  end
  object DtSrcCategoria: TDataSource
    DataSet = DtStCategoria
    Left = 48
    Top = 112
  end
  object DtSrcOrganizacaoTipo: TDataSource
    DataSet = DtStOrganizacaoTipo
    Left = 152
    Top = 296
  end
  object DtSrcEstadoCivil: TDataSource
    DataSet = DtStEstadoCivil
    Left = 256
    Top = 296
  end
  object DtSrcEscolaridade: TDataSource
    DataSet = DtStEscolaridade
    Left = 48
    Top = 480
  end
  object DtSrcMotivo: TDataSource
    DataSet = DtStMotivo
    Left = 152
    Top = 480
  end
  object DtSrcComunidade: TDataSource
    DataSet = DtStComunidade
    Left = 256
    Top = 480
  end
  object DtSrcOrganizacao: TDataSource
    DataSet = DtStOrganizacao
    Left = 384
    Top = 112
  end
  object DtSrcDAPOrigem: TDataSource
    DataSet = DtStDAPOrigem
    Left = 480
    Top = 112
  end
  object DtSrcOcupacaoTipo: TDataSource
    DataSet = DtStOcupacaoTipo
    Left = 584
    Top = 112
  end
  object DtSrcDocumentoTipo: TDataSource
    DataSet = DtStDocumentoTipo
    Left = 688
    Top = 112
  end
  object DtSrcBem: TDataSource
    DataSet = DtStBem
    Left = 384
    Top = 296
  end
  object DtSrcUnidade: TDataSource
    DataSet = DtStUnidade
    Left = 480
    Top = 296
  end
  object DtSrcSistemaProdutivo: TDataSource
    DataSet = DtStSistemaProdutivo
    Left = 584
    Top = 296
  end
  object DtSrcDerivado: TDataSource
    DataSet = DtStDerivado
    Left = 688
    Top = 296
  end
  object DtSrcDestino: TDataSource
    DataSet = DtStDestino
    Left = 384
    Top = 480
  end
  object DtSrcProduto: TDataSource
    DataSet = DtStProduto
    Left = 480
    Top = 480
  end
  object DtSrcOrganizacaoPublico: TDataSource
    DataSet = DtStOrganizacaoPublico
    Left = 584
    Top = 480
  end
  object DtStCategoria: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCategoria
    SQL.Strings = (
      'select'
      '  a.cat_id,'
      '  a.cat_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_categoria a'
      'where'
      '  a.reg_excluido = 0'
      'order by'
      '  a.cat_descricao')
    Left = 48
    Top = 16
  end
  object UpdtCategoria: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_CATEGORIA'
      '(CAT_ID, CAT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_CAT_ID, :NEW_CAT_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_CATEGORIA'
      
        'SET CAT_DESCRICAO = :NEW_CAT_DESCRICAO, REG_EXCLUIDO = :NEW_REG_' +
        'EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE CAT_ID = :OLD_CAT_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_CATEGORIA'
      'WHERE CAT_ID = :OLD_CAT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT CAT_ID, CAT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_CATEGORIA'
      'WHERE CAT_ID = :CAT_ID')
    Left = 48
    Top = 64
  end
  object DtStOcupacaoTipo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtOcupacaoTipo
    SQL.Strings = (
      'select'
      '  a.oct_id,'
      '  a.oct_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_ocupacao_tipo a'
      'order by'
      '  a.oct_descricao')
    Left = 584
    Top = 16
  end
  object UpdtOcupacaoTipo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_OCUPACAO_TIPO'
      '(OCT_ID, OCT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_OCT_ID, :NEW_OCT_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_OCUPACAO_TIPO'
      
        'SET OCT_ID = :NEW_OCT_ID, OCT_DESCRICAO = :NEW_OCT_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE OCT_ID = :OLD_OCT_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_OCUPACAO_TIPO'
      'WHERE OCT_ID = :OLD_OCT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT OCT_ID, OCT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_OCUPACAO_TIPO'
      'WHERE OCT_ID = :OCT_ID')
    Left = 584
    Top = 64
  end
  object DtStDivisao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDivisao
    SQL.Strings = (
      'select'
      '  a.div_id,'
      '  a.div_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  case a.div_tipo'
      '    when 1 then '#39'Cultura animal'#39
      '    when 2 then '#39'Cultura vegetal'#39
      '    when 3 then '#39'Outras atividades'#39
      '  end as div_tipo'
      'from'
      '  tab_cad_divisao a'
      'where'
      '  a.reg_excluido = 0'
      'order by'
      '  a.div_descricao')
    Left = 152
    Top = 16
  end
  object UpdtDivisao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_DIVISAO'
      '(DIV_ID, DIV_DESCRICAO, DIV_TIPO, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_DIV_ID, :NEW_DIV_DESCRICAO, :NEW_DIV_TIPO, :NEW_REG' +
        '_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_DIVISAO'
      
        'SET DIV_ID = :NEW_DIV_ID, DIV_DESCRICAO = :NEW_DIV_DESCRICAO, DI' +
        'V_TIPO = :NEW_DIV_TIPO, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE DIV_ID = :OLD_DIV_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_DIVISAO'
      'WHERE DIV_ID = :OLD_DIV_ID')
    FetchRowSQL.Strings = (
      
        'SELECT DIV_ID, DIV_DESCRICAO, DIV_TIPO, REG_EXCLUIDO, REG_REPLIC' +
        'ADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_DIVISAO'
      'WHERE DIV_ID = :DIV_ID')
    Left = 152
    Top = 64
  end
  object DtStDAPTipo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDAPTipo
    SQL.Strings = (
      'select'
      '  a.dtp_id,'
      '  a.dtp_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_dap_tipo a'
      'where'
      '  a.reg_excluido = 0'
      'order by'
      '  a.dtp_descricao')
    Left = 256
    Top = 16
  end
  object UpdtDAPTipo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_DAP_TIPO'
      '(DTP_ID, DTP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_DTP_ID, :NEW_DTP_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_DAP_TIPO'
      
        'SET DTP_ID = :NEW_DTP_ID, DTP_DESCRICAO = :NEW_DTP_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE DTP_ID = :OLD_DTP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_DAP_TIPO'
      'WHERE DTP_ID = :OLD_DTP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT DTP_ID, DTP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_DAP_TIPO'
      'WHERE '
      '  REG_EXCLUIDO = 0 AND'
      '  DTP_ID = :DTP_ID')
    Left = 256
    Top = 64
  end
  object DtStParentesco: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtParentesco
    SQL.Strings = (
      'select'
      '  a.par_id,'
      '  a.par_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_parentesco a'
      'where'
      '  a.reg_excluido = 0'
      'order by a.par_descricao')
    Left = 48
    Top = 200
  end
  object UpdtParentesco: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PARENTESCO'
      '(PAR_ID, PAR_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PAR_ID, :NEW_PAR_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PARENTESCO'
      
        'SET PAR_ID = :NEW_PAR_ID, PAR_DESCRICAO = :NEW_PAR_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PAR_ID = :OLD_PAR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PARENTESCO'
      'WHERE PAR_ID = :OLD_PAR_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PAR_ID, PAR_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_PARENTESCO'
      'WHERE PAR_ID = :PAR_ID')
    Left = 48
    Top = 248
  end
  object DtStOrganizacaoTipo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtOrganizacaoTipo
    SQL.Strings = (
      'select'
      '  a.otp_id,'
      '  a.otp_descricao,'
      '  a.otp_grupo,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_organizacao_tipo a'
      'where'
      '  a.reg_excluido = 0'
      'order by'
      '  a.otp_descricao')
    Left = 152
    Top = 200
  end
  object UpdtOrganizacaoTipo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO_TIPO'
      '(OTP_ID, OTP_DESCRICAO, OTP_GRUPO, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_OTP_ID, :NEW_OTP_DESCRICAO, :NEW_OTP_GRUPO, :NEW_RE' +
        'G_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO_TIPO'
      
        'SET OTP_ID = :NEW_OTP_ID, OTP_DESCRICAO = :NEW_OTP_DESCRICAO, OT' +
        'P_GRUPO = :NEW_OTP_GRUPO, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE OTP_ID = :OLD_OTP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_ORGANIZACAO_TIPO'
      'WHERE OTP_ID = :OLD_OTP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT OTP_ID, OTP_DESCRICAO, OTP_GRUPO, REG_EXCLUIDO, REG_REPLI' +
        'CADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_ORGANIZACAO_TIPO'
      'WHERE OTP_ID = :OTP_ID')
    Left = 152
    Top = 248
  end
  object DtStEstadoCivil: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtEstadoCivil
    SQL.Strings = (
      'select'
      '  a.ecv_id,'
      '  a.ecv_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_estado_civil a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.ecv_descricao')
    Left = 256
    Top = 200
  end
  object UpdtEstadoCivil: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ESTADO_CIVIL'
      '(ECV_ID, ECV_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_ECV_ID, :NEW_ECV_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ESTADO_CIVIL'
      
        'SET ECV_ID = :NEW_ECV_ID, ECV_DESCRICAO = :NEW_ECV_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE ECV_ID = :OLD_ECV_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_ESTADO_CIVIL'
      'WHERE ECV_ID = :OLD_ECV_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ECV_ID, ECV_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_ESTADO_CIVIL'
      'WHERE ECV_ID = :ECV_ID')
    Left = 256
    Top = 248
  end
  object DtStEscolaridade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtEscolaridade
    SQL.Strings = (
      'select'
      '  a.esc_id,'
      '  a.esc_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_escolaridade a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.esc_descricao')
    Left = 48
    Top = 384
  end
  object UpdtEscolaridade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ESCOLARIDADE'
      '(ESC_ID, ESC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_ESC_ID, :NEW_ESC_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ESCOLARIDADE'
      
        'SET ESC_ID = :NEW_ESC_ID, ESC_DESCRICAO = :NEW_ESC_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE ESC_ID = :OLD_ESC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_ESCOLARIDADE'
      'WHERE ESC_ID = :OLD_ESC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ESC_ID, ESC_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_ESCOLARIDADE'
      'WHERE ESC_ID = :ESC_ID')
    Left = 48
    Top = 432
  end
  object DtStMotivo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtMotivo
    SQL.Strings = (
      'select'
      '  a.mot_id,'
      '  a.mot_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_motivo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.mot_descricao')
    Left = 152
    Top = 384
  end
  object UpdtMotivo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_MOTIVO'
      '(MOT_ID, MOT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_MOT_ID, :NEW_MOT_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_MOTIVO'
      
        'SET MOT_ID = :NEW_MOT_ID, MOT_DESCRICAO = :NEW_MOT_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE MOT_ID = :OLD_MOT_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_MOTIVO'
      'WHERE MOT_ID = :OLD_MOT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT MOT_ID, MOT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_MOTIVO'
      'WHERE MOT_ID = :MOT_ID')
    Left = 152
    Top = 432
  end
  object DtStComunidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtComunidade
    SQL.Strings = (
      'select'
      '  a.com_id,'
      '  a.com_nome,'
      '  a.com_localizacao,'
      '  b.cid_nome'
      'from'
      
        '  tab_cad_comunidade a join tab_dne_cidade b on (a.cid_id = b.ci' +
        'd_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))'
      'order by'
      ' a.com_nome')
    Left = 256
    Top = 384
  end
  object UpdtComunidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_COMUNIDADE'
      '(COM_ID, COM_NOME, COM_LOCALIZACAO)'
      'VALUES (:NEW_COM_ID, :NEW_COM_NOME, :NEW_COM_LOCALIZACAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_COMUNIDADE'
      
        'SET COM_ID = :NEW_COM_ID, COM_NOME = :NEW_COM_NOME, COM_LOCALIZA' +
        'CAO = :NEW_COM_LOCALIZACAO'
      'WHERE COM_ID = :OLD_COM_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_COMUNIDADE'
      'WHERE COM_ID = :OLD_COM_ID')
    FetchRowSQL.Strings = (
      'select'
      '  a.com_id,'
      '  a.com_nome,'
      '  a.com_localizacao,'
      '  b.cid_nome'
      'from'
      
        '  tab_cad_comunidade a join tab_dne_cidade b on (a.cid_id = b.ci' +
        'd_id)'
      'where( '
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))'
      '     ) and (     A.COM_ID = :COM_ID'
      '     )')
    Left = 256
    Top = 432
  end
  object DtStOrganizacao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtOrganizacao
    SQL.Strings = (
      'select'
      '  a.org_id,'
      '  a.org_nome,'
      '  a.org_sigla,'
      '  b.cid_nome'
      'from'
      
        '  tab_cad_organizacao a join tab_dne_cidade b on (a.cid_id = b.c' +
        'id_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))'
      'order by'
      ' a.org_nome')
    Left = 384
    Top = 16
  end
  object UpdtOrganizacao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO'
      '(ORG_ID, ORG_NOME, ORG_SIGLA)'
      'VALUES (:NEW_ORG_ID, :NEW_ORG_NOME, :NEW_ORG_SIGLA)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO'
      
        'SET ORG_ID = :NEW_ORG_ID, ORG_NOME = :NEW_ORG_NOME, ORG_SIGLA = ' +
        ':NEW_ORG_SIGLA'
      'WHERE ORG_ID = :OLD_ORG_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_ORGANIZACAO'
      'WHERE ORG_ID = :OLD_ORG_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ORG_ID, ORG_DATA, ORG_NOME, ORG_SIGLA, ORG_CNPJ, ORG_ENDE' +
        'RECO, '
      
        '  ORG_NUMERO, ORG_COMPLEMENTO, ORG_BAIRRO, ORG_CEP, ORG_TELEFONE' +
        '_1, '
      '  ORG_TELEFONE_2, ORG_EMAIL, ORG_RESPONSAVEL, ORG_FILIADOS, '
      '  CID_ID, OTP_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_ORGANIZACAO'
      'WHERE ORG_ID = :ORG_ID')
    Left = 384
    Top = 64
  end
  object DtStDAPOrigem: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDAPOrigem
    SQL.Strings = (
      'select'
      '  a.org_id,'
      '  a.org_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_dap_origem a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.org_descricao')
    Left = 480
    Top = 16
  end
  object UpdtDAPOrigem: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_DAP_ORIGEM'
      '(ORG_ID, ORG_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_ORG_ID, :NEW_ORG_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_DAP_ORIGEM'
      
        'SET ORG_ID = :NEW_ORG_ID, ORG_DESCRICAO = :NEW_ORG_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE ORG_ID = :OLD_ORG_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_DAP_ORIGEM'
      'WHERE ORG_ID = :OLD_ORG_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ORG_ID, ORG_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_DAP_ORIGEM'
      'WHERE ORG_ID = :ORG_ID')
    Left = 480
    Top = 64
  end
  object DtStDocumentoTipo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDocumentoTipo
    SQL.Strings = (
      'select'
      '  a.oct_id,'
      '  a.oct_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_ocupacao_tipo a'
      'order by'
      '  a.oct_descricao')
    Left = 688
    Top = 16
  end
  object UpdtDocumentoTipo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_OCUPACAO_TIPO'
      '(OCT_ID, OCT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_OCT_ID, :NEW_OCT_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_OCUPACAO_TIPO'
      
        'SET OCT_ID = :NEW_OCT_ID, OCT_DESCRICAO = :NEW_OCT_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE OCT_ID = :OLD_OCT_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_OCUPACAO_TIPO'
      'WHERE OCT_ID = :OLD_OCT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT OCT_ID, OCT_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_OCUPACAO_TIPO'
      'WHERE OCT_ID = :OCT_ID')
    Left = 688
    Top = 64
  end
  object DtStBem: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtBem
    SQL.Strings = (
      'select'
      '  a.bem_id,'
      '  a.bem_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.cls_id'
      'from'
      '  tab_cad_bem a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.bem_descricao')
    Left = 384
    Top = 200
  end
  object UpdtBem: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_BEM'
      '(BEM_ID, BEM_DESCRICAO, CLS_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_BEM_ID, :NEW_BEM_DESCRICAO, :NEW_CLS_ID, :NEW_REG_E' +
        'XCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_BEM'
      
        'SET BEM_ID = :NEW_BEM_ID, BEM_DESCRICAO = :NEW_BEM_DESCRICAO, CL' +
        'S_ID = :NEW_CLS_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE BEM_ID = :OLD_BEM_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_BEM'
      'WHERE BEM_ID = :OLD_BEM_ID')
    FetchRowSQL.Strings = (
      
        'SELECT BEM_ID, BEM_DESCRICAO, CLS_ID, REG_EXCLUIDO, REG_REPLICAD' +
        'O, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_BEM'
      'WHERE BEM_ID = :BEM_ID')
    Left = 384
    Top = 248
  end
  object DtStUnidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtUnidade
    SQL.Strings = (
      'select'
      '  a.uni_id,'
      '  a.uni_sigla,'
      '  a.uni_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_unidade_medida a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.uni_descricao')
    Left = 480
    Top = 200
  end
  object UpdtUnidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_UNIDADE_MEDIDA'
      '(UNI_ID, UNI_SIGLA, UNI_DESCRICAO, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_UNI_ID, :NEW_UNI_SIGLA, :NEW_UNI_DESCRICAO, :NEW_RE' +
        'G_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_UNIDADE_MEDIDA'
      
        'SET UNI_ID = :NEW_UNI_ID, UNI_SIGLA = :NEW_UNI_SIGLA, UNI_DESCRI' +
        'CAO = :NEW_UNI_DESCRICAO, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE UNI_ID = :OLD_UNI_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_UNIDADE_MEDIDA'
      'WHERE UNI_ID = :OLD_UNI_ID')
    FetchRowSQL.Strings = (
      
        'SELECT UNI_ID, UNI_SIGLA, UNI_DESCRICAO, REG_EXCLUIDO, REG_REPLI' +
        'CADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_UNIDADE_MEDIDA'
      'WHERE UNI_ID = :UNI_ID')
    Left = 480
    Top = 248
  end
  object DtStSistemaProdutivo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtSistemaProdutivo
    SQL.Strings = (
      'select'
      '  a.sip_id,'
      '  a.sip_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_sistema_produtivo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.sip_descricao')
    Left = 584
    Top = 200
  end
  object UpdtSistemaProdutivo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_SISTEMA_PRODUTIVO'
      '(SIP_ID, SIP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_SIP_ID, :NEW_SIP_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_SISTEMA_PRODUTIVO'
      
        'SET SIP_ID = :NEW_SIP_ID, SIP_DESCRICAO = :NEW_SIP_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE SIP_ID = :OLD_SIP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_SISTEMA_PRODUTIVO'
      'WHERE SIP_ID = :OLD_SIP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT SIP_ID, SIP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_SISTEMA_PRODUTIVO'
      'WHERE SIP_ID = :SIP_ID')
    Left = 584
    Top = 248
  end
  object DtStDerivado: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDerivado
    SQL.Strings = (
      'select'
      '  a.dev_id,'
      '  a.dev_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.uni_id,'
      '  b.uni_descricao'
      'from'
      
        '  tab_cad_derivado a join tab_cad_unidade_medida b on (a.uni_id ' +
        '= b.uni_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (b.reg_excluido = 0)'
      'order by'
      '  a.dev_descricao')
    Left = 688
    Top = 200
  end
  object UpdtDerivado: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_DERIVADO'
      '(DEV_ID, DEV_DESCRICAO, UNI_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_DEV_ID, :NEW_DEV_DESCRICAO, :NEW_UNI_ID, :NEW_REG_E' +
        'XCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_DERIVADO'
      
        'SET DEV_ID = :NEW_DEV_ID, DEV_DESCRICAO = :NEW_DEV_DESCRICAO, UN' +
        'I_ID = :NEW_UNI_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE DEV_ID = :OLD_DEV_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_DERIVADO'
      'WHERE DEV_ID = :OLD_DEV_ID')
    FetchRowSQL.Strings = (
      
        'SELECT DEV_ID, DEV_DESCRICAO, UNI_ID, REG_EXCLUIDO, REG_REPLICAD' +
        'O, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_DERIVADO'
      'WHERE DEV_ID = :DEV_ID')
    Left = 688
    Top = 248
  end
  object DtStDestino: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDestino
    SQL.Strings = (
      'select'
      '  a.des_id,'
      '  a.des_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_destino a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.des_descricao')
    Left = 384
    Top = 384
  end
  object UpdtDestino: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_DESTINO'
      '(DES_ID, DES_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_DES_ID, :NEW_DES_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_DESTINO'
      
        'SET DES_ID = :NEW_DES_ID, DES_DESCRICAO = :NEW_DES_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE DES_ID = :OLD_DES_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_DESTINO'
      'WHERE DES_ID = :OLD_DES_ID')
    FetchRowSQL.Strings = (
      
        'SELECT DES_ID, DES_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_DESTINO'
      'WHERE DES_ID = :DES_ID')
    Left = 384
    Top = 432
  end
  object DtStProduto: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtProduto
    SQL.Strings = (
      'select'
      '  a.prd_id,'
      '  a.prd_descricao,'
      '  a.div_id,'
      '  b.div_descricao,'
      '  b.div_tipo,'
      '  c.grp_descricao,'
      '  d.cls_descricao,'
      '  e.uni_descricao,'
      '  e.uni_id'
      'from'
      
        '  tab_cad_produto a left join tab_cad_divisao b on (a.div_id = b' +
        '.div_id) left join'
      '  tab_cad_grupo c on (a.grp_id = c.grp_id) left join'
      '  tab_cad_classe d on (a.cls_id = d.cls_id) left join'
      '  tab_cad_unidade_medida e on (a.uni_id = e.uni_id)'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.prd_descricao')
    Left = 480
    Top = 384
  end
  object UpdtProduto: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUTO'
      '(PRD_ID, PRD_DESCRICAO, DIV_ID)'
      'VALUES (:NEW_PRD_ID, :NEW_PRD_DESCRICAO, :NEW_DIV_ID)'
      'RETURNING UNI_ID')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUTO'
      
        'SET PRD_ID = :NEW_PRD_ID, PRD_DESCRICAO = :NEW_PRD_DESCRICAO, DI' +
        'V_ID = :NEW_DIV_ID'
      'WHERE PRD_ID = :OLD_PRD_ID'
      'RETURNING UNI_ID')
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
    Left = 480
    Top = 432
  end
  object DtStOrganizacaoPublico: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtOrganizacaoPublico
    SQL.Strings = (
      'select'
      '  a.pub_id,'
      '  a.pub_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_organizacao_publico a'
      'where'
      '  a.reg_excluido = 0'
      'order by'
      '  a.pub_descricao')
    Left = 584
    Top = 384
  end
  object UpdtOrganizacaoPublico: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO_PUBLICO'
      '(PUB_ID, PUB_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PUB_ID, :NEW_PUB_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO_PUBLICO'
      
        'SET PUB_ID = :NEW_PUB_ID, PUB_DESCRICAO = :NEW_PUB_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PUB_ID = :OLD_PUB_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_ORGANIZACAO_PUBLICO'
      'WHERE PUB_ID = :OLD_PUB_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PUB_ID, PUB_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_ORGANIZACAO_PUBLICO'
      'WHERE PUB_ID = :PUB_ID')
    Left = 584
    Top = 432
  end
  object DtSrcDatum: TDataSource
    DataSet = DtStDatum
    Left = 696
    Top = 480
  end
  object DtStDatum: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDatum
    SQL.Strings = (
      'select'
      '  a.dat_id,'
      '  a.dat_nome,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_cad_datum a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.dat_nome')
    Left = 696
    Top = 384
  end
  object UpdtDatum: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_DATUM'
      '(DAT_ID, DAT_NOME, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_DAT_ID, :NEW_DAT_NOME, :NEW_REG_EXCLUIDO, :NEW_REG_' +
        'REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_DATUM'
      
        'SET DAT_ID = :NEW_DAT_ID, DAT_NOME = :NEW_DAT_NOME, REG_EXCLUIDO' +
        ' = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE DAT_ID = :OLD_DAT_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_DATUM'
      'WHERE DAT_ID = :OLD_DAT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT DAT_ID, DAT_NOME, REG_EXCLUIDO, REG_REPLICADO, REG_USUARI' +
        'O, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_DATUM'
      'WHERE DAT_ID = :DAT_ID')
    Left = 696
    Top = 432
  end
end
