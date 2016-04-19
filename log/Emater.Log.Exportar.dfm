inherited FrmLogExportar: TFrmLogExportar
  Tag = 1
  Left = 332
  Top = 177
  Hint = 'Ferramenta de exporta'#231#227'o de dados para replica'#231#227'o.'
  BorderStyle = bsDialog
  Caption = 'Exporta'#231#227'o de dados'
  ClientHeight = 451
  ClientWidth = 786
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitLeft = 332
  ExplicitTop = 177
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
    Transparent = True
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
      object GrdConsultaTblREP_DATA_HORA_INICIO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_DATA_HORA_INICIO'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object GrdConsultaTblREP_DATA_HORA_FIM: TcxGridDBColumn
        DataBinding.FieldName = 'REP_DATA_HORA_FIM'
        MinWidth = 100
        Options.HorzSizing = False
        Width = 100
      end
      object GrdConsultaTblUSR_LOGIN: TcxGridDBColumn
        DataBinding.FieldName = 'USR_LOGIN'
        Width = 120
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
        Width = 175
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 199
      end
      object GrdConsultaTblREP_TOTAL: TcxGridDBColumn
        DataBinding.FieldName = 'REP_TOTAL'
        HeaderAlignmentHorz = taRightJustify
        Width = 62
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
    Left = 144
    Top = 168
  end
  object CdsArquivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspArquivo'
    Left = 144
    Top = 232
  end
  object DspArquivo: TDataSetProvider
    DataSet = DtStArquivo
    Left = 112
    Top = 232
  end
  object DtStConsulta: TFDQuery
    AfterOpen = DtStConsultaAfterOpen
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtConsulta
    SQL.Strings = (
      ' select'
      '  a.rep_id,'
      '  a.rep_data_hora_inicio,'
      '  a.rep_data_hora_fim,'
      '  d.usr_login,'
      '  a.rep_tipo, '
      '  a.rep_situacao, '
      '  a.rep_total,'
      '  a.rep_arquivo,'
      '  a.usr_id,'
      '  a.und_id,'
      '  c.unt_descricao || '#39' '#39' || b.und_nome as und_nome'
      'from'
      
        '  tab_sis_replicacao a join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) join'
      '  tab_sis_unidade_tipo c on (b.unt_id = c.unt_id) join'
      '  tab_sis_usuario d on (a.usr_id = d.usr_id)'
      'where'
      '  (a.rep_tipo = '#39'E'#39')'
      'order by'
      '  a.rep_id')
    Left = 80
    Top = 168
    object DtStConsultaREP_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'ID'
      FieldName = 'REP_ID'
      Origin = 'REP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStConsultaREP_DATA_HORA_INICIO: TSQLTimeStampField
      DisplayLabel = 'Data e hora inicial'
      FieldName = 'REP_DATA_HORA_INICIO'
      Origin = 'REP_DATA_HORA_INICIO'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object DtStConsultaREP_DATA_HORA_FIM: TSQLTimeStampField
      DisplayLabel = 'Data e hora final'
      FieldName = 'REP_DATA_HORA_FIM'
      Origin = 'REP_DATA_HORA_FIM'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object DtStConsultaUSR_LOGIN: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USR_LOGIN'
      Origin = 'USR_LOGIN'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object DtStConsultaREP_TIPO: TStringField
      DisplayLabel = 'Tipo'
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
      DisplayFormat = ',##0'
    end
    object DtStConsultaREP_ARQUIVO: TBlobField
      DisplayLabel = 'Arquivo'
      FieldName = 'REP_ARQUIVO'
      Origin = 'REP_ARQUIVO'
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
    object DtStConsultaUSR_ID: TIntegerField
      FieldName = 'USR_ID'
      Origin = 'USR_ID'
      Required = True
    end
  end
  object StrdPrcReplicacaoExportar: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_REPLICACAO_EXPORTAR'
    Left = 80
    Top = 200
    ParamData = <
      item
        Position = 1
        Name = 'USUARIO'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DtStPendentes: TFDQuery
    AfterOpen = DtStPendentesAfterOpen
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'execute block returns (total type of dm_integer)'
      'as'
      '  declare variable tabela type of dm_varchar_31;'
      '  declare variable sql type of dm_varchar_2000;'
      '  declare variable total_parcial type of dm_integer;'
      'begin'
      ''
      '  -- Atualiza a lista de tabelas que dever'#227'o ser replicadas:'
      '  delete from tab_sis_replicacao_tabela where (ordem > 0);'
      '  execute procedure stp_sis_replicacao_tabela;'
      ''
      '  -- Inicializa vari'#225'veis:'
      '  total_parcial = 0;'
      '  total = 0;'
      ''
      
        '  -- Percorrendo todas as tabelas para contar as transa'#231#245'es pend' +
        'entes de replica'#231#227'o:'
      '  for'
      '    select a.tabela'
      '    from tab_sis_replicacao_tabela a'
      '    order by a.ordem'
      '    into :tabela'
      '  do'
      '  begin'
      
        '    sql = '#39'select count(*) from '#39' || :tabela || '#39' where (reg_rep' +
        'licado = 0)'#39';'
      '    execute statement sql into :total_parcial;'
      '    total = total + total_parcial;'
      '  end'
      '  suspend;'
      ''
      '  when any do'
      '  begin'
      
        '    exception EXC_SIS_GERAL_DADOS '#39'Erro na tabela '#39' || :tabela |' +
        '| '#39'.'#39';'
      '  end'
      'end')
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
  object DtStArquivo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.trn_id as transacao_id,'
      '  a.trn_sql as transacao_sql,'
      '  b.usr_id as usuario,'
      '  b.und_id as unidade'
      'from'
      
        '  tab_sis_replicacao_transacao a join tab_sis_replicacao b on (a' +
        '.rep_id = b.rep_id)'
      'where'
      '  (a.rep_id = :rep_id)'
      'order by'
      '  a.trn_id')
    Left = 80
    Top = 232
    ParamData = <
      item
        Name = 'REP_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object UpdtConsulta: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_SIS_REPLICACAO'
      '(REP_ID, REP_TIPO, REP_DATA_HORA_INICIO, REP_DATA_HORA_FIM, '
      '  REP_SITUACAO, REP_TOTAL, REP_ARQUIVO, USR_ID, '
      '  UND_ID)'
      
        'VALUES (:NEW_REP_ID, :NEW_REP_TIPO, :NEW_REP_DATA_HORA_INICIO, :' +
        'NEW_REP_DATA_HORA_FIM, '
      
        '  :NEW_REP_SITUACAO, :NEW_REP_TOTAL, :NEW_REP_ARQUIVO, :NEW_USR_' +
        'ID, '
      '  :NEW_UND_ID)')
    ModifySQL.Strings = (
      'UPDATE TAB_SIS_REPLICACAO'
      
        'SET REP_ID = :NEW_REP_ID, REP_TIPO = :NEW_REP_TIPO, REP_DATA_HOR' +
        'A_INICIO = :NEW_REP_DATA_HORA_INICIO, '
      
        '  REP_DATA_HORA_FIM = :NEW_REP_DATA_HORA_FIM, REP_SITUACAO = :NE' +
        'W_REP_SITUACAO, '
      '  REP_TOTAL = :NEW_REP_TOTAL, REP_ARQUIVO = :NEW_REP_ARQUIVO, '
      '  USR_ID = :NEW_USR_ID, UND_ID = :NEW_UND_ID'
      'WHERE REP_ID = :OLD_REP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_SIS_REPLICACAO'
      'WHERE REP_ID = :OLD_REP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT REP_ID, REP_TIPO, REP_DATA_HORA_INICIO, REP_DATA_HORA_FIM' +
        ', REP_SITUACAO, '
      '  REP_TOTAL, REP_ARQUIVO, USR_ID, UND_ID'
      'FROM TAB_SIS_REPLICACAO'
      'WHERE REP_ID = :REP_ID')
    Left = 112
    Top = 168
  end
end
