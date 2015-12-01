object DtmRelatorioModulo: TDtmRelatorioModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 377
  Width = 601
  object frxPDFExport: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 512
    Top = 24
  end
  object frxHTMLExport: TfrxHTMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    FixedWidth = True
    Background = False
    Centered = False
    EmptyLines = True
    Print = False
    PictureType = gpPNG
    Left = 512
    Top = 72
  end
  object frxJPEGExport: TfrxJPEGExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Left = 512
    Top = 120
  end
  object frxRTFExport: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 512
    Top = 168
  end
  object frxSimpleTextExport: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 512
    Top = 216
  end
  object frxChartObject: TfrxChartObject
    Left = 512
    Top = 312
  end
  object frxCrossObject: TfrxCrossObject
    Left = 512
    Top = 264
  end
  object DtStUnidadeLocal: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  u.und_id,'
      '  u.und_nome,'
      
        '  (select t.unt_descricao from tab_sis_unidade_tipo t where (t.u' +
        'nt_id = u.und_tipo)) as und_tipo,'
      '  u.cid_id'
      'from'
      '  vwt_sis_unidade_local u'
      'order by'
      '  u.und_tipo, u.und_nome')
    Left = 50
    Top = 24
  end
  object DtStProjeto: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.prj_id,'
      '  a.prj_nome'
      'from tab_prd_projeto a'
      'where (a.reg_excluido = 0)'
      'order by a.prj_nome')
    Left = 50
    Top = 72
  end
  object DtStFuncionarioLocal: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  f.fun_id,'
      '  f.fun_nome'
      'from'
      '  tab_pes_funcionario f'
      'where'
      '  (f.reg_excluido = 0) and'
      '  (f.und_id in (select und_id from vwt_sis_unidade_local))'
      'order by'
      '  f.fun_nome')
    Left = 50
    Top = 120
  end
  object DtStMetodologia: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  m.met_id,'
      '  m.met_descricao'
      'from'
      '  tab_prd_metodo m'
      'where'
      '  (m.reg_excluido = 0)'
      'order by'
      '  m.met_descricao')
    Left = 50
    Top = 168
  end
  object DtStCategoria: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCategoria
    SQL.Strings = (
      'select'
      '  a.cat_id,'
      '  a.cat_descricao'
      'from tab_cad_categoria a'
      'where (a.reg_excluido = 0)'
      'order by'
      '  a.cat_descricao')
    Left = 186
    Top = 24
  end
  object UpdtCategoria: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_CATEGORIA'
      '(CAT_ID, CAT_DESCRICAO)'
      'VALUES (:NEW_CAT_ID, :NEW_CAT_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_CATEGORIA'
      'SET CAT_ID = :NEW_CAT_ID, CAT_DESCRICAO = :NEW_CAT_DESCRICAO'
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
    Left = 186
    Top = 72
  end
  object DtStDivisao: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDivisao
    SQL.Strings = (
      'select'
      '  a.div_id,'
      '  a.div_descricao'
      'from tab_cad_divisao a'
      'where (a.reg_excluido = 0)'
      'order by'
      '  a.div_descricao')
    Left = 282
    Top = 24
  end
  object UpdtDivisao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_DIVISAO'
      '(DIV_ID, DIV_DESCRICAO)'
      'VALUES (:NEW_DIV_ID, :NEW_DIV_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_DIVISAO'
      'SET DIV_ID = :NEW_DIV_ID, DIV_DESCRICAO = :NEW_DIV_DESCRICAO'
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
    Left = 282
    Top = 72
  end
  object DtStComunidade: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtComunidade
    SQL.Strings = (
      'select'
      '  c.com_id,'
      '  c.com_nome'
      'from'
      '  tab_cad_comunidade c'
      'where'
      '  (c.reg_excluido = 0) and'
      '  (c.cid_id = :cid_id)'
      'order by'
      '  c.com_nome')
    Left = 378
    Top = 24
    ParamData = <
      item
        Name = 'CID_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object UpdtComunidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_COMUNIDADE'
      '(COM_ID, COM_NOME)'
      'VALUES (:NEW_COM_ID, :NEW_COM_NOME)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_COMUNIDADE'
      'SET COM_ID = :NEW_COM_ID, COM_NOME = :NEW_COM_NOME'
      'WHERE COM_ID = :OLD_COM_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_COMUNIDADE'
      'WHERE COM_ID = :OLD_COM_ID')
    FetchRowSQL.Strings = (
      
        'SELECT COM_ID, COM_NOME, COM_LOCALIZACAO, CID_ID, REG_EXCLUIDO, ' +
        'REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_COMUNIDADE'
      'WHERE COM_ID = :COM_ID')
    Left = 378
    Top = 72
  end
  object DtStGrupo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.grp_id,'
      '  a.grp_descricao'
      'from tab_cad_grupo a'
      'where (a.reg_excluido = 0)'
      'order by'
      '  a.grp_descricao')
    Left = 50
    Top = 216
  end
  object DtStCultura: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtCultura
    SQL.Strings = (
      'select'
      '  a.prd_id,'
      '  a.prd_descricao'
      'from tab_cad_produto a'
      'where (a.reg_excluido = 0)'
      'order by'
      '  a.prd_descricao')
    Left = 186
    Top = 168
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
    Left = 186
    Top = 216
  end
  object DtStClasse: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtClasse
    SQL.Strings = (
      'select'
      '  a.cls_id,'
      '  a.cls_descricao'
      'from tab_cad_classe a'
      'where (a.reg_excluido = 0)'
      'order by'
      '  a.cls_descricao')
    Left = 282
    Top = 168
  end
  object UpdtClasse: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_CLASSE'
      '(CLS_ID, CLS_DESCRICAO)'
      'VALUES (:NEW_CLS_ID, :NEW_CLS_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_CLASSE'
      'SET CLS_ID = :NEW_CLS_ID, CLS_DESCRICAO = :NEW_CLS_DESCRICAO'
      'WHERE CLS_ID = :OLD_CLS_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_CLASSE'
      'WHERE CLS_ID = :OLD_CLS_ID')
    FetchRowSQL.Strings = (
      
        'SELECT CLS_ID, CLS_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_CLASSE'
      'WHERE CLS_ID = :CLS_ID')
    Left = 282
    Top = 216
  end
  object DtStSistema: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtSistema
    SQL.Strings = (
      'select'
      '  a.sip_id,'
      '  a.sip_descricao'
      'from tab_cad_sistema_produtivo a'
      'where (a.reg_excluido = 0)'
      'order by'
      '  a.sip_descricao')
    Left = 378
    Top = 168
  end
  object UpdtSistema: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_SISTEMA_PRODUTIVO'
      '(SIP_ID, SIP_DESCRICAO)'
      'VALUES (:NEW_SIP_ID, :NEW_SIP_DESCRICAO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_SISTEMA_PRODUTIVO'
      'SET SIP_ID = :NEW_SIP_ID, SIP_DESCRICAO = :NEW_SIP_DESCRICAO'
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
    Left = 378
    Top = 216
  end
end
