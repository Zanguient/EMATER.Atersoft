inherited FrmIndicadorEditor: TFrmIndicadorEditor
  Left = 331
  Top = 111
  BorderStyle = bsDialog
  Caption = 'Editor do Indicador'
  ClientHeight = 580
  ClientWidth = 580
  Position = poScreenCenter
  ExplicitLeft = 331
  ExplicitTop = 111
  ExplicitWidth = 596
  ExplicitHeight = 619
  PixelsPerInch = 96
  TextHeight = 13
  object cxScrollBox: TcxScrollBox
    Left = 8
    Top = 72
    Width = 561
    Height = 465
    TabOrder = 0
    VertScrollBar.Tracking = True
  end
  object BtnOK: TcxButton
    Left = 408
    Top = 544
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
  end
  object BtnCancelar: TcxButton
    Left = 494
    Top = 544
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 2
  end
  object QryIndicador: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtIndicador
    SQL.Strings = (
      'select'
      '  a.rga_id,'
      '  a.rga_valor,'
      '  a.atr_id,'
      '  a.reg_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.atr_descricao,'
      '  b.atr_tipo,'
      '  b.atr_sql_lista,'
      '  b.atr_sql_padrao,'
      '  b.atr_obrigatorio,'
      '  b.atr_somente_leitura,'
      '  b.atr_ordem'
      'from'
      
        '  tab_ind_registro_atributo a join tab_ind_indicador_atributo b ' +
        'on (a.atr_id = b.atr_id)'
      'where'
      '  (a.reg_id = :reg_id)'
      'order by'
      '  b.atr_ordem')
    Left = 40
    Top = 104
    ParamData = <
      item
        Name = 'REG_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = '100000000001'
      end>
    object QryIndicadorRGA_ID: TLargeintField
      FieldName = 'RGA_ID'
      Origin = 'RGA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryIndicadorRGA_VALOR: TMemoField
      FieldName = 'RGA_VALOR'
      Origin = 'RGA_VALOR'
      BlobType = ftMemo
    end
    object QryIndicadorATR_ID: TIntegerField
      FieldName = 'ATR_ID'
      Origin = 'ATR_ID'
      Required = True
    end
    object QryIndicadorREG_ID: TLargeintField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      Required = True
    end
    object QryIndicadorREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryIndicadorREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryIndicadorREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryIndicadorREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryIndicadorATR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATR_DESCRICAO'
      Origin = 'ATR_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QryIndicadorATR_TIPO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ATR_TIPO'
      Origin = 'ATR_TIPO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryIndicadorATR_SQL_LISTA: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'ATR_SQL_LISTA'
      Origin = 'ATR_SQL_LISTA'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryIndicadorATR_SQL_PADRAO: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'ATR_SQL_PADRAO'
      Origin = 'ATR_SQL_PADRAO'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftMemo
    end
    object QryIndicadorATR_OBRIGATORIO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ATR_OBRIGATORIO'
      Origin = 'ATR_OBRIGATORIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryIndicadorATR_SOMENTE_LEITURA: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ATR_SOMENTE_LEITURA'
      Origin = 'ATR_SOMENTE_LEITURA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryIndicadorATR_ORDEM: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'ATR_ORDEM'
      Origin = 'ATR_ORDEM'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object UpdtIndicador: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_IND_REGISTRO_ATRIBUTO'
      '(RGA_ID, RGA_VALOR, ATR_ID, REG_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_RGA_ID, :NEW_RGA_VALOR, :NEW_ATR_ID, :NEW_REG_ID, :' +
        'NEW_REG_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_IND_REGISTRO_ATRIBUTO'
      
        'SET RGA_ID = :NEW_RGA_ID, RGA_VALOR = :NEW_RGA_VALOR, ATR_ID = :' +
        'NEW_ATR_ID, '
      '  REG_ID = :NEW_REG_ID, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE RGA_ID = :OLD_RGA_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_IND_REGISTRO_ATRIBUTO'
      'WHERE RGA_ID = :OLD_RGA_ID')
    FetchRowSQL.Strings = (
      
        'SELECT RGA_ID, RGA_VALOR, ATR_ID, REG_ID, REG_EXCLUIDO, REG_REPL' +
        'ICADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_IND_REGISTRO_ATRIBUTO'
      'WHERE RGA_ID = :RGA_ID')
    Left = 72
    Top = 104
  end
  object DtSrcIndicador: TDataSource
    DataSet = QryIndicador
    Left = 104
    Top = 104
  end
end
