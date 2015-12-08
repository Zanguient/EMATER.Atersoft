inherited FrmAgenda: TFrmAgenda
  Left = 322
  Top = 152
  Caption = 'Agenda'
  ClientHeight = 581
  ClientWidth = 826
  OnShow = FormShow
  ExplicitLeft = 322
  ExplicitTop = 152
  ExplicitWidth = 842
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  object cxScheduler1: TcxScheduler
    Left = 0
    Top = 0
    Width = 826
    Height = 581
    DateNavigator.RowCount = 2
    ViewWeeks.Active = True
    ViewWeeks.CompressWeekEnd = False
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    OptionsBehavior.SelectOnRightClick = True
    OptionsView.StartOfWeek = swSunday
    OptionsView.ViewPosition = vpRight
    Storage = cxSchedulerDBStorage
    TabOrder = 0
    OnBeforeEditing = cxScheduler1BeforeEditing
    OnEventSelectionChanged = cxScheduler1EventSelectionChanged
    Selection = 35
    Splitters = {
      01000000FB000000900000000001000090000000010000009500000044020000}
    StoredClientBounds = {01000000010000003903000044020000}
  end
  object cxSchedulerDBStorage: TcxSchedulerDBStorage
    Resources.Items = <>
    CustomFields = <>
    Holidays = cxSchedulerHolidays
    DataSource = DtSrcAgenda
    FieldNames.Caption = 'AGN_ASSUNTO'
    FieldNames.EventType = 'AGN_EVENTO_TIPO'
    FieldNames.Finish = 'AGN_DATA_HORA_FIM'
    FieldNames.ID = 'AGN_ID'
    FieldNames.Location = 'AGN_LOCAL'
    FieldNames.Options = 'REG_USUARIO'
    FieldNames.Start = 'AGN_DATA_HORA_INICIO'
    Left = 408
    Top = 296
  end
  object cxSchedulerHolidays: TcxSchedulerHolidays
    Locations = <>
    Left = 440
    Top = 296
  end
  object DtSrcAgenda: TDataSource
    DataSet = QryAgenda
    Left = 376
    Top = 296
  end
  object QryAgenda: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtAgenda
    SQL.Strings = (
      'select'
      '  a.agn_id,'
      '  a.agn_data_hora_inicio, '
      '  a.agn_data_hora_fim, '
      '  a.agn_data_hora_registro, '
      '  a.agn_evento_tipo, '
      '  a.agn_assunto,'
      '  a.agn_detalhe, '
      '  a.agn_local, '
      '  a.agn_participante, '
      '  a.und_id, '
      '  a.eve_id, '
      '  a.sit_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_agn_agenda a')
    Left = 312
    Top = 296
    object QryAgendaAGN_ID: TLargeintField
      Alignment = taLeftJustify
      FieldName = 'AGN_ID'
      Origin = 'AGN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryAgendaAGN_DATA_HORA_INICIO: TSQLTimeStampField
      FieldName = 'AGN_DATA_HORA_INICIO'
      Origin = 'AGN_DATA_HORA_INICIO'
    end
    object QryAgendaAGN_DATA_HORA_FIM: TSQLTimeStampField
      FieldName = 'AGN_DATA_HORA_FIM'
      Origin = 'AGN_DATA_HORA_FIM'
    end
    object QryAgendaAGN_DATA_HORA_REGISTRO: TSQLTimeStampField
      FieldName = 'AGN_DATA_HORA_REGISTRO'
      Origin = 'AGN_DATA_HORA_REGISTRO'
    end
    object QryAgendaAGN_EVENTO_TIPO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'AGN_EVENTO_TIPO'
      Origin = 'AGN_EVENTO_TIPO'
    end
    object QryAgendaAGN_ASSUNTO: TStringField
      FieldName = 'AGN_ASSUNTO'
      Origin = 'AGN_ASSUNTO'
      Size = 100
    end
    object QryAgendaAGN_DETALHE: TMemoField
      FieldName = 'AGN_DETALHE'
      Origin = 'AGN_DETALHE'
      BlobType = ftMemo
    end
    object QryAgendaAGN_LOCAL: TMemoField
      FieldName = 'AGN_LOCAL'
      Origin = 'AGN_LOCAL'
      BlobType = ftMemo
    end
    object QryAgendaAGN_PARTICIPANTE: TMemoField
      FieldName = 'AGN_PARTICIPANTE'
      Origin = 'AGN_PARTICIPANTE'
      BlobType = ftMemo
    end
    object QryAgendaUND_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
    end
    object QryAgendaEVE_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'EVE_ID'
      Origin = 'EVE_ID'
    end
    object QryAgendaSIT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SIT_ID'
      Origin = 'SIT_ID'
    end
    object QryAgendaREG_EXCLUIDO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryAgendaREG_REPLICADO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryAgendaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryAgendaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtAgenda: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_AGN_AGENDA'
      '(AGN_ID, AGN_DATA_HORA_INICIO, AGN_DATA_HORA_FIM, '
      '  AGN_DATA_HORA_REGISTRO, AGN_EVENTO_TIPO, AGN_ASSUNTO, '
      '  AGN_DETALHE, AGN_LOCAL, AGN_PARTICIPANTE, '
      '  UND_ID, EVE_ID, SIT_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_AGN_ID, :NEW_AGN_DATA_HORA_INICIO, :NEW_AGN_DATA_HO' +
        'RA_FIM, '
      
        '  :NEW_AGN_DATA_HORA_REGISTRO, :NEW_AGN_EVENTO_TIPO, :NEW_AGN_AS' +
        'SUNTO, '
      '  :NEW_AGN_DETALHE, :NEW_AGN_LOCAL, :NEW_AGN_PARTICIPANTE, '
      '  :NEW_UND_ID, :NEW_EVE_ID, :NEW_SIT_ID, :NEW_REG_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_AGN_AGENDA'
      
        'SET AGN_ID = :NEW_AGN_ID, AGN_DATA_HORA_INICIO = :NEW_AGN_DATA_H' +
        'ORA_INICIO, '
      
        '  AGN_DATA_HORA_FIM = :NEW_AGN_DATA_HORA_FIM, AGN_DATA_HORA_REGI' +
        'STRO = :NEW_AGN_DATA_HORA_REGISTRO, '
      
        '  AGN_EVENTO_TIPO = :NEW_AGN_EVENTO_TIPO, AGN_ASSUNTO = :NEW_AGN' +
        '_ASSUNTO, '
      '  AGN_DETALHE = :NEW_AGN_DETALHE, AGN_LOCAL = :NEW_AGN_LOCAL, '
      
        '  AGN_PARTICIPANTE = :NEW_AGN_PARTICIPANTE, UND_ID = :NEW_UND_ID' +
        ', '
      
        '  EVE_ID = :NEW_EVE_ID, SIT_ID = :NEW_SIT_ID, REG_EXCLUIDO = :NE' +
        'W_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE AGN_ID = :OLD_AGN_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_AGN_AGENDA'
      'WHERE AGN_ID = :OLD_AGN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT AGN_ID, AGN_DATA_HORA_INICIO, AGN_DATA_HORA_FIM, AGN_DATA' +
        '_HORA_REGISTRO, '
      
        '  AGN_EVENTO_TIPO, AGN_ASSUNTO, AGN_DETALHE, AGN_LOCAL, AGN_PART' +
        'ICIPANTE, '
      
        '  UND_ID, EVE_ID, SIT_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUAR' +
        'IO, '
      '  REG_MODIFICADO'
      'FROM TAB_AGN_AGENDA'
      'WHERE AGN_ID = :AGN_ID')
    Left = 344
    Top = 296
  end
end
