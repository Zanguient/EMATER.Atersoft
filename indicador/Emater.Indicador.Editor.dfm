inherited FrmIndicadorEditor: TFrmIndicadorEditor
  Left = 386
  Top = 170
  BorderStyle = bsDialog
  Caption = 'Registro do Indicador'
  ClientHeight = 580
  ClientWidth = 582
  Position = poScreenCenter
  ExplicitLeft = 386
  ExplicitTop = 170
  ExplicitWidth = 598
  ExplicitHeight = 619
  PixelsPerInch = 96
  TextHeight = 13
  object cxScrollBox: TcxScrollBox
    Left = 8
    Top = 128
    Width = 564
    Height = 409
    TabOrder = 1
    VertScrollBar.Tracking = True
  end
  object BtnOK: TcxButton
    Left = 411
    Top = 544
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
  end
  object BtnCancelar: TcxButton
    Left = 497
    Top = 544
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
  object PgCntrRegistro: TcxPageControl
    Left = 8
    Top = 8
    Width = 564
    Height = 121
    TabOrder = 0
    Properties.ActivePage = TbShtRegistro
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 119
    ClientRectLeft = 2
    ClientRectRight = 562
    ClientRectTop = 28
    object TbShtRegistro: TcxTabSheet
      Caption = 'Registro'
      ImageIndex = 0
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 27
        Height = 13
        Caption = 'Data:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 88
        Top = 8
        Width = 49
        Height = 13
        Caption = 'Indicador:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 336
        Top = 8
        Width = 48
        Height = 13
        Caption = 'Escrit'#243'rio:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 48
        Width = 78
        Height = 13
        Caption = 'Palavras-chave:'
        Transparent = True
      end
      object DbEdtData: TcxDBTextEdit
        Left = 8
        Top = 24
        DataBinding.DataField = 'REG_DATA'
        DataBinding.DataSource = DtSrcRegistro
        Enabled = False
        TabOrder = 0
        Width = 73
      end
      object DbEdtIndicador: TcxDBTextEdit
        Left = 88
        Top = 24
        DataBinding.DataField = 'IND_DESCRICAO'
        DataBinding.DataSource = DtSrcRegistro
        Enabled = False
        TabOrder = 1
        Width = 241
      end
      object DbEdtEscritorio: TcxDBTextEdit
        Left = 336
        Top = 24
        DataBinding.DataField = 'UND_NOME'
        DataBinding.DataSource = DtSrcRegistro
        Enabled = False
        TabOrder = 2
        Width = 217
      end
      object DbEdtChave: TcxDBTextEdit
        Left = 8
        Top = 64
        DataBinding.DataField = 'IND_CHAVE'
        DataBinding.DataSource = DtSrcRegistro
        Enabled = False
        TabOrder = 3
        Width = 545
      end
    end
  end
  object QryIndicador: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
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
    Left = 56
    Top = 176
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
    Left = 88
    Top = 176
  end
  object DtSrcIndicador: TDataSource
    DataSet = QryIndicador
    Left = 120
    Top = 176
  end
  object QryRegistro: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtIndicador
    SQL.Strings = (
      'select'
      '  a.reg_id,'
      '  a.reg_data,'
      '  a.ind_id,'
      '  a.und_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.und_nome,'
      '  c.ind_descricao,'
      '  c.ind_chave'
      'from'
      
        '  tab_ind_registro  a join tab_sis_unidade b on (a.und_id = b.un' +
        'd_id) join'
      '  tab_ind_indicador c on (a.ind_id = c.ind_id)'
      'where'
      '  (a.reg_excluido = 0) and  (a.reg_id = :reg_id)')
    Left = 56
    Top = 144
    ParamData = <
      item
        Name = 'REG_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = '100000000001'
      end>
    object QryRegistroREG_ID: TLargeintField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryRegistroREG_DATA: TDateField
      FieldName = 'REG_DATA'
      Origin = 'REG_DATA'
      Required = True
    end
    object QryRegistroIND_ID: TIntegerField
      FieldName = 'IND_ID'
      Origin = 'IND_ID'
      Required = True
    end
    object QryRegistroUND_ID: TIntegerField
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
      Required = True
    end
    object QryRegistroREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryRegistroREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryRegistroREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryRegistroREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryRegistroUND_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_NOME'
      Origin = 'UND_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryRegistroIND_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_DESCRICAO'
      Origin = 'IND_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QryRegistroIND_CHAVE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IND_CHAVE'
      Origin = 'IND_CHAVE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  object DtSrcRegistro: TDataSource
    DataSet = QryRegistro
    Left = 120
    Top = 144
  end
end
