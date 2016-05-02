inherited FrmLogImportar: TFrmLogImportar
  Tag = 1
  Left = 358
  Top = 183
  Hint = 'Janela de importa'#231#227'o de dados da replica'#231#227'o.'
  BorderStyle = bsDialog
  Caption = 'Importa'#231#227'o de dados'
  ClientHeight = 451
  ClientWidth = 786
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitLeft = 358
  ExplicitTop = 183
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
  end
  object Label1: TLabel
    Left = 8
    Top = 104
    Width = 162
    Height = 13
    Caption = 'Importa'#231#245'es de dados realizadas:'
    Transparent = True
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
    Transparent = True
    Layout = tlCenter
  end
  object GrdConsulta: TcxGrid
    Left = 8
    Top = 120
    Width = 770
    Height = 289
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
    ExplicitWidth = 844
    ExplicitHeight = 320
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
        DataBinding.FieldName = 'REP_DATA_HORA_REGISTRO'
        MinWidth = 130
        Options.Filtering = False
        Options.HorzSizing = False
        Width = 130
      end
      object GrdConsultaTblREP_USUARIO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_USUARIO'
        Options.Filtering = False
        Width = 174
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
            Description = 'Importa'#231#227'o realizada com erros.'
            ImageIndex = 47
            Value = 5
          end
          item
            Description = 'Importa'#231#227'o realizada.'
            ImageIndex = 48
            Value = 4
          end>
        Options.Filtering = False
        Width = 212
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Options.Filtering = False
        Width = 160
      end
      object GrdConsultaTblREP_QUANTIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'REP_TOTAL'
        Options.Filtering = False
        Width = 80
      end
    end
    object GrdConsultaLvl: TcxGridLevel
      GridView = GrdConsultaTbl
    end
  end
  object BtnIniciarImportacao: TcxButton
    Tag = 1
    Left = 423
    Top = 417
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
    ExplicitLeft = 497
    ExplicitTop = 448
  end
  object BtnCarregarArquivo: TcxButton
    Tag = 1
    Left = 296
    Top = 417
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
    ExplicitLeft = 370
    ExplicitTop = 448
  end
  object BtnFechar: TcxButton
    Left = 695
    Top = 417
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
    ExplicitLeft = 769
    ExplicitTop = 448
  end
  object BtnVisualizarImportacao: TcxButton
    Tag = 1
    Left = 552
    Top = 417
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
    ExplicitLeft = 626
    ExplicitTop = 448
  end
  object GrpBxFiltros: TcxGroupBox
    Left = 8
    Top = 40
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Filtros'
    TabOrder = 0
    Transparent = True
    Height = 57
    Width = 770
    object Label2: TLabel
      Left = 16
      Top = 20
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
      Transparent = True
    end
    object Label3: TLabel
      Left = 336
      Top = 20
      Width = 98
      Height = 13
      Caption = 'Escrit'#243'rio de origem:'
      Transparent = True
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
          Description = 'Importa'#231#227'o realizada com erros.'
          ImageIndex = 47
          Value = 5
        end
        item
          Description = 'Importa'#231#227'o realizada.'
          ImageIndex = 48
          Value = 4
        end>
      Properties.PostPopupValueOnTab = True
      Properties.OnEditValueChanged = ImgCmbBxSituacaoPropertiesEditValueChanged
      TabOrder = 0
      Width = 257
    end
    object LkpCmbBxUnidade: TcxLookupComboBox
      Left = 440
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
      Width = 241
    end
    object BtnLimpar: TcxButton
      Left = 688
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Limpar'
      TabOrder = 2
      OnClick = BtnLimparClick
    end
  end
  object DtSrcConsulta: TDataSource
    DataSet = DtStConsulta
    Left = 144
    Top = 168
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
  object DtSrcUnidade: TDataSource
    DataSet = DtmSistemaModulo.DtStUnidade
    Left = 144
    Top = 200
  end
  object DtStPendentes: TFDQuery
    AfterOpen = DtStPendentesAfterOpen
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select count(*) as total'
      'from tab_sis_replicacao a'
      'where '
      '  (a.rep_tipo = '#39'I'#39') and'
      '  (a.rep_situacao in (3,5));')
    Left = 80
    Top = 136
    object DtStPendentesTOTAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object DtStConsulta: TFDQuery
    AfterScroll = DtStConsultaAfterScroll
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtConsulta
    SQL.Strings = (
      'select'
      '  a.rep_id,'
      '  a.rep_data_hora_registro,'
      
        '  '#39'('#39' || d.usr_login || '#39') '#39' || coalesce(e.fun_nome, d.usr_login' +
        ') as rep_usuario,'
      '  a.rep_tipo, '
      '  a.rep_situacao, '
      '  a.rep_total,'
      '  a.rep_arquivo,'
      '  a.rep_data_hora_inicio,'
      '  a.rep_data_hora_fim,'
      '  a.und_id,'
      '  a.usr_id,'
      '  c.unt_descricao || '#39' '#39' || b.und_nome as und_nome,'
      '  case a.rep_situacao '
      '    when 3 then '#39'Arquivo de importa'#231#227'o carregado.'#39
      '    when 4 then '#39'Importa'#231#227'o realizada.'#39
      '    when 5 then '#39'Importa'#231#227'o realizada com erros.'#39
      '  end as rep_situacao_descricao'
      'from'
      
        '  tab_sis_replicacao a join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) join'
      '  tab_sis_unidade_tipo c on (b.unt_id = c.unt_id) left join'
      '  tab_sis_usuario d on (a.usr_id = d.usr_id) left join'
      '  tab_pes_funcionario e on (d.usr_id = e.usr_id)'
      'where'
      '  (a.rep_tipo = '#39'I'#39')'
      'order by'
      '  a.rep_data_hora_registro desc')
    Left = 80
    Top = 168
    object DtStConsultaREP_ID: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'REP_ID'
      Origin = 'REP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '0000'
      EditFormat = '0000'
    end
    object DtStConsultaREP_DATA_HORA_REGISTRO: TSQLTimeStampField
      DisplayLabel = 'Data/hora da importa'#231#227'o'
      FieldName = 'REP_DATA_HORA_REGISTRO'
      Origin = 'REP_DATA_HORA_REGISTRO'
    end
    object DtStConsultaREP_USUARIO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'REP_USUARIO'
      Origin = 'REP_USUARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 153
    end
    object DtStConsultaREP_TIPO: TStringField
      FieldName = 'REP_TIPO'
      Origin = 'REP_TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object DtStConsultaREP_SITUACAO: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'REP_SITUACAO'
      Origin = 'REP_SITUACAO'
      Required = True
    end
    object DtStConsultaREP_TOTAL: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'REP_TOTAL'
      Origin = 'REP_TOTAL'
      Required = True
    end
    object DtStConsultaUND_ID: TIntegerField
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
      Required = True
    end
    object DtStConsultaUND_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escrit'#243'rio de origem'
      FieldName = 'UND_NOME'
      Origin = 'UND_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 151
    end
    object DtStConsultaREP_SITUACAO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'REP_SITUACAO_DESCRICAO'
      Origin = 'REP_SITUACAO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 32
    end
    object DtStConsultaREP_ARQUIVO: TBlobField
      FieldName = 'REP_ARQUIVO'
      Origin = 'REP_ARQUIVO'
    end
    object DtStConsultaREP_DATA_HORA_INICIO: TSQLTimeStampField
      FieldName = 'REP_DATA_HORA_INICIO'
      Origin = 'REP_DATA_HORA_INICIO'
    end
    object DtStConsultaREP_DATA_HORA_FIM: TSQLTimeStampField
      FieldName = 'REP_DATA_HORA_FIM'
      Origin = 'REP_DATA_HORA_FIM'
    end
    object DtStConsultaUSR_ID: TIntegerField
      FieldName = 'USR_ID'
      Origin = 'USR_ID'
      Required = True
    end
  end
  object UpdtConsulta: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_SIS_REPLICACAO'
      
        '(REP_ID, REP_TIPO, REP_DATA_HORA_REGISTRO, REP_DATA_HORA_INICIO,' +
        ' '
      '  REP_DATA_HORA_FIM, REP_SITUACAO, REP_TOTAL, '
      '  REP_ARQUIVO, USR_ID, UND_ID)'
      
        'VALUES (:NEW_REP_ID, :NEW_REP_TIPO, :NEW_REP_DATA_HORA_REGISTRO,' +
        ' :NEW_REP_DATA_HORA_INICIO, '
      '  :NEW_REP_DATA_HORA_FIM, :NEW_REP_SITUACAO, :NEW_REP_TOTAL, '
      '  :NEW_REP_ARQUIVO, :NEW_USR_ID, :NEW_UND_ID)')
    ModifySQL.Strings = (
      'UPDATE TAB_SIS_REPLICACAO'
      
        'SET REP_ID = :NEW_REP_ID, REP_TIPO = :NEW_REP_TIPO, REP_DATA_HOR' +
        'A_REGISTRO = :NEW_REP_DATA_HORA_REGISTRO, '
      
        '  REP_DATA_HORA_INICIO = :NEW_REP_DATA_HORA_INICIO, REP_DATA_HOR' +
        'A_FIM = :NEW_REP_DATA_HORA_FIM, '
      '  REP_SITUACAO = :NEW_REP_SITUACAO, REP_TOTAL = :NEW_REP_TOTAL, '
      
        '  REP_ARQUIVO = :NEW_REP_ARQUIVO, USR_ID = :NEW_USR_ID, UND_ID =' +
        ' :NEW_UND_ID'
      'WHERE REP_ID = :OLD_REP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_SIS_REPLICACAO'
      'WHERE REP_ID = :OLD_REP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT REP_ID, REP_TIPO, REP_DATA_HORA_REGISTRO, REP_DATA_HORA_I' +
        'NICIO, '
      '  REP_DATA_HORA_FIM, REP_SITUACAO, REP_TOTAL, REP_ARQUIVO, '
      '  USR_ID, UND_ID'
      'FROM TAB_SIS_REPLICACAO'
      'WHERE REP_ID = :REP_ID')
    Left = 112
    Top = 168
  end
  object StrdPrcReplicacaoImportar: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_REPLICACAO_IMPORTAR'
    Left = 80
    Top = 232
    ParamData = <
      item
        Position = 1
        Name = 'ID'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Position = 2
        Name = 'ERRO'
        DataType = ftBoolean
        ParamType = ptOutput
      end>
  end
  object QryInserirImportacao: TFDCommand
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    CommandKind = skInsert
    CommandText.Strings = (
      'insert into tab_sis_replicacao ('
      '  rep_id,'
      '  rep_tipo, '
      '  rep_data_hora_registro, '
      '  rep_data_hora_inicio, '
      '  rep_data_hora_fim, '
      '  rep_situacao, '
      '  rep_total, '
      '  rep_arquivo, '
      '  usr_id, '
      '  und_id)'
      'values ('
      '  :rep_id,'
      '  '#39'I'#39','
      '  current_timestamp,'
      '  null,'
      '  null,'
      '  3,'
      '  :rep_total, '
      '  :rep_arquivo, '
      '  :usr_id, '
      '  :und_id)')
    ParamData = <
      item
        Name = 'REP_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REP_TOTAL'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'REP_ARQUIVO'
        DataType = ftBlob
        ParamType = ptInput
      end
      item
        Name = 'USR_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'UND_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    Left = 80
    Top = 264
  end
  object QryInserirTransacao: TFDCommand
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    CommandKind = skUpdate
    CommandText.Strings = (
      'insert into tab_sis_replicacao_transacao ('
      '  rep_id,'
      '  trn_id, '
      '  trn_sql, '
      '  trn_situacao, '
      '  trn_erro)'
      'values ('
      '  :rep_id,'
      '  :trn_id, '
      '  :trn_sql, '
      '  1,'
      '  null)')
    ParamData = <
      item
        Name = 'REP_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TRN_ID'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'TRN_SQL'
        DataType = ftMemo
        ParamType = ptInput
      end>
    Left = 80
    Top = 296
  end
end
