inherited FrmLogExportar: TFrmLogExportar
  Tag = 1
  Left = 302
  Top = 168
  Hint = 'Ferramenta de exporta'#231#227'o de dados para replica'#231#227'o.'
  BorderStyle = bsDialog
  Caption = 'Exporta'#231#227'o de dados'
  ClientHeight = 451
  ClientWidth = 786
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitLeft = 302
  ExplicitTop = 168
  ExplicitWidth = 802
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  object LblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 786
    Height = 33
    Align = alTop
    AutoSize = False
    Caption = ' Exporta'#231#227'o de dados pendentes:'
    Color = 4551200
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object LblQtde: TLabel
    Left = 326
    Top = 0
    Width = 219
    Height = 33
    AutoSize = False
    Caption = '0'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object Label1: TLabel
    Left = 8
    Top = 48
    Width = 162
    Height = 13
    Caption = 'Exporta'#231#245'es de dados realizadas:'
  end
  object GrdConsulta: TcxGrid
    Left = 8
    Top = 64
    Width = 770
    Height = 346
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    object GrdConsultaTbl: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Hint = 'Primeira prescri'#231#227'o'
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Hint = 'Prescri'#231#227'o anterior'
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Hint = 'Pr'#243'xima prescri'#231#227'o'
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Hint = #218'ltima prescri'#231#227'o'
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      FilterBox.CustomizeDialog = False
      DataController.DataSource = DtSrcConsulta
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.InfoText = 'Clique aqui para adicionar um novo registro.'
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.HeaderHeight = 21
      OptionsView.Indicator = True
      Styles.ContentEven = DtmRecursoModulo.cxStyleEven
      Styles.Inactive = DtmRecursoModulo.cxStyleSelection
      Styles.Selection = DtmRecursoModulo.cxStyleSelection
      object GrdConsultaTblREP_ID: TcxGridDBColumn
        DataBinding.FieldName = 'REP_ID'
        Visible = False
        Width = 84
      end
      object GrdConsultaTblREP_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'REP_DATA'
        MinWidth = 70
        Options.HorzSizing = False
        Width = 70
      end
      object GrdConsultaTblREP_HORA: TcxGridDBColumn
        DataBinding.FieldName = 'REP_HORA'
        MinWidth = 40
        Options.HorzSizing = False
        Width = 40
      end
      object GrdConsultaTblREP_USUARIO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_USUARIO'
        Width = 123
      end
      object GrdConsultaTblREP_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_SITUACAO'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DtmRecursoModulo.ImgLstPequenas
        Properties.Items = <
          item
            Description = 'Exporta'#231#227'o preparada'
            ImageIndex = 47
            Value = 1
          end
          item
            Description = 'Arquivo gerado'
            ImageIndex = 48
            Value = 2
          end>
        Width = 180
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 207
      end
      object GrdConsultaTblREP_VERSAO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_VERSAO'
        HeaderAlignmentHorz = taCenter
        Width = 71
      end
      object GrdConsultaTblREP_QUANTIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'REP_QUANTIDADE'
        Width = 65
      end
    end
    object GrdConsultaLvl: TcxGridLevel
      GridView = GrdConsultaTbl
    end
  end
  object BtnFechar: TcxButton
    Left = 695
    Top = 418
    Width = 82
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.ImageIndex = 87
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    OptionsImage.NumGlyphs = 2
    TabOrder = 1
  end
  object BtnGerarArquivo: TcxButton
    Tag = 1
    Left = 575
    Top = 418
    Width = 114
    Height = 25
    Hint = 'Gerar arquivo'
    Anchors = [akTop, akRight]
    Caption = '&Gerar arquivo'
    Description = 'Gera o arquivo de dados exportados para replica'#231#227'o.'
    OptionsImage.ImageIndex = 121
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 2
    OnClick = BtnGerarArquivoClick
  end
  object BtnPrepararExportacao: TcxButton
    Tag = 1
    Left = 423
    Top = 418
    Width = 146
    Height = 25
    Hint = 'Preparar exporta'#231#227'o'
    Anchors = [akTop, akRight]
    Caption = '&Preparar exporta'#231#227'o'
    Description = 'Prepara o processo de exporta'#231#227'o de dados para a replica'#231#227'o.'
    OptionsImage.ImageIndex = 54
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 3
    OnClick = BtnPrepararExportacaoClick
  end
  object DtSrcConsulta: TDataSource
    DataSet = DtStConsulta
    Left = 112
    Top = 168
  end
  object DtStConsulta: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_LOG_REPLICACAO'
      'SET '
      '    REP_ID = :REP_ID,'
      '    REP_DATA = :REP_DATA,'
      '    REP_HORA = :REP_HORA,'
      '    REP_USUARIO = :REP_USUARIO,'
      '    REP_TIPO = :REP_TIPO,'
      '    REP_SITUACAO = :REP_SITUACAO,'
      '    REP_VERSAO = :REP_VERSAO,'
      '    REP_QUANTIDADE = :REP_QUANTIDADE,'
      '    UND_ID = :UND_ID'
      'WHERE'
      '    REP_ID = :OLD_REP_ID'
      '    ')
    RefreshSQL.Strings = (
      'select'
      '  a.rep_id,'
      '  a.rep_data, '
      '  a.rep_hora, '
      '  a.rep_usuario, '
      '  a.rep_tipo, '
      '  a.rep_situacao, '
      '  a.rep_versao, '
      '  a.rep_quantidade, '
      '  a.und_id,'
      '  c.unt_descricao || '#39' '#39' || b.und_nome as und_nome'
      'from'
      
        '  tab_log_replicacao a join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) join'
      '  tab_sis_unidade_tipo c on (b.unt_id = c.unt_id)'
      'where( '
      '  (a.rep_tipo = 2)'
      '     ) and (     A.REP_ID = :OLD_REP_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.rep_id,'
      '  a.rep_data, '
      '  a.rep_hora, '
      '  a.rep_usuario, '
      '  a.rep_tipo, '
      '  a.rep_situacao, '
      '  a.rep_versao, '
      '  a.rep_quantidade, '
      '  a.und_id,'
      '  c.unt_descricao || '#39' '#39' || b.und_nome as und_nome'
      'from'
      
        '  tab_log_replicacao a join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) join'
      '  tab_sis_unidade_tipo c on (b.unt_id = c.unt_id)'
      'where'
      '  (a.rep_tipo = 2)'
      'order by'
      '  a.rep_id')
    AfterOpen = DtStConsultaAfterOpen
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 80
    Top = 168
    object DtStConsultaREP_ID: TFIBBCDField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'REP_ID'
      Size = 0
    end
    object DtStConsultaREP_DATA: TFIBDateField
      DisplayLabel = 'Data'
      FieldName = 'REP_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DtStConsultaREP_HORA: TFIBTimeField
      DisplayLabel = 'Hora'
      FieldName = 'REP_HORA'
      DisplayFormat = 'hh:mm'
    end
    object DtStConsultaREP_USUARIO: TFIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'REP_USUARIO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaREP_TIPO: TFIBSmallIntField
      DisplayLabel = 'Tipo'
      FieldName = 'REP_TIPO'
    end
    object DtStConsultaREP_SITUACAO: TFIBSmallIntField
      Alignment = taLeftJustify
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'REP_SITUACAO'
    end
    object DtStConsultaREP_VERSAO: TFIBIntegerField
      Alignment = taCenter
      DisplayLabel = 'Vers'#227'o'
      FieldName = 'REP_VERSAO'
    end
    object DtStConsultaREP_QUANTIDADE: TFIBIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'REP_QUANTIDADE'
    end
    object DtStConsultaUND_ID: TFIBIntegerField
      FieldName = 'UND_ID'
    end
    object DtStConsultaUND_NOME: TFIBStringField
      DisplayLabel = 'Escrit'#243'rio de origem'
      FieldName = 'UND_NOME'
      Size = 151
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object DtStPentendes: TpFIBDataSet
    SelectSQL.Strings = (
      'select count(*) as total from vwt_log_transacao_pendente')
    AfterOpen = DtStPentendesAfterOpen
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 80
    Top = 136
    object DtStPentendesTOTAL: TFIBIntegerField
      FieldName = 'TOTAL'
    end
  end
  object StrdPrcReplicacaoExportar: TpFIBStoredProc
    Transaction = DtmConexaoModulo.WriteTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE STP_LOG_REPLICACAO_EXPORTAR ')
    StoredProcName = 'STP_LOG_REPLICACAO_EXPORTAR'
    Left = 80
    Top = 200
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object CdsArquivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspArquivo'
    Left = 144
    Top = 232
  end
  object DtStArquivo: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  a.tra_id as transacao_id,'
      '  a.tra_usuario as transacao_usuario,'
      '  a.tra_sql as transacao_sql,'
      '  b.und_id as unidade,'
      '  b.rep_versao as versao'
      'from'
      
        '  tab_log_replicacao_saida a join tab_log_replicacao b on (a.rep' +
        '_id = b.rep_id)'
      'where'
      '  (a.rep_id = :rep_id)'
      'order by'
      '  a.tra_id')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 80
    Top = 232
  end
  object DspArquivo: TDataSetProvider
    DataSet = DtStArquivo
    Left = 112
    Top = 232
  end
end
