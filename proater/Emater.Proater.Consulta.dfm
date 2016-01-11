inherited FrmProaterConsulta: TFrmProaterConsulta
  Left = 367
  Top = 190
  ActiveControl = nil
  Caption = 'FrmProaterConsulta'
  ClientWidth = 805
  ExplicitLeft = 367
  ExplicitTop = 190
  ExplicitWidth = 821
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 805
    ExplicitWidth = 805
  end
  object SplitterPrincipal: TSplitter [2]
    Left = 534
    Top = 113
    Width = 5
    Height = 360
    Align = alRight
    AutoSnap = False
    Color = clBtnFace
    MinSize = 266
    ParentColor = False
    ResizeStyle = rsUpdate
    ExplicitLeft = 521
    ExplicitTop = 225
    ExplicitHeight = 248
  end
  inherited GrdConsulta: TcxGrid
    Top = 113
    Width = 534
    Height = 360
    ExplicitTop = 113
    ExplicitWidth = 553
    ExplicitHeight = 360
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
        MinWidth = 82
        Options.HorzSizing = False
        Width = 82
      end
      object GrdConsultaTblPRO_PERIODO_FIM: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_PERIODO_FIM'
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
    Width = 805
    Height = 58
    BevelEdges = [beTop]
    BevelKind = bkTile
    ExplicitWidth = 805
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
      Left = 624
      Top = 22
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnClick = BtnConsultarClick
      ExplicitLeft = 624
      ExplicitTop = 22
    end
    inherited BtnLimparParametros: TcxButton
      Left = 712
      Top = 22
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 712
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
      Width = 609
    end
  end
  inherited BarDockControl: TdxBarDockControl
    Width = 805
    ExplicitWidth = 805
  end
  object PnlResumo: TPanel [6]
    Left = 539
    Top = 113
    Width = 266
    Height = 360
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 7
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
  end
  inherited BarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BtnNovo: TdxBarButton
      Description = 'Abre a janela e cria um novo registro de PROATER'
      Hint = 'Novo PROATER'
    end
    inherited BtnEditar: TdxBarButton
      Description = 'Edita o PROATER atualmente selecionado'
      Hint = 'Editar PROATER'
    end
    inherited BtnVisualizar: TdxBarButton
      Description = 'Visualiza o PROATER atualmente selecionado'
      Hint = 'Visualizar PROATER'
    end
    inherited BtnExcluir: TdxBarButton
      Description = 'Exclui o PROATER atualmente selecionado'
      Hint = 'Excluir PROATER'
    end
  end
  inherited QryConsulta: TFDQuery
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
      '  (a.reg_excluido = 0)')
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
      DisplayLabel = 'Per'#237'odo inicial'
      FieldName = 'PRO_PERIODO_INICIO'
      Origin = 'PRO_PERIODO_INICIO'
    end
    object QryConsultaPRO_PERIODO_FIM: TIntegerField
      DisplayLabel = 'Per'#237'odo final'
      FieldName = 'PRO_PERIODO_FIM'
      Origin = 'PRO_PERIODO_FIM'
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
end
