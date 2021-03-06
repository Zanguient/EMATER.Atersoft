inherited FrmProaterConsulta: TFrmProaterConsulta
  Left = 314
  Top = 85
  Hint = 'PROATER :: Consulta'
  ActiveControl = nil
  Caption = 'PROATER :: Consulta'
  ClientHeight = 570
  ClientWidth = 855
  ExplicitWidth = 871
  ExplicitHeight = 609
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 855
    ExplicitWidth = 805
  end
  object SplitterPrincipal: TSplitter [2]
    Left = 584
    Top = 113
    Width = 5
    Height = 457
    Align = alRight
    AutoSnap = False
    Color = clBtnFace
    MinSize = 266
    ParentColor = False
    ResizeStyle = rsUpdate
    ExplicitLeft = 592
    ExplicitHeight = 458
  end
  inherited GrdConsulta: TcxGrid
    Top = 113
    Width = 584
    Height = 457
    ExplicitTop = 113
    ExplicitWidth = 584
    ExplicitHeight = 457
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'PRO_ID'
      object GrdConsultaTblPRO_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_DATA'
        MinWidth = 93
        Options.HorzSizing = False
        Width = 93
      end
      object GrdConsultaTblPRO_PERIODO_INICIO: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_PERIODO_INICIO'
        PropertiesClassName = 'TcxTextEditProperties'
        MinWidth = 82
        Options.HorzSizing = False
        Width = 82
      end
      object GrdConsultaTblPRO_PERIODO_FIM: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_PERIODO_FIM'
        PropertiesClassName = 'TcxTextEditProperties'
        MinWidth = 82
        Options.HorzSizing = False
        Width = 82
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 170
      end
      object GrdConsultaTblREG_USUARIO: TcxGridDBColumn
        DataBinding.FieldName = 'REG_USUARIO'
        Width = 155
      end
      object GrdConsultaTblREG_MODIFICADO: TcxGridDBColumn
        DataBinding.FieldName = 'REG_MODIFICADO'
        Width = 113
      end
    end
  end
  inherited PnlMain: TPanel
    Width = 855
    Height = 58
    BevelEdges = [beTop]
    BevelKind = bkTile
    ExplicitWidth = 855
    ExplicitHeight = 58
    inherited LblValor: TLabel
      Left = 64
      Top = 24
      Visible = False
      ExplicitLeft = 64
      ExplicitTop = 24
    end
    inherited LblOpcao: TLabel
      Left = 344
      Top = 24
      Visible = False
      ExplicitLeft = 344
      ExplicitTop = 24
    end
    object Label2: TLabel [2]
      Left = 8
      Top = 8
      Width = 48
      Height = 13
      Caption = 'Escrit'#243'rio:'
      Transparent = True
    end
    inherited ImgCmbBxOpcao: TcxImageComboBox
      Left = 342
      TabOrder = 4
      Visible = False
      ExplicitLeft = 342
      ExplicitWidth = 155
      Width = 155
    end
    inherited BtnConsultar: TcxButton
      Left = 674
      Top = 22
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = BtnConsultarClick
      ExplicitLeft = 674
      ExplicitTop = 22
    end
    inherited BtnLimparParametros: TcxButton
      Left = 762
      Top = 22
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 762
      ExplicitTop = 22
    end
    inherited EdtValor: TcxTextEdit
      Left = 64
      TabOrder = 3
      Visible = False
      ExplicitLeft = 64
      ExplicitWidth = 273
      Width = 273
    end
    object LkpCmbBxUnidade: TcxLookupComboBox
      Left = 8
      Top = 24
      Anchors = [akLeft, akTop, akRight]
      Properties.KeyFieldNames = 'UND_ID'
      Properties.ListColumns = <
        item
          FieldName = 'UND_NOME_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 0
      OnKeyPress = LkpCmbBxUnidadeKeyPress
      Width = 659
    end
  end
  inherited BarDockControl: TdxBarDockControl
    Width = 855
    ExplicitWidth = 855
  end
  object PnlResumo: TPanel [6]
    Left = 589
    Top = 113
    Width = 266
    Height = 457
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 7
    object SplitterTop: TSplitter
      Left = 0
      Top = 200
      Width = 266
      Height = 5
      Cursor = crVSplit
      Align = alTop
      AutoSnap = False
      Color = clBtnFace
      MinSize = 266
      ParentColor = False
      ResizeStyle = rsUpdate
      ExplicitLeft = 261
      ExplicitWidth = 258
    end
    object GrdResumo: TcxDBVerticalGrid
      Left = 0
      Top = 0
      Width = 266
      Height = 200
      Align = alTop
      Images = DtmRecursoModulo.ImgLstPequenas
      OptionsView.CellEndEllipsis = True
      OptionsView.ScrollBars = ssNone
      OptionsView.RowHeaderWidth = 215
      OptionsView.GridLines = vglNone
      OptionsData.CancelOnExit = False
      OptionsData.Editing = False
      OptionsData.Appending = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      Navigator.Buttons.CustomButtons = <>
      Styles.Inactive = DtmRecursoModulo.cxStyleSelection
      Styles.Selection = DtmRecursoModulo.cxStyleSelection
      Styles.ContentEven = DtmRecursoModulo.cxStyleEven
      TabOrder = 0
      DataController.DataSource = DtSrcConsulta
      Version = 1
      object GrdResumoPRO_QTDE_COMUNIDADE: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_COMUNIDADE'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        Styles.Header = DtmRecursoModulo.cxStyleEven
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object GrdResumoPRO_QTDE_POTENCIAL: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_POTENCIAL'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object GrdResumoPRO_QTDE_ACORDO: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_ACORDO'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        Styles.Header = DtmRecursoModulo.cxStyleEven
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object GrdResumoPRO_QTDE_FUNCIONARIO: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_FUNCIONARIO'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object GrdResumoPRO_QTDE_DEMANDA: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_DEMANDA'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        Styles.Header = DtmRecursoModulo.cxStyleEven
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object GrdResumoPRO_QTDE_MOBILIARIO: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_MOBILIARIO'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object GrdResumoPRO_QTDE_EQUIPAMENTO: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_EQUIPAMENTO'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        Styles.Header = DtmRecursoModulo.cxStyleEven
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object GrdResumoPRO_QTDE_VEICULO: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_VEICULO'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object GrdResumoPRO_QTDE_CUSTO: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_CUSTO'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        Styles.Header = DtmRecursoModulo.cxStyleEven
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object GrdResumoPRO_QTDE_QUALIFICACAO: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_QUALIFICACAO'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object GrdResumoPRO_QTDE_SUBPROJETO: TcxDBEditorRow
        Properties.ImageIndex = 43
        Properties.DataBinding.FieldName = 'PRO_QTDE_SUBPROJETO'
        Properties.OnGetDisplayText = GrdResumoPRO_QTDE_COMUNIDADEPropertiesGetDisplayText
        Properties.OnValidateDrawValue = GrdResumoPRO_QTDE_COMUNIDADEPropertiesValidateDrawValue
        Styles.Header = DtmRecursoModulo.cxStyleEven
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
    end
    object DbTrLstSubprojeto: TcxDBTreeList
      Left = 0
      Top = 205
      Width = 266
      Height = 252
      Align = alClient
      Bands = <
        item
        end>
      DataController.DataSource = DtSrcSubProjetos
      DataController.ImageIndexField = 'IMAGE'
      DataController.ParentField = 'PARENT'
      DataController.KeyField = 'ID'
      DataController.StateIndexField = 'IMAGE'
      Images = DtmRecursoModulo.ImgLstPequenas
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.HeaderHints = True
      OptionsData.Editing = False
      OptionsData.Deleting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.Buttons = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Headers = False
      OptionsView.ShowRoot = False
      RootValue = -1
      Styles.Selection = DtmRecursoModulo.cxStyleSelection
      Styles.ContentEven = DtmRecursoModulo.cxStyleEven
      TabOrder = 1
      object DbTrLstSubprojetoDESCRICAO: TcxDBTreeListColumn
        DataBinding.FieldName = 'DESCRICAO'
        Width = 201
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object DbTrLstSubprojetoQTDE: TcxDBTreeListColumn
        DataBinding.FieldName = 'QTDE'
        Width = 58
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  inherited BarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BrFerramentas: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'BtnNovo'
        end
        item
          Visible = True
          ItemName = 'BtnEditar'
        end
        item
          Visible = True
          ItemName = 'BtnVisualizar'
        end
        item
          Visible = True
          ItemName = 'BtnExcluir'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtnImprimir'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtnLimparResultado'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtnAgrupamento'
        end
        item
          Visible = True
          ItemName = 'BtnResumo'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtnFechar'
        end>
    end
    inherited BtnNovo: TdxBarButton
      Description = 'Criar novo PROATER.'
      Hint = '01. Novo'
    end
    inherited BtnEditar: TdxBarButton
      Description = 'Editar PROATER selecionado.'
      Hint = '02. Editar'
    end
    inherited BtnVisualizar: TdxBarButton
      Description = 'Visualizar PROATER selecionado.'
      Hint = '03. Visualizar'
    end
    inherited BtnExcluir: TdxBarButton
      Description = 'Excluir PROATER selecionado.'
      Hint = '04. Excluir'
    end
    object BtnImprimir: TdxBarButton [5]
      Tag = 1
      Caption = 'Imprimir PROATER'
      Category = 0
      Description = 'Imprimir PROATER.'
      Hint = '05. Imprimir'
      Visible = ivAlways
      ImageIndex = 156
      PaintStyle = psCaptionGlyph
      OnClick = BtnImprimirClick
    end
  end
  inherited PopupMenuConsulta: TdxBarPopupMenu
    ItemLinks = <
      item
        Visible = True
        ItemName = 'BtnNovo'
      end
      item
        Visible = True
        ItemName = 'BtnEditar'
      end
      item
        Visible = True
        ItemName = 'BtnVisualizar'
      end
      item
        Visible = True
        ItemName = 'BtnExcluir'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'BtnImprimir'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'BtnLimparResultado'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'BtnAgrupamento'
      end
      item
        Visible = True
        ItemName = 'BtnResumo'
      end>
  end
  inherited QryConsulta: TFDQuery
    AfterRefresh = QryConsultaAfterRefresh
    SQL.Strings = (
      'select'
      '  a.pro_id,'
      '  a.pro_data,'
      '  a.pro_periodo_inicio,'
      '  a.pro_periodo_fim,'
      '  a.und_id,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.und_nome,'
      '  c.*'
      'from'
      
        '  tab_prd_proater a join tab_sis_unidade b on (a.und_id = b.und_' +
        'id) left join'
      '  stp_prd_proater_validacao(a.pro_id) c on (1 = 1)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    object QryConsultaPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaPRO_DATA: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'PRO_DATA'
      Origin = 'PRO_DATA'
    end
    object QryConsultaPRO_PERIODO_INICIO: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Per'#237'odo inicial'
      FieldName = 'PRO_PERIODO_INICIO'
      Origin = 'PRO_PERIODO_INICIO'
      OnGetText = QryConsultaPRO_PERIODO_INICIOGetText
      OnSetText = QryConsultaPRO_PERIODO_INICIOSetText
    end
    object QryConsultaPRO_PERIODO_FIM: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Per'#237'odo final'
      FieldName = 'PRO_PERIODO_FIM'
      Origin = 'PRO_PERIODO_FIM'
      OnGetText = QryConsultaPRO_PERIODO_INICIOGetText
      OnSetText = QryConsultaPRO_PERIODO_INICIOSetText
    end
    object QryConsultaUND_ID: TIntegerField
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
    end
    object QryConsultaREG_USUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio da '#250'ltima altera'#231#227'o'
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryConsultaREG_MODIFICADO: TSQLTimeStampField
      DisplayLabel = 'Data e hora da '#250'ltima altera'#231#227'o'
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object QryConsultaUND_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'UND_NOME'
      Origin = 'UND_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaPRO_QTDE_COMUNIDADE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Benefici'#225'rios e UPF por comunidade'
      FieldName = 'PRO_QTDE_COMUNIDADE'
      Origin = 'PRO_QTDE_COMUNIDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_POTENCIAL: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Problemas e potencialidades'
      FieldName = 'PRO_QTDE_POTENCIAL'
      Origin = 'PRO_QTDE_POTENCIAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_ACORDO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Acordos, conv'#234'nios e parcerias'
      FieldName = 'PRO_QTDE_ACORDO'
      Origin = 'PRO_QTDE_ACORDO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_FUNCIONARIO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'For'#231'a de trabalho atual'
      FieldName = 'PRO_QTDE_FUNCIONARIO'
      Origin = 'PRO_QTDE_FUNCIONARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_DEMANDA: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Demanda de pessoal'
      FieldName = 'PRO_QTDE_DEMANDA'
      Origin = 'PRO_QTDE_DEMANDA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_MOBILIARIO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Mobili'#225'rio'
      FieldName = 'PRO_QTDE_MOBILIARIO'
      Origin = 'PRO_QTDE_MOBILIARIO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_EQUIPAMENTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Equipamentos'
      FieldName = 'PRO_QTDE_EQUIPAMENTO'
      Origin = 'PRO_QTDE_EQUIPAMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_VEICULO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ve'#237'culos'
      FieldName = 'PRO_QTDE_VEICULO'
      Origin = 'PRO_QTDE_VEICULO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_CUSTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Despesas de custeio'
      FieldName = 'PRO_QTDE_CUSTO'
      Origin = 'PRO_QTDE_CUSTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_QUALIFICACAO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Necessidades de qualifica'#231#227'o'
      FieldName = 'PRO_QTDE_QUALIFICACAO'
      Origin = 'PRO_QTDE_QUALIFICACAO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaPRO_QTDE_SUBPROJETO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Subprojetos'
      FieldName = 'PRO_QTDE_SUBPROJETO'
      Origin = 'PRO_QTDE_SUBPROJETO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER'
      '(PRO_ID, PRO_DATA, PRO_PERIODO_INICIO, PRO_PERIODO_FIM, '
      '  UND_ID, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PRO_ID, :NEW_PRO_DATA, :NEW_PRO_PERIODO_INICIO, :NE' +
        'W_PRO_PERIODO_FIM, '
      '  :NEW_UND_ID, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER'
      
        'SET PRO_ID = :NEW_PRO_ID, PRO_DATA = :NEW_PRO_DATA, PRO_PERIODO_' +
        'INICIO = :NEW_PRO_PERIODO_INICIO, '
      '  PRO_PERIODO_FIM = :NEW_PRO_PERIODO_FIM, UND_ID = :NEW_UND_ID, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PRO_ID = :OLD_PRO_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER'
      'WHERE PRO_ID = :OLD_PRO_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRO_ID, PRO_DATA, PRO_PERIODO_INICIO, PRO_PERIODO_FIM, PR' +
        'O_APRESENTACAO, '
      
        '  PRO_OBSERVACAO, PRO_ESTATISTICA, UND_ID, REG_EXCLUIDO, REG_REP' +
        'LICADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_PROATER'
      'WHERE PRO_ID = :PRO_ID')
  end
  object QrySubProjetos: TFDQuery
    MasterSource = DtSrcConsulta
    MasterFields = 'PRO_ID'
    OnMasterSetValues = QrySubProjetosMasterSetValues
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from stp_prd_subprojeto_validacao (:pro_id)')
    Left = 80
    Top = 240
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
    object QrySubProjetosID: TLargeintField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QrySubProjetosPARENT: TLargeintField
      FieldName = 'PARENT'
      Origin = 'PARENT'
    end
    object QrySubProjetosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 500
    end
    object QrySubProjetosQTDE: TIntegerField
      FieldName = 'QTDE'
      Origin = 'QTDE'
    end
    object QrySubProjetosIMAGE: TIntegerField
      FieldName = 'IMAGE'
      Origin = 'IMAGE'
    end
  end
  object DtSrcSubProjetos: TDataSource
    DataSet = QrySubProjetos
    Left = 144
    Top = 240
  end
end
