inherited FrmAgenda: TFrmAgenda
  Left = 322
  Top = 152
  Caption = 'Agenda'
  ClientHeight = 581
  ClientWidth = 826
  WindowState = wsNormal
  OnShow = FormShow
  ExplicitLeft = 8
  ExplicitTop = 8
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
    Selection = 56
    Splitters = {
      01000000FB000000900000000001000090000000010000009500000044020000}
    StoredClientBounds = {01000000010000003903000044020000}
  end
  object cxSchedulerDBStorage: TcxSchedulerDBStorage
    Resources.Items = <>
    CustomFields = <>
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
  object cxSchedulerHolidays1: TcxSchedulerHolidays
    Locations = <>
    Left = 440
    Top = 296
  end
  object DtStAgenda: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_AGN_AGENDA'
      'SET '
      '    AGN_DATA_HORA_INICIO = :AGN_DATA_HORA_INICIO,'
      '    AGN_DATA_HORA_FIM = :AGN_DATA_HORA_FIM,'
      '    AGN_DATA_HORA_REGISTRO = :AGN_DATA_HORA_REGISTRO,'
      '    AGN_EVENTO_TIPO = :AGN_EVENTO_TIPO,'
      '    AGN_ASSUNTO = :AGN_ASSUNTO,'
      '    AGN_LOCAL = :AGN_LOCAL,'
      '    AGN_PARTICIPANTE = :AGN_PARTICIPANTE,'
      '    UND_ID = :UND_ID,'
      '    USR_ID = :USR_ID,'
      '    EVE_ID = :EVE_ID,'
      '    SIT_ID = :SIT_ID,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    AGN_ID = :OLD_AGN_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_AGN_AGENDA'
      'WHERE'
      '        AGN_ID = :OLD_AGN_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_AGN_AGENDA('
      '    AGN_ID,'
      '    AGN_DATA_HORA_INICIO,'
      '    AGN_DATA_HORA_FIM,'
      '    AGN_DATA_HORA_REGISTRO,'
      '    AGN_EVENTO_TIPO,'
      '    AGN_ASSUNTO,'
      '    AGN_LOCAL,'
      '    AGN_PARTICIPANTE,'
      '    UND_ID,'
      '    USR_ID,'
      '    EVE_ID,'
      '    SIT_ID,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :AGN_ID,'
      '    :AGN_DATA_HORA_INICIO,'
      '    :AGN_DATA_HORA_FIM,'
      '    :AGN_DATA_HORA_REGISTRO,'
      '    :AGN_EVENTO_TIPO,'
      '    :AGN_ASSUNTO,'
      '    :AGN_LOCAL,'
      '    :AGN_PARTICIPANTE,'
      '    :UND_ID,'
      '    :USR_ID,'
      '    :EVE_ID,'
      '    :SIT_ID,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.agn_id,'
      '  a.agn_data_hora_inicio, '
      '  a.agn_data_hora_fim, '
      '  a.agn_data_hora_registro, '
      '  a.agn_evento_tipo, '
      '  a.agn_assunto, '
      '  a.agn_local, '
      '  a.agn_participante, '
      '  a.und_id, '
      '  a.usr_id, '
      '  a.eve_id, '
      '  a.sit_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_agn_agenda a'
      ' WHERE '
      '        A.AGN_ID = :OLD_AGN_ID'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.agn_id,'
      '  a.agn_data_hora_inicio, '
      '  a.agn_data_hora_fim, '
      '  a.agn_data_hora_registro, '
      '  a.agn_evento_tipo, '
      '  a.agn_assunto, '
      '  a.agn_local, '
      '  a.agn_participante, '
      '  a.und_id, '
      '  a.usr_id, '
      '  a.eve_id, '
      '  a.sit_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_agn_agenda a')
    BeforePost = DtStAgendaBeforePost
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 344
    Top = 296
    object DtStAgendaAGN_ID: TFIBBCDField
      FieldName = 'AGN_ID'
      Size = 0
    end
    object DtStAgendaAGN_DATA_HORA_INICIO: TFIBDateTimeField
      FieldName = 'AGN_DATA_HORA_INICIO'
    end
    object DtStAgendaAGN_DATA_HORA_FIM: TFIBDateTimeField
      FieldName = 'AGN_DATA_HORA_FIM'
    end
    object DtStAgendaAGN_DATA_HORA_REGISTRO: TFIBDateTimeField
      FieldName = 'AGN_DATA_HORA_REGISTRO'
    end
    object DtStAgendaAGN_EVENTO_TIPO: TFIBSmallIntField
      FieldName = 'AGN_EVENTO_TIPO'
    end
    object DtStAgendaAGN_ASSUNTO: TFIBMemoField
      FieldName = 'AGN_ASSUNTO'
      BlobType = ftMemo
      Size = 8
    end
    object DtStAgendaAGN_LOCAL: TFIBMemoField
      FieldName = 'AGN_LOCAL'
      BlobType = ftMemo
      Size = 8
    end
    object DtStAgendaAGN_PARTICIPANTE: TFIBMemoField
      FieldName = 'AGN_PARTICIPANTE'
      BlobType = ftMemo
      Size = 8
    end
    object DtStAgendaUND_ID: TFIBIntegerField
      FieldName = 'UND_ID'
    end
    object DtStAgendaUSR_ID: TFIBIntegerField
      FieldName = 'USR_ID'
    end
    object DtStAgendaEVE_ID: TFIBIntegerField
      FieldName = 'EVE_ID'
    end
    object DtStAgendaSIT_ID: TFIBIntegerField
      FieldName = 'SIT_ID'
    end
    object DtStAgendaREG_EXCLUIDO: TFIBBooleanField
      FieldName = 'REG_EXCLUIDO'
    end
    object DtStAgendaREG_REPLICADO: TFIBBooleanField
      FieldName = 'REG_REPLICADO'
    end
    object DtStAgendaREG_USUARIO: TFIBStringField
      FieldName = 'REG_USUARIO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStAgendaREG_MODIFICADO: TFIBDateTimeField
      FieldName = 'REG_MODIFICADO'
    end
  end
  object DtSrcAgenda: TDataSource
    DataSet = DtStAgenda
    Left = 376
    Top = 296
  end
end
