inherited FrmLogImportar: TFrmLogImportar
  Tag = 1
  Left = 282
  Top = 158
  Hint = 'Janela de importa'#231#227'o de dados da replica'#231#227'o.'
  Caption = 'Importa'#231#227'o de dados'
  ClientHeight = 482
  ClientWidth = 860
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitLeft = 282
  ExplicitTop = 158
  ExplicitWidth = 876
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 13
  object LblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 860
    Height = 33
    Align = alTop
    AutoSize = False
    Caption = ' Importa'#231#227'o de dados pendentes:'
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
    ExplicitLeft = -133
    ExplicitWidth = 786
  end
  object Label1: TLabel
    Left = 8
    Top = 104
    Width = 162
    Height = 13
    Caption = 'Importa'#231#245'es de dados realizadas:'
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
  object GrdConsulta: TcxGrid
    Left = 8
    Top = 120
    Width = 844
    Height = 320
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
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
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 70
      end
      object GrdConsultaTblREP_HORA: TcxGridDBColumn
        DataBinding.FieldName = 'REP_HORA'
        MinWidth = 45
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 45
      end
      object GrdConsultaTblREP_USUARIO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_USUARIO'
        Options.Filtering = False
        Width = 110
      end
      object GrdConsultaTblREP_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_SITUACAO'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DtmRecursoModulo.ImgLstPequenas
        Properties.Items = <
          item
            Description = 'Arquivo de importa'#231#227'o carregado.'
            ImageIndex = 108
            Value = 3
          end
          item
            Description = 'Importa'#231#227'o n'#227'o realizada, existe transa'#231#245'es com erros.'
            ImageIndex = 47
            Value = 4
          end
          item
            Description = 'Importa'#231#227'o realizada com sucesso.'
            ImageIndex = 48
            Value = 5
          end>
        Options.Filtering = False
        Width = 233
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Options.Filtering = False
        Width = 190
      end
      object GrdConsultaTblREP_VERSAO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_VERSAO'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 56
      end
      object GrdConsultaTblREP_QUANTIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'REP_QUANTIDADE'
        Options.Filtering = False
        Width = 54
      end
    end
    object GrdConsultaLvl: TcxGridLevel
      GridView = GrdConsultaTbl
    end
  end
  object BtnIniciarImportacao: TcxButton
    Tag = 1
    Left = 497
    Top = 448
    Width = 122
    Height = 25
    Hint = 'Iniciar impota'#231#227'o'
    Anchors = [akRight, akBottom]
    Caption = '&Iniciar importa'#231#227'o'
    Description = 
      'Inicia e realiza o processo de importa'#231#227'o dos dados carregados p' +
      'ara atualiza'#231#227'o da base de dados.'
    OptionsImage.ImageIndex = 54
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 3
    OnClick = BtnIniciarImportacaoClick
  end
  object BtnCarregarArquivo: TcxButton
    Tag = 1
    Left = 370
    Top = 448
    Width = 121
    Height = 25
    Hint = 'Carregar arquivo'
    Anchors = [akRight, akBottom]
    Caption = '&Carregar arquivo'
    Description = 
      'Carrega um arquivo de importa'#231#227'o de dados de replica'#231#227'o para a b' +
      'ase de dados.'
    OptionsImage.ImageIndex = 121
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 2
    OnClick = BtnCarregarArquivoClick
  end
  object BtnFechar: TcxButton
    Left = 769
    Top = 448
    Width = 82
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.ImageIndex = 87
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    OptionsImage.NumGlyphs = 2
    TabOrder = 5
  end
  object BtnVisualizarImportacao: TcxButton
    Tag = 1
    Left = 626
    Top = 448
    Width = 137
    Height = 25
    Hint = 'Visualizar transa'#231#227'o'
    Anchors = [akRight, akBottom]
    Caption = '&Visualizar transa'#231#245'es'
    Description = 
      'Visualiza em uma janela as transa'#231#245'es que foram importadas ou n'#227 +
      'o com sucesso.'
    OptionsImage.ImageIndex = 66
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 4
    OnClick = BtnVisualizarImportacaoClick
  end
  object GrpBxFiltros: TcxGroupBox
    Left = 8
    Top = 40
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Filtros'
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    Height = 57
    Width = 844
    object Label2: TLabel
      Left = 16
      Top = 20
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label3: TLabel
      Left = 400
      Top = 20
      Width = 98
      Height = 13
      Caption = 'Escrit'#243'rio de origem:'
    end
    object ImgCmbBxSituacao: TcxImageComboBox
      Left = 72
      Top = 16
      Properties.ClearKey = 46
      Properties.Images = DtmRecursoModulo.ImgLstPequenas
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Description = 'Arquivo de importa'#231#227'o carregado.'
          ImageIndex = 108
          Value = 3
        end
        item
          Description = 'Importa'#231#227'o n'#227'o realizada, existe transa'#231#245'es com erros.'
          ImageIndex = 47
          Value = 4
        end
        item
          Description = 'Importa'#231#227'o realizada com sucesso.'
          ImageIndex = 48
          Value = 5
        end>
      Properties.PostPopupValueOnTab = True
      Properties.OnEditValueChanged = ImgCmbBxSituacaoPropertiesEditValueChanged
      TabOrder = 0
      Width = 321
    end
    object LkpCmbBxUnidade: TcxLookupComboBox
      Left = 504
      Top = 16
      Properties.ClearKey = 46
      Properties.DropDownListStyle = lsFixedList
      Properties.DropDownRows = 16
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'UND_ID'
      Properties.ListColumns = <
        item
          FieldName = 'UND_NOME_DESCRICAO'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtSrcUnidade
      Properties.OnEditValueChanged = LkpCmbBxUnidadePropertiesEditValueChanged
      TabOrder = 1
      Width = 249
    end
    object BtnLimpar: TcxButton
      Left = 760
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = BtnLimparClick
    end
  end
  object DtStConsulta: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_LOG_REPLICACAO'
      'SET '
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
      '  c.unt_descricao || '#39' '#39' || b.und_nome as und_nome,'
      '  case a.rep_situacao '
      '    when 3 then '#39'Arquivo de importa'#231#227'o carregado.'#39
      
        '    when 4 then '#39'Importa'#231#227'o n'#227'o realizada, existe transa'#231#245'es com' +
        ' erros.'#39
      '    when 5 then '#39'Importa'#231#227'o realizada com sucesso.'#39
      '  end as rep_situacao_descricao'
      'from'
      
        '  tab_log_replicacao a join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) join'
      '  tab_sis_unidade_tipo c on (b.unt_id = c.unt_id)'
      'where( '
      '  (a.rep_tipo = 1)'
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
      '  c.unt_descricao || '#39' '#39' || b.und_nome as und_nome,'
      '  case a.rep_situacao '
      '    when 3 then '#39'Arquivo de importa'#231#227'o carregado.'#39
      
        '    when 4 then '#39'Importa'#231#227'o n'#227'o realizada, existe transa'#231#245'es com' +
        ' erros.'#39
      '    when 5 then '#39'Importa'#231#227'o realizada com sucesso.'#39
      '  end as rep_situacao_descricao'
      'from'
      
        '  tab_log_replicacao a join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) join'
      '  tab_sis_unidade_tipo c on (b.unt_id = c.unt_id)'
      'where'
      '  (a.rep_tipo = 1)'
      'order by'
      '  a.rep_id')
    AfterScroll = DtStConsultaAfterScroll
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
    object DtStConsultaREP_SITUACAO_DESCRICAO: TFIBStringField
      FieldName = 'REP_SITUACAO_DESCRICAO'
      Size = 54
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object DtSrcConsulta: TDataSource
    DataSet = DtStConsulta
    Left = 112
    Top = 168
  end
  object StrdPrcReplicacaoEntrada: TpFIBStoredProc
    Transaction = DtmConexaoModulo.WriteTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE STP_LOG_REPLICACAO_ENTRADA (?USUARIO, ?UNIDADE' +
        ', ?VERSAO)')
    StoredProcName = 'STP_LOG_REPLICACAO_ENTRADA'
    Left = 80
    Top = 232
    qoAutoCommit = True
    qoStartTransaction = True
  end
  object CdsArquivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspArquivo'
    Left = 80
    Top = 200
  end
  object OpenDialog: TOpenDialog
    DefaultExt = 'emater'
    Filter = 'Arquivo de replica'#231#227'o (*.emater)|*.emater'
    Title = 'Abrir arquivo para importa'#231#227'o de dados'
    Left = 112
    Top = 200
  end
  object StrdPrcReplicacaoCarregar: TpFIBStoredProc
    Transaction = DtmConexaoModulo.WriteTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    SQL.Strings = (
      
        'EXECUTE PROCEDURE STP_LOG_REPLICACAO_CARREGAR (?ID, ?TRANSACAO_I' +
        'D, ?TRANSACAO_USUARIO, ?TRANSACAO_SQL)')
    StoredProcName = 'STP_LOG_REPLICACAO_CARREGAR'
    Left = 80
    Top = 264
    qoStartTransaction = True
  end
  object DtStPentendes: TpFIBDataSet
    SelectSQL.Strings = (
      'select count(*) as total'
      'from tab_log_replicacao a'
      'where '
      '  (a.rep_tipo = 1) and'
      '  (a.rep_situacao in (3,4));')
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
  object StrdPrcReplicacaoImportar: TpFIBStoredProc
    Transaction = DtmConexaoModulo.WriteTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    SQL.Strings = (
      'EXECUTE PROCEDURE STP_LOG_REPLICACAO_IMPORTAR'
      '(:ID)')
    StoredProcName = 'STP_LOG_REPLICACAO_IMPORTAR'
    Left = 80
    Top = 296
    qoStartTransaction = True
  end
  object QryReplicacaoTotal: TpFIBQuery
    Transaction = DtmConexaoModulo.WriteTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    SQL.Strings = (
      'update tab_log_replicacao set '
      
        '  rep_quantidade = (select count(*) from tab_log_replicacao_entr' +
        'ada where rep_id = :id)'
      'where (rep_id = :id)')
    Left = 80
    Top = 328
    qoStartTransaction = True
  end
  object DtSrcUnidade: TDataSource
    DataSet = DtmSistemaModulo.DtStUnidade
    Left = 424
    Top = 248
  end
end
