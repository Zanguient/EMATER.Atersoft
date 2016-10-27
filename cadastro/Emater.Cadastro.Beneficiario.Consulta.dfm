inherited FrmCadastroBeneficiarioConsulta: TFrmCadastroBeneficiarioConsulta
  Left = 374
  Hint = 'Cadastros :: Benefici'#225'rio de ATER :: Consulta'
  Caption = 'Cadastros :: Benefici'#225'rio de ATER :: Consulta'
  ClientWidth = 816
  ExplicitWidth = 832
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 816
    Caption = '      Consulta de Benefici'#225'rios de ATER'
    ExplicitWidth = 725
  end
  object SplitterPrincipal: TSplitter [2]
    Left = 615
    Top = 191
    Width = 5
    Height = 282
    Align = alRight
    Color = clWhite
    ParentColor = False
    ResizeStyle = rsUpdate
    ExplicitLeft = 521
    ExplicitTop = 225
    ExplicitHeight = 248
  end
  inherited GrdConsulta: TcxGrid
    Top = 191
    Width = 615
    Height = 282
    ExplicitTop = 191
    ExplicitWidth = 615
    ExplicitHeight = 282
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'BEN_ID'
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #39'Total de benefici'#225'rios: '#39' ,##0'
          Kind = skCount
          Column = GrdConsultaTblBEN_NOME
        end>
      object GrdConsultaTblBEN_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_DATA'
        Width = 35
      end
      object GrdConsultaTblBEN_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_SITUACAO'
        Width = 60
      end
      object GrdConsultaTblBEN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_NOME'
        Width = 140
      end
      object GrdConsultaTblBEN_CPF: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_CPF'
        Width = 43
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 61
      end
      object GrdConsultaTblCOM_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'COM_NOME'
        Width = 92
      end
      object GrdConsultaTblFUN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_NOME'
        Width = 93
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Visible = False
        Width = 65
      end
      object GrdConsultaTblBEN_SEXO: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_SEXO'
        Visible = False
      end
      object GrdConsultaTblBEN_IDADE: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_IDADE'
        Visible = False
        HeaderAlignmentHorz = taCenter
      end
      object GrdConsultaTblBEN_ESCOLARIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_ESCOLARIDADE'
        Visible = False
      end
      object GrdConsultaTblBEN_ORGANIZACAO: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_ORGANIZACAO'
        Visible = False
      end
      object GrdConsultaTblBEN_CASADO: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_CASADO'
        Visible = False
      end
      object GrdConsultaTblBEN_CATEGORIA: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_CATEGORIA'
        Visible = False
      end
      object GrdConsultaTblBEN_ATIVIDADE: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_ATIVIDADE'
        Visible = False
      end
      object GrdConsultaTblBEN_UPF_CADASTRADA: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_UPF_CADASTRADA'
        Visible = False
      end
      object GrdConsultaTblBEN_DAP: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_DAP'
        Visible = False
      end
    end
    inherited GrdConsultaLvl: TcxGridLevel
      Caption = 'Listagem de Benefici'#225'rios de ATER'
    end
  end
  inherited PnlMain: TPanel
    Width = 816
    Height = 136
    BevelEdges = [beTop]
    BevelKind = bkTile
    ExplicitWidth = 816
    ExplicitHeight = 136
    DesignSize = (
      816
      134)
    inherited LblValor: TLabel
      Width = 41
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Nome do benefici'#225'rio:'
      EllipsisPosition = epEndEllipsis
      ExplicitWidth = 41
    end
    inherited LblOpcao: TLabel
      Left = 203
      Width = 142
      Anchors = [akTop, akRight]
      Caption = 'Op'#231#245'es de consulta do nome:'
      ExplicitLeft = 203
      ExplicitWidth = 142
    end
    object Label1: TLabel [2]
      Left = 363
      Top = 8
      Width = 23
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'CPF:'
      Transparent = True
      ExplicitLeft = 375
    end
    object Label2: TLabel [3]
      Left = 8
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Escrit'#243'rio:'
      Transparent = True
    end
    object Label4: TLabel [4]
      Left = 272
      Top = 48
      Width = 63
      Height = 13
      Caption = 'Comunidade:'
      Transparent = True
    end
    object Label5: TLabel [5]
      Left = 8
      Top = 88
      Width = 56
      Height = 13
      Caption = 'Categorias:'
      Transparent = True
    end
    object Label6: TLabel [6]
      Left = 272
      Top = 88
      Width = 108
      Height = 13
      Caption = 'Atividades produtivas:'
      Transparent = True
    end
    object Label7: TLabel [7]
      Left = 520
      Top = 88
      Width = 101
      Height = 13
      Caption = 'T'#233'cnico respons'#225'vel:'
      Transparent = True
    end
    object Label8: TLabel [8]
      Left = 467
      Top = 8
      Width = 102
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Data de cadastro de:'
      Transparent = True
      ExplicitLeft = 479
    end
    object Label9: TLabel [9]
      Left = 587
      Top = 8
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'At'#233':'
      Transparent = True
      ExplicitLeft = 599
    end
    object Label10: TLabel [10]
      Left = 56
      Top = 8
      Width = 39
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Apelido:'
      Transparent = True
      ExplicitLeft = 606
    end
    inherited ImgCmbBxOpcao: TcxImageComboBox
      Left = 200
      Anchors = [akTop, akRight]
      TabOrder = 2
      ExplicitLeft = 200
      ExplicitWidth = 155
      Width = 155
    end
    inherited BtnConsultar: TcxButton
      Left = 723
      Top = 64
      Hint = 'Consultar benefici'#225'rios'
      Anchors = [akTop, akRight]
      Description = 
        'Realiza a consulta de benefici'#225'rios com os par'#226'metros informados' +
        '.'
      TabOrder = 11
      OnClick = BtnConsultarClick
      ExplicitLeft = 723
      ExplicitTop = 64
    end
    inherited BtnLimparParametros: TcxButton
      Left = 723
      Top = 100
      Anchors = [akTop, akRight]
      TabOrder = 12
      ExplicitLeft = 723
      ExplicitTop = 100
    end
    inherited EdtValor: TcxTextEdit
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 41
      Width = 41
    end
    object EdtCPF: TcxMaskEdit
      Left = 363
      Top = 24
      Anchors = [akTop, akRight]
      Properties.AlwaysShowBlanksAndLiterals = True
      Properties.EditMask = '999.999.999-99;0; '
      TabOrder = 3
      Text = '           '
      Width = 97
    end
    object LkpCmbBxUnidade: TcxLookupComboBox
      Left = 8
      Top = 64
      Properties.KeyFieldNames = 'UND_ID'
      Properties.ListColumns = <
        item
          FieldName = 'UND_NOME_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.OnEditValueChanged = LkpCmbBxUnidadePropertiesEditValueChanged
      TabOrder = 6
      Width = 257
    end
    object LkpCmbBxComunidade: TcxLookupComboBox
      Left = 272
      Top = 64
      Anchors = [akLeft, akTop, akRight]
      Properties.KeyFieldNames = 'COM_ID'
      Properties.ListColumns = <
        item
          FieldName = 'COM_NOME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtSrcComunidade
      TabOrder = 7
      Width = 436
    end
    object ChckCmbBxCategoria: TcxCheckComboBox
      Left = 8
      Top = 104
      Properties.ShowEmptyText = False
      Properties.Items = <>
      TabOrder = 8
      Width = 257
    end
    object ChckCmbBxAtividade: TcxCheckComboBox
      Left = 272
      Top = 104
      Properties.ShowEmptyText = False
      Properties.Items = <>
      TabOrder = 9
      Width = 241
    end
    object LkpCmbBxTecnico: TcxLookupComboBox
      Left = 520
      Top = 104
      Anchors = [akLeft, akTop, akRight]
      Properties.KeyFieldNames = 'FUN_ID'
      Properties.ListColumns = <
        item
          FieldName = 'FUN_NOME'
        end
        item
          FieldName = 'FUN_MATRICULA'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 10
      Width = 188
    end
    object EdtDataInicio: TcxDateEdit
      Left = 467
      Top = 24
      Anchors = [akTop, akRight]
      TabOrder = 4
      Width = 113
    end
    object EdtDataFim: TcxDateEdit
      Left = 587
      Top = 24
      Anchors = [akTop, akRight]
      TabOrder = 5
      Width = 121
    end
    object EdtApelido: TcxTextEdit
      Left = 56
      Top = 24
      Anchors = [akTop, akRight]
      TabOrder = 1
      OnKeyPress = EdtApelidoKeyPress
      Width = 137
    end
  end
  inherited BarDockControl: TdxBarDockControl
    Width = 816
    ExplicitWidth = 816
  end
  object PnlAtributos: TPanel [6]
    Left = 620
    Top = 191
    Width = 196
    Height = 282
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 7
    object SplitterAtributos: TSplitter
      Left = 0
      Top = 193
      Width = 196
      Height = 5
      Cursor = crVSplit
      Align = alTop
      Color = clWhite
      ParentColor = False
      ResizeStyle = rsUpdate
      ExplicitTop = 205
    end
    object GrdCat: TcxGrid
      Left = 0
      Top = 0
      Width = 196
      Height = 193
      Align = alTop
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      object GrdCatTbl: TcxGridDBTableView
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
        DataController.DataSource = DtSrcCategoria
        DataController.KeyFieldNames = 'CAT_ID'
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
        OptionsSelection.HideSelection = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.HeaderHeight = 21
        Styles.Selection = DtmRecursoModulo.cxStyleSelection
        object GrdCatTblCAT_MARCADO: TcxGridDBColumn
          DataBinding.FieldName = 'CAT_MARCADO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DtmRecursoModulo.ImgLstPequenas
          Properties.Items = <
            item
              ImageIndex = 140
              Value = 140
            end>
          HeaderAlignmentHorz = taCenter
          MinWidth = 25
          Options.Editing = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 25
        end
        object GrdCatTblCAT_DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'CAT_DESCRICAO'
          Width = 169
        end
      end
      object GrdCatLvl: TcxGridLevel
        GridView = GrdCatTbl
      end
    end
    object GrdDiv: TcxGrid
      Left = 0
      Top = 198
      Width = 196
      Height = 84
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      object GrdDivTbl: TcxGridDBTableView
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
        DataController.DataSource = DtSrcDivisao
        DataController.KeyFieldNames = 'DIV_ID'
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
        OptionsSelection.HideSelection = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.HeaderHeight = 21
        Styles.Selection = DtmRecursoModulo.cxStyleSelection
        object GrdDivTblDIV_MARCADO: TcxGridDBColumn
          DataBinding.FieldName = 'DIV_MARCADO'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DtmRecursoModulo.ImgLstPequenas
          Properties.Items = <
            item
              ImageIndex = 140
              Value = 140
            end>
          HeaderAlignmentHorz = taCenter
          MinWidth = 25
          Options.Editing = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 25
        end
        object GrdDivTblDIV_DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'DIV_DESCRICAO'
        end
      end
      object GrdDivLvl: TcxGridLevel
        GridView = GrdDivTbl
      end
    end
  end
  inherited DtSrcConsulta: TDataSource
    Left = 128
    Top = 280
  end
  inherited BarManager: TdxBarManager
    Left = 192
    Top = 280
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
          ItemName = 'BtnLimparResultado'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BtnImprimir'
        end
        item
          Visible = True
          ItemName = 'BtnImprimirFicha'
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
      Description = 'Criar novo benefici'#225'rio.'
      Hint = '01. Novo'
      CloseSubMenuOnClick = False
    end
    inherited BtnEditar: TdxBarButton
      Description = 'Editar benefici'#225'rio selecionado.'
      Hint = '02. Editar'
    end
    inherited BtnVisualizar: TdxBarButton
      Description = 'Visualizar benefici'#225'rio selecionado.'
      Hint = '03. Visualizar'
    end
    inherited BtnExcluir: TdxBarButton
      Description = 'Excluir benefici'#225'rio selecionado.'
      Hint = '04. Excluir'
    end
    object BtnImprimir: TdxBarButton [6]
      Tag = 1
      Caption = 'C&onsulta'
      Category = 0
      Description = 'Imprimir resultado da consulta.'
      Hint = '05. Imprimir consulta'
      Visible = ivAlways
      ImageIndex = 156
      PaintStyle = psCaptionGlyph
      OnClick = BtnImprimirClick
    end
    object BtnImprimirFicha: TdxBarButton [7]
      Tag = 1
      Caption = '&Prontu'#225'rio'
      Category = 0
      Description = 'Imprimir prontu'#225'rio do benefici'#225'rio selecionado.'
      Hint = '06. Imprimir prontu'#225'rio'
      Visible = ivAlways
      ImageIndex = 156
      PaintStyle = psCaptionGlyph
      OnClick = BtnImprimirFichaClick
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
        ItemName = 'BtnLimparResultado'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'BtnImprimir'
      end
      item
        Visible = True
        ItemName = 'BtnImprimirFicha'
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
    Left = 160
    Top = 280
  end
  inherited QryConsulta: TFDQuery
    SQL.Strings = (
      'select'
      '  a.ben_id,'
      '  a.ben_data,'
      '  case a.ben_situacao'
      '    when 1 then '#39'Ativo e atualizado'#39
      '    when 2 then '#39'Ativo e desatualizado'#39
      '    when 3 then '#39'Inativo'#39
      '  end as ben_situacao,'
      '  a.ben_nome,'
      '  a.ben_sexo,'
      '  a.ben_cpf,'
      
        '  (select idade from stp_sis_idade(coalesce(a.ben_nascimento, cu' +
        'rrent_date))) as ben_idade,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.cid_nome,'
      '  c.com_nome,'
      '  d.fun_nome,'
      '  (f.unt_descricao || '#39': '#39' || e.und_nome) as und_nome,'
      '  g.esc_descricao as ben_escolaridade,'
      '  h.org_nome as ben_organizacao,'
      '  case i.ecv_id'
      '    when 100000002 then '#39'Sim'#39
      '    else '#39'N'#227'o'#39
      '  end as ben_casado,'
      
        '  (select categorias from stp_cad_beneficiario_categoria(a.ben_i' +
        'd)) as ben_categoria,'
      
        '  (select atividades from stp_cad_beneficiario_divisao(a.ben_id)' +
        ') as ben_atividade,'
      
        '  case (select count(*) from tab_cad_beneficiario_producao z whe' +
        're z.ben_id = a.ben_id)'
      '    when 0 then '#39'N'#227'o'#39
      '    else '#39'Sim'#39
      '  end as ben_upf_cadastrada,'
      
        '  (select first 1 dap.bdp_dap from tab_cad_beneficiario_dap dap ' +
        'where (dap.bdp_validade > current_date) and (dap.ben_id = a.ben_' +
        'id) and (dap.reg_excluido = 0)) as ben_dap'
      'from'
      
        '  tab_cad_beneficiario a left join tab_dne_cidade b on (a.cid_id' +
        '_endereco = b.cid_id) left join'
      
        '  tab_cad_comunidade c on (a.com_id = c.com_id and c.reg_excluid' +
        'o = 0) left join'
      
        '  tab_pes_funcionario d on (a.fun_id = d.fun_id and d.reg_exclui' +
        'do = 0) left join'
      '  tab_sis_unidade e on (a.und_id = e.und_id) left join'
      '  tab_sis_unidade_tipo f on (e.unt_id = f.unt_id) left join'
      '  tab_cad_escolaridade g on (a.esc_id = g.esc_id) left join'
      '  tab_cad_organizacao h on (a.org_id = h.org_id) left join'
      '  tab_cad_estado_civil i on (a.ecv_id = i.ecv_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    Left = 64
    Top = 280
    object QryConsultaBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaBEN_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'BEN_DATA'
      Origin = 'BEN_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryConsultaBEN_SITUACAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'BEN_SITUACAO'
      Origin = 'BEN_SITUACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 21
    end
    object QryConsultaBEN_NOME: TStringField
      DisplayLabel = 'Nome do benefici'#225'rio'
      FieldName = 'BEN_NOME'
      Origin = 'BEN_NOME'
      Size = 150
    end
    object QryConsultaBEN_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'BEN_SEXO'
      Origin = 'BEN_SEXO'
      FixedChar = True
      Size = 1
    end
    object QryConsultaBEN_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'BEN_CPF'
      Origin = 'BEN_CPF'
      EditMask = '000.000.000-00;0; '
      Size = 11
    end
    object QryConsultaBEN_IDADE: TSmallintField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Idade'
      FieldName = 'BEN_IDADE'
      Origin = 'BEN_IDADE'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryConsultaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryConsultaREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryConsultaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryConsultaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryConsultaCID_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QryConsultaCOM_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'T'#233'cnico respons'#225'vel'
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaUND_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'UND_NOME'
      Origin = 'UND_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 152
    end
    object QryConsultaBEN_ESCOLARIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escolaridade'
      FieldName = 'BEN_ESCOLARIDADE'
      Origin = 'ESC_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaBEN_ORGANIZACAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Organiza'#231#227'o social'
      FieldName = 'BEN_ORGANIZACAO'
      Origin = 'ORG_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaBEN_CASADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Casado'
      FieldName = 'BEN_CASADO'
      Origin = 'BEN_CASADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object QryConsultaBEN_CATEGORIA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'BEN_CATEGORIA'
      Origin = 'BEN_CATEGORIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object QryConsultaBEN_ATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Atividade produtiva'
      FieldName = 'BEN_ATIVIDADE'
      Origin = 'BEN_ATIVIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
    object QryConsultaBEN_UPF_CADASTRADA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UPF cadastrada'
      FieldName = 'BEN_UPF_CADASTRADA'
      Origin = 'BEN_UPF_CADASTRADA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object QryConsultaBEN_DAP: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'N'#186'. DAP'
      FieldName = 'BEN_DAP'
      Origin = 'BEN_DAP'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_BENEFICIARIO'
      '(BEN_ID, BEN_DATA, BEN_NOME, BEN_SEXO, BEN_CPF, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_BEN_ID, :NEW_BEN_DATA, :NEW_BEN_NOME, :NEW_BEN_SEXO' +
        ', :NEW_BEN_CPF, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)'
      'RETURNING BEN_SITUACAO')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_BENEFICIARIO'
      
        'SET BEN_ID = :NEW_BEN_ID, BEN_DATA = :NEW_BEN_DATA, BEN_NOME = :' +
        'NEW_BEN_NOME, '
      
        '  BEN_SEXO = :NEW_BEN_SEXO, BEN_CPF = :NEW_BEN_CPF, REG_EXCLUIDO' +
        ' = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE BEN_ID = :OLD_BEN_ID'
      'RETURNING BEN_SITUACAO')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_BENEFICIARIO'
      'WHERE BEN_ID = :OLD_BEN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT BEN_ID, BEN_DATA, BEN_SITUACAO, BEN_NOME, BEN_NOME_MAE, B' +
        'EN_APELIDO, '
      '  BEN_MEMBROS, BEN_SEXO, BEN_NASCIMENTO, BEN_NACIONALIDADE, '
      
        '  BEN_CPF, BEN_RG_NUMERO, BEN_RG_ORGAO, BEN_RG_DATA, BEN_RIBEIRI' +
        'NHO, '
      
        '  BEN_ENDERECO, BEN_NUMERO, BEN_COMPLEMENTO, BEN_BAIRRO, BEN_CEP' +
        ', '
      '  BEN_TELEFONE, BEN_CELULAR, BEN_EMAIL, CID_ID_NATURALIDADE, '
      '  CID_ID_ENDERECO, ECV_ID, ESC_ID, COM_ID, ORG_ID, FUN_ID, '
      '  UND_ID, MOT_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_BENEFICIARIO'
      'WHERE BEN_ID = :BEN_ID')
    Left = 96
    Top = 280
  end
  object DtSrcComunidade: TDataSource
    Left = 128
    Top = 376
  end
  object DtSrcCategoria: TDataSource
    DataSet = QryCategoria
    Left = 128
    Top = 312
  end
  object DtSrcDivisao: TDataSource
    DataSet = QryDivisao
    Left = 128
    Top = 344
  end
  object dxComponentPrinter: TdxComponentPrinter
    CurrentLink = dxComponentPrinterLink
    PreviewOptions.Caption = 'Listagem de Benefici'#225'rios de ATER'
    Version = 0
    Left = 224
    Top = 280
    object dxComponentPrinterLink: TdxGridReportLink
      Active = True
      Component = GrdConsulta
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.GrayShading = True
      PrinterPage.Header = 10000
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 30000
      PrinterPage.Orientation = poLandscape
      PrinterPage.PageFooter.LeftTitle.Strings = (
        'Data e hora da impress'#227'o: [Data e hora da impress'#227'o]')
      PrinterPage.PageFooter.RightTitle.Strings = (
        'P'#225'gina [P'#225'gina # de # p'#225'ginas]')
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clBlack
      PrinterPage.PageHeader.Font.Height = -15
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = [fsBold]
      PrinterPage.PageHeader.LeftTitle.Strings = (
        
          'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
          ' Estado do Par'#225
        'SISATER Desktop - Sistema de Acompanhamento de ATER')
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.Caption = 'Listagem de Benefici'#225'rios de ATER'
      ReportDocument.CreationDate = 42660.443925659730000000
      OptionsSize.AutoWidth = True
      OptionsView.FilterBar = False
      BuiltInReportLink = True
    end
  end
  object dxPSEngineController: TdxPSEngineController
    Active = True
    DialogsLookAndFeel.NativeStyle = True
    PreviewDialogStyle = 'Standard'
    Left = 256
    Top = 280
  end
  object QryCategoria: TFDQuery
    MasterSource = DtSrcConsulta
    MasterFields = 'BEN_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.ben_id,'
      '  a.cat_id,'
      '  b.cat_descricao,'
      '  140 as cat_marcado'
      'from'
      
        '  tab_cad_beneficiario_categoria a join tab_cad_categoria b on (' +
        'a.cat_id = b.cat_id)'
      'where'
      '  (a.ben_id = :ben_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.cat_descricao')
    Left = 96
    Top = 312
    ParamData = <
      item
        Name = 'BEN_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryCategoriaBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
      Required = True
    end
    object QryCategoriaCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = 'CAT_ID'
      Required = True
    end
    object QryCategoriaCAT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categorias'
      FieldName = 'CAT_DESCRICAO'
      Origin = 'CAT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryCategoriaCAT_MARCADO: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = '#'
      FieldName = 'CAT_MARCADO'
      Origin = 'CAT_MARCADO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QryDivisao: TFDQuery
    MasterSource = DtSrcConsulta
    MasterFields = 'BEN_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.ben_id,'
      '  a.div_id,'
      '  b.div_descricao,'
      '  case b.div_tipo'
      '    when 1 then '#39'Cultura animal'#39
      '    when 2 then '#39'Cultura vegetal'#39
      '    when 3 then '#39'Outras atividades'#39
      '  end as div_tipo,'
      '  140 as div_marcado'
      'from'
      
        '  tab_cad_beneficiario_divisao a join tab_cad_divisao b on (a.di' +
        'v_id = b.div_id)'
      'where'
      '  (a.ben_id = :ben_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.div_descricao')
    Left = 96
    Top = 344
    ParamData = <
      item
        Name = 'BEN_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryDivisaoBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
      Required = True
    end
    object QryDivisaoDIV_ID: TIntegerField
      FieldName = 'DIV_ID'
      Origin = 'DIV_ID'
      Required = True
    end
    object QryDivisaoDIV_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Atividades produtivas'
      FieldName = 'DIV_DESCRICAO'
      Origin = 'DIV_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryDivisaoDIV_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DIV_TIPO'
      Origin = 'DIV_TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 17
    end
    object QryDivisaoDIV_MARCADO: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = '#'
      FieldName = 'DIV_MARCADO'
      Origin = 'DIV_MARCADO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object QryComunidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select com_id, com_nome from stp_cad_comunidade_por_cidade(:cida' +
        'de)')
    Left = 96
    Top = 376
    ParamData = <
      item
        Name = 'CIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryComunidadeCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
    end
    object QryComunidadeCOM_NOME: TStringField
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      Size = 100
    end
  end
end
