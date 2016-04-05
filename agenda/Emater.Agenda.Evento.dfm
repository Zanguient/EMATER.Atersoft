inherited FrmAgendaEvento: TFrmAgendaEvento
  Top = 137
  ActiveControl = DbDtEdtInicio
  Caption = 'Compromisso'
  ClientHeight = 520
  ClientWidth = 512
  ExplicitTop = 137
  ExplicitWidth = 528
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 496
    Height = 474
    ExplicitWidth = 496
    ExplicitHeight = 501
    ClientRectBottom = 472
    ClientRectRight = 494
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      ExplicitLeft = 0
      ExplicitTop = 24
      ExplicitWidth = 492
      ExplicitHeight = 444
      object GrpBxCompromisso: TcxGroupBox
        Left = 8
        Top = 0
        Caption = 'Compromisso'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Height = 321
        Width = 473
        object Label2: TLabel
          Left = 16
          Top = 113
          Width = 57
          Height = 37
          AutoSize = False
          Caption = 'Detalhes do assunto:'
          Transparent = True
          WordWrap = True
        end
        object Label1: TLabel
          Left = 16
          Top = 89
          Width = 43
          Height = 13
          Caption = 'Assunto:'
          Transparent = True
        end
        object Label5: TLabel
          Left = 16
          Top = 201
          Width = 65
          Height = 37
          AutoSize = False
          Caption = 'Local do compromisso:'
          Transparent = True
          WordWrap = True
        end
        object Label4: TLabel
          Left = 16
          Top = 52
          Width = 20
          Height = 13
          Caption = 'Fim:'
          Transparent = True
        end
        object Label3: TLabel
          Left = 16
          Top = 28
          Width = 29
          Height = 13
          Caption = 'In'#237'cio:'
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 16
          Top = 77
          Width = 449
          Height = 9
          Shape = bsTopLine
        end
        object Label9: TLabel
          Left = 16
          Top = 289
          Width = 38
          Height = 13
          Caption = 'Evento:'
          Transparent = True
        end
        object Label8: TLabel
          Left = 264
          Top = 265
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
          Transparent = True
        end
        object Label6: TLabel
          Left = 16
          Top = 265
          Width = 24
          Height = 13
          Caption = 'Tipo:'
          Transparent = True
        end
        object DbMemoDetalhes: TcxDBMemo
          Left = 88
          Top = 109
          DataBinding.DataField = 'AGN_DETALHE'
          DataBinding.DataSource = DtSrcAgenda
          Properties.ScrollBars = ssVertical
          TabOrder = 5
          Height = 85
          Width = 377
        end
        object DbEdtAssunto: TcxDBTextEdit
          Left = 88
          Top = 85
          DataBinding.DataField = 'AGN_ASSUNTO'
          DataBinding.DataSource = DtSrcAgenda
          TabOrder = 4
          Width = 377
        end
        object DbMemoLocal: TcxDBMemo
          Left = 88
          Top = 197
          DataBinding.DataField = 'AGN_LOCAL'
          DataBinding.DataSource = DtSrcAgenda
          Properties.ScrollBars = ssVertical
          TabOrder = 6
          Height = 60
          Width = 377
        end
        object DbEdtTmFim: TcxDBTimeEdit
          Left = 216
          Top = 48
          DataBinding.DataField = 'AGN_DATA_HORA_FIM'
          DataBinding.DataSource = DtSrcAgenda
          TabOrder = 3
          Width = 81
        end
        object DbDtEdtFim: TcxDBDateEdit
          Left = 88
          Top = 48
          DataBinding.DataField = 'AGN_DATA_HORA_FIM'
          DataBinding.DataSource = DtSrcAgenda
          Properties.ShowTime = False
          TabOrder = 2
          Width = 121
        end
        object DbEdtTmInicio: TcxDBTimeEdit
          Left = 216
          Top = 24
          DataBinding.DataField = 'AGN_DATA_HORA_INICIO'
          DataBinding.DataSource = DtSrcAgenda
          TabOrder = 1
          Width = 81
        end
        object DbDtEdtInicio: TcxDBDateEdit
          Left = 88
          Top = 24
          DataBinding.DataField = 'AGN_DATA_HORA_INICIO'
          DataBinding.DataSource = DtSrcAgenda
          Properties.ShowTime = False
          TabOrder = 0
          Width = 121
        end
        object DbLkpCmbBxEvento: TcxDBLookupComboBox
          Left = 88
          Top = 285
          DataBinding.DataField = 'EVE_ID'
          DataBinding.DataSource = DtSrcAgenda
          Properties.KeyFieldNames = 'EVE_ID'
          Properties.ListColumns = <
            item
              FieldName = 'EVE_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcEvento
          TabOrder = 9
          Width = 169
        end
        object DbLkpCmbBxSituacao: TcxDBLookupComboBox
          Left = 320
          Top = 261
          DataBinding.DataField = 'SIT_ID'
          DataBinding.DataSource = DtSrcAgenda
          Properties.KeyFieldNames = 'SIT_ID'
          Properties.ListColumns = <
            item
              FieldName = 'SIT_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcSituacao
          TabOrder = 8
          Width = 145
        end
        object DbImgCmbBxTipo: TcxDBImageComboBox
          Left = 88
          Top = 261
          DataBinding.DataField = 'AGN_EVENTO_TIPO'
          DataBinding.DataSource = DtSrcAgenda
          Properties.Items = <
            item
              Description = 'Interno'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Externo'
              Value = 2
            end>
          TabOrder = 7
          Width = 169
        end
      end
      object GrpBxRegistro: TcxGroupBox
        Left = 8
        Top = 323
        Caption = 'Informa'#231#245'es de registro'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        Height = 110
        Width = 473
        object Label37: TLabel
          Left = 16
          Top = 57
          Width = 121
          Height = 13
          Caption = 'Data da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoData
          Transparent = True
        end
        object Label56: TLabel
          Left = 152
          Top = 57
          Width = 134
          Height = 13
          Caption = 'Usu'#225'rio da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoUsuario
          Transparent = True
        end
        object Label10: TLabel
          Left = 16
          Top = 17
          Width = 109
          Height = 13
          Caption = 'Escrit'#243'rio respons'#225'vel:'
          Transparent = True
        end
        object Label17: TLabel
          Left = 328
          Top = 17
          Width = 79
          Height = 13
          Caption = 'Data de cria'#231#227'o:'
          FocusControl = DbEdtCriacaoData
          Transparent = True
        end
        object DbEdtModificadoUsuario: TcxDBTextEdit
          Left = 152
          Top = 73
          DataBinding.DataField = 'AGN_MODIFICADO_USUARIO_NOME'
          DataBinding.DataSource = DtSrcAgenda
          Enabled = False
          TabOrder = 3
          Width = 313
        end
        object DbEdtModificadoData: TcxDBTextEdit
          Left = 16
          Top = 73
          DataBinding.DataField = 'REG_MODIFICADO'
          DataBinding.DataSource = DtSrcAgenda
          Enabled = False
          TabOrder = 2
          Width = 129
        end
        object DbLkpCmbBxUnidade: TcxDBLookupComboBox
          Left = 16
          Top = 33
          TabStop = False
          DataBinding.DataField = 'UND_ID'
          DataBinding.DataSource = DtSrcAgenda
          Enabled = False
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'UND_ID'
          Properties.ListColumns = <
            item
              FieldName = 'UND_NOME_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          Properties.ReadOnly = False
          TabOrder = 0
          Width = 305
        end
        object DbEdtCriacaoData: TcxDBTextEdit
          Left = 328
          Top = 33
          DataBinding.DataField = 'AGN_DATA_HORA_REGISTRO'
          DataBinding.DataSource = DtSrcAgenda
          Enabled = False
          TabOrder = 1
          Width = 137
        end
      end
    end
    object TbShtDetalhes: TcxTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        492
        444)
      object Label11: TLabel
        Left = 16
        Top = 21
        Width = 65
        Height = 37
        AutoSize = False
        Caption = 'T'#233'cnicos envolvidos:'
        Transparent = True
        WordWrap = True
      end
      object Label7: TLabel
        Left = 16
        Top = 325
        Width = 65
        Height = 37
        AutoSize = False
        Caption = 'Participantes envolvidos:'
        Transparent = True
        WordWrap = True
      end
      object Label12: TLabel
        Left = 16
        Top = 173
        Width = 73
        Height = 37
        AutoSize = False
        Caption = 'Comunidades envolvidas:'
        Transparent = True
        WordWrap = True
      end
      object GrdFnc: TcxGrid
        Left = 96
        Top = 16
        Width = 373
        Height = 128
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdFncTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcTecnico
          DataController.KeyFieldNames = 'AGF_ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
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
          Styles.ContentEven = DtmRecursoModulo.cxStyleEven
          Styles.Inactive = DtmRecursoModulo.cxStyleSelection
          Styles.Selection = DtmRecursoModulo.cxStyleSelection
          object GrdFncTblFUN_MATRICULA: TcxGridDBColumn
            DataBinding.FieldName = 'FUN_MATRICULA'
            Width = 83
          end
          object GrdFncTblFUN_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'FUN_NOME'
            Width = 300
          end
        end
        object GrdFncLvl: TcxGridLevel
          GridView = GrdFncTbl
        end
      end
      object DbMemoParticipantes: TcxDBMemo
        Left = 96
        Top = 320
        DataBinding.DataField = 'AGN_PARTICIPANTE'
        DataBinding.DataSource = DtSrcAgenda
        Properties.ScrollBars = ssVertical
        TabOrder = 6
        Height = 113
        Width = 385
      end
      object GrdCom: TcxGrid
        Left = 96
        Top = 168
        Width = 373
        Height = 128
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdComTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcComunidade
          DataController.KeyFieldNames = 'AGC_ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.CellHints = True
          OptionsBehavior.ImmediateEditor = False
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnGrouping = False
          OptionsCustomize.ColumnHidingOnGrouping = False
          OptionsCustomize.ColumnMoving = False
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
          Styles.ContentEven = DtmRecursoModulo.cxStyleEven
          Styles.Inactive = DtmRecursoModulo.cxStyleSelection
          Styles.Selection = DtmRecursoModulo.cxStyleSelection
          object GrdComTblCOM_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'COM_NOME'
          end
        end
        object GrdComLvl: TcxGridLevel
          GridView = GrdComTbl
        end
      end
      object BtnFncIncluir: TcxButton
        Left = 16
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Incluir'
        TabOrder = 0
        OnClick = BtnFncIncluirClick
      end
      object BtnFncRemover: TcxButton
        Left = 16
        Top = 88
        Width = 75
        Height = 25
        Caption = 'Remover'
        TabOrder = 1
        OnClick = BtnFncRemoverClick
      end
      object BtnComRemover: TcxButton
        Left = 16
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Remover'
        TabOrder = 4
        OnClick = BtnComRemoverClick
      end
      object BtnComIncluir: TcxButton
        Left = 16
        Top = 208
        Width = 75
        Height = 25
        Caption = 'Incluir'
        TabOrder = 3
        OnClick = BtnComIncluirClick
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 348
    Top = 488
    ModalResult = 0
    OnClick = BtnOKClick
    ExplicitLeft = 348
    ExplicitTop = 488
  end
  inherited BtnCancelar: TcxButton
    Left = 429
    Top = 488
    ExplicitLeft = 429
    ExplicitTop = 488
  end
  object DtSrcAgenda: TDataSource
    DataSet = QryAgenda
    Left = 208
    Top = 248
  end
  object QryAgenda: TFDQuery
    OnNewRecord = QryAgendaNewRecord
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
      '  a.sit_id,'
      '  a.agn_actual_finish, '
      '  a.agn_actual_start, '
      '  a.agn_task_complete_field, '
      '  a.agn_task_index_field, '
      '  a.agn_task_status_field, '
      '  a.agn_task_links_field, '
      '  a.agn_options, '
      '  a.agn_state, '
      '  a.agn_event_type, '
      '  a.agn_label_color, '
      '  a.agn_resource_id, '
      '  a.agn_parent_id,'
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      
        '  '#39'('#39' || coalesce(b.usr_login, '#39'N'#227'o identificado'#39') || '#39') '#39' || co' +
        'alesce(c.fun_nome, '#39#39') as agn_modificado_usuario_nome'
      'from'
      
        '  tab_agn_agenda a join tab_sis_usuario b on (a.reg_usuario = b.' +
        'usr_login) left join'
      '  tab_pes_funcionario c on (b.usr_id = c.usr_id)'
      'where'
      '  a.agn_id = :agn_id')
    Left = 144
    Top = 248
    ParamData = <
      item
        Name = 'AGN_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryAgendaAGN_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_ID'
      Origin = 'AGN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    object QryAgendaAGN_ACTUAL_FINISH: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_ACTUAL_FINISH'
      Origin = 'AGN_ACTUAL_FINISH'
    end
    object QryAgendaAGN_ACTUAL_START: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_ACTUAL_START'
      Origin = 'AGN_ACTUAL_START'
    end
    object QryAgendaAGN_TASK_COMPLETE_FIELD: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_TASK_COMPLETE_FIELD'
      Origin = 'AGN_TASK_COMPLETE_FIELD'
    end
    object QryAgendaAGN_TASK_INDEX_FIELD: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_TASK_INDEX_FIELD'
      Origin = 'AGN_TASK_INDEX_FIELD'
    end
    object QryAgendaAGN_TASK_STATUS_FIELD: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_TASK_STATUS_FIELD'
      Origin = 'AGN_TASK_STATUS_FIELD'
    end
    object QryAgendaAGN_TASK_LINKS_FIELD: TBlobField
      FieldName = 'AGN_TASK_LINKS_FIELD'
      Origin = 'AGN_TASK_LINKS_FIELD'
    end
    object QryAgendaAGN_OPTIONS: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_OPTIONS'
      Origin = 'AGN_OPTIONS'
    end
    object QryAgendaAGN_STATE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_STATE'
      Origin = 'AGN_STATE'
    end
    object QryAgendaAGN_EVENT_TYPE: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_EVENT_TYPE'
      Origin = 'AGN_EVENT_TYPE'
    end
    object QryAgendaAGN_LABEL_COLOR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_LABEL_COLOR'
      Origin = 'AGN_LABEL_COLOR'
    end
    object QryAgendaAGN_RESOURCE_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_RESOURCE_ID'
      Origin = 'AGN_RESOURCE_ID'
    end
    object QryAgendaAGN_PARENT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'AGN_PARENT_ID'
      Origin = 'AGN_PARENT_ID'
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
    object QryAgendaAGN_MODIFICADO_USUARIO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGN_MODIFICADO_USUARIO_NOME'
      Origin = 'AGN_MODIFICADO_USUARIO_NOME'
      ProviderFlags = []
      Size = 153
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
    Left = 176
    Top = 248
  end
  object DtSrcTecnico: TDataSource
    DataSet = QryTecnico
    OnStateChange = DtSrcTecnicoStateChange
    Left = 208
    Top = 280
  end
  object QryTecnico: TFDQuery
    Filtered = True
    Filter = 'REG_EXCLUIDO = 0'
    CachedUpdates = True
    MasterSource = DtSrcAgenda
    MasterFields = 'AGN_ID'
    DetailFields = 'AGN_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    UpdateObject = UpdtTecnico
    SQL.Strings = (
      'select'
      '  a.agf_id,'
      '  a.agn_id,'
      '  a.fun_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.fun_matricula,'
      '  b.fun_nome'
      'from'
      
        '  tab_agn_agenda_funcionario a join tab_pes_funcionario b on (a.' +
        'fun_id = b.fun_id)'
      'where'
      '  (a.agn_id = :agn_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.fun_nome')
    Left = 144
    Top = 280
    ParamData = <
      item
        Name = 'AGN_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QryTecnicoAGF_ID: TLargeintField
      FieldName = 'AGF_ID'
      Origin = 'AGF_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTecnicoAGN_ID: TIntegerField
      FieldName = 'AGN_ID'
      Origin = 'AGN_ID'
      Required = True
    end
    object QryTecnicoFUN_ID: TIntegerField
      FieldName = 'FUN_ID'
      Origin = 'FUN_ID'
      Required = True
    end
    object QryTecnicoREG_EXCLUIDO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryTecnicoREG_REPLICADO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryTecnicoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryTecnicoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryTecnicoFUN_MATRICULA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'FUN_MATRICULA'
      Origin = 'FUN_MATRICULA'
      ProviderFlags = []
    end
    object QryTecnicoFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do t'#233'cnico'
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
  end
  object UpdtTecnico: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_AGN_AGENDA_FUNCIONARIO'
      '(AGF_ID, AGN_ID, FUN_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_AGF_ID, :NEW_AGN_ID, :NEW_FUN_ID, :NEW_REG_EXCLUIDO' +
        ', :NEW_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_AGN_AGENDA_FUNCIONARIO'
      
        'SET AGF_ID = :NEW_AGF_ID, AGN_ID = :NEW_AGN_ID, FUN_ID = :NEW_FU' +
        'N_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE AGF_ID = :OLD_AGF_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_AGN_AGENDA_FUNCIONARIO'
      'WHERE AGF_ID = :OLD_AGF_ID')
    FetchRowSQL.Strings = (
      
        'SELECT AGF_ID, AGN_ID, FUN_ID, REG_EXCLUIDO, REG_REPLICADO, REG_' +
        'USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_AGN_AGENDA_FUNCIONARIO'
      'WHERE AGF_ID = :AGF_ID')
    Left = 176
    Top = 280
  end
  object DtSrcComunidade: TDataSource
    DataSet = QryComunidade
    OnStateChange = DtSrcComunidadeStateChange
    Left = 208
    Top = 312
  end
  object UpdtComunidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_AGN_AGENDA_COMUNIDADE'
      '(AGC_ID, AGN_ID, COM_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_AGC_ID, :NEW_AGN_ID, :NEW_COM_ID, :NEW_REG_EXCLUIDO' +
        ', :NEW_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_AGN_AGENDA_COMUNIDADE'
      
        'SET AGC_ID = :NEW_AGC_ID, AGN_ID = :NEW_AGN_ID, COM_ID = :NEW_CO' +
        'M_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE AGC_ID = :OLD_AGC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_AGN_AGENDA_COMUNIDADE'
      'WHERE AGC_ID = :OLD_AGC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT AGC_ID, AGN_ID, COM_ID, REG_EXCLUIDO, REG_REPLICADO, REG_' +
        'USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_AGN_AGENDA_COMUNIDADE'
      'WHERE AGC_ID = :AGC_ID')
    Left = 176
    Top = 312
  end
  object QryComunidade: TFDQuery
    Filtered = True
    Filter = 'REG_EXCLUIDO = 0'
    CachedUpdates = True
    MasterSource = DtSrcAgenda
    MasterFields = 'AGN_ID'
    DetailFields = 'AGN_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    UpdateObject = UpdtComunidade
    SQL.Strings = (
      'select'
      '  a.agc_id,'
      '  a.agn_id, '
      '  a.com_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.com_nome'
      'from'
      
        '  tab_agn_agenda_comunidade a join tab_cad_comunidade b on (a.co' +
        'm_id = b.com_id)'
      'where'
      '  (a.agn_id = :agn_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.com_nome')
    Left = 144
    Top = 312
    ParamData = <
      item
        Name = 'AGN_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QryComunidadeAGC_ID: TLargeintField
      FieldName = 'AGC_ID'
      Origin = 'AGC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryComunidadeAGN_ID: TIntegerField
      FieldName = 'AGN_ID'
      Origin = 'AGN_ID'
      Required = True
    end
    object QryComunidadeCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
      Required = True
    end
    object QryComunidadeREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryComunidadeREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryComunidadeREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryComunidadeREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryComunidadeCOM_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      ProviderFlags = []
      Size = 100
    end
  end
  object QrySituacao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.sit_id,'
      '  a.sit_descricao'
      'from'
      '  tab_agn_situacao a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.sit_descricao')
    Left = 144
    Top = 344
  end
  object DtSrcSituacao: TDataSource
    DataSet = QrySituacao
    Left = 208
    Top = 344
  end
  object QryEvento: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.eve_id,'
      '  a.eve_descricao'
      'from'
      '  tab_agn_evento a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.eve_descricao')
    Left = 144
    Top = 376
  end
  object DtSrcEvento: TDataSource
    DataSet = QryEvento
    Left = 208
    Top = 376
  end
end
