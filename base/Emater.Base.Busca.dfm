inherited FrmBaseBusca: TFrmBaseBusca
  Tag = 1
  Left = 302
  Top = 135
  ActiveControl = EdtValor
  BorderStyle = bsDialog
  Caption = 'Busca r'#225'pida'
  ClientHeight = 511
  ClientWidth = 634
  Constraints.MinHeight = 420
  Constraints.MinWidth = 560
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 640
  ExplicitHeight = 540
  DesignSize = (
    634
    511)
  PixelsPerInch = 96
  TextHeight = 13
  object PgCntrlPesquisa: TcxPageControl
    Left = 8
    Top = 8
    Width = 618
    Height = 81
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    Properties.ActivePage = TbShtParametros
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 79
    ClientRectLeft = 2
    ClientRectRight = 616
    ClientRectTop = 28
    object TbShtParametros: TcxTabSheet
      Caption = 'Par'#226'metros para a consulta'
      DesignSize = (
        614
        51)
      object LblValor: TLabel
        Left = 8
        Top = 8
        Width = 50
        Height = 13
        Caption = 'Pesquisar:'
        Transparent = True
      end
      object LblOpcao: TLabel
        Left = 235
        Top = 8
        Width = 40
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Op'#231#245'es:'
        Transparent = True
      end
      object ImgCmbBxOpcao: TcxImageComboBox
        Left = 235
        Top = 24
        Anchors = [akTop, akRight]
        EditValue = '1'
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = 'Somente no in'#237'cio do texto'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Em qualquer parte do texto'
            Value = 2
          end>
        TabOrder = 1
        Width = 198
      end
      object BtnConsultar: TcxButton
        Left = 441
        Top = 22
        Width = 81
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Consultar'
        OptionsImage.NumGlyphs = 2
        TabOrder = 2
      end
      object BtnLimparParametros: TcxButton
        Left = 528
        Top = 22
        Width = 81
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '&Limpar'
        OptionsImage.NumGlyphs = 2
        TabOrder = 3
        OnClick = BtnLimparParametrosClick
      end
      object EdtValor: TcxTextEdit
        Left = 8
        Top = 24
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 0
        OnKeyPress = EdtValorKeyPress
        Width = 217
      end
    end
  end
  object GrdConsulta: TcxGrid
    Left = 8
    Top = 96
    Width = 618
    Height = 375
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
      PopupMenu = PopupMenuBusca
      OnDblClick = GrdConsultaTblDblClick
      OnKeyDown = GrdConsultaTblKeyDown
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
    end
    object GrdConsultaLvl: TcxGridLevel
      GridView = GrdConsultaTbl
    end
  end
  object BtnSelecionar: TcxButton
    Left = 461
    Top = 478
    Width = 85
    Height = 26
    Hint = 'Seleciona o registro atual'
    Anchors = [akRight, akBottom]
    Caption = '&Selecionar'
    Enabled = False
    OptionsImage.NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = BtnSelecionarClick
  end
  object BtnFechar: TcxButton
    Left = 552
    Top = 478
    Width = 75
    Height = 26
    Hint = 'Fecha a janela'
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object BtnNovo: TcxButton
    Tag = 1
    Left = 8
    Top = 479
    Width = 75
    Height = 25
    Hint = '01. Novo'
    Anchors = [akLeft, akBottom]
    Caption = '&Novo'
    OptionsImage.NumGlyphs = 2
    TabOrder = 2
    OnClick = BtnNovoClick
  end
  object BtnEditar: TcxButton
    Tag = 1
    Left = 88
    Top = 479
    Width = 75
    Height = 25
    Hint = '02. Editar'
    Anchors = [akLeft, akBottom]
    Caption = '&Editar...'
    Enabled = False
    OptionsImage.NumGlyphs = 2
    TabOrder = 3
    OnClick = BtnEditarClick
  end
  object BtnVisualizar: TcxButton
    Tag = 1
    Left = 168
    Top = 479
    Width = 75
    Height = 25
    Hint = '03. Visualizar'
    Anchors = [akLeft, akBottom]
    Caption = '&Visualizar...'
    Enabled = False
    OptionsImage.NumGlyphs = 2
    TabOrder = 4
    OnClick = BtnVisualizarClick
  end
  object DtSrcConsulta: TDataSource
    DataSet = QryConsulta
    OnStateChange = DtSrcConsultaStateChange
    Left = 144
    Top = 208
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'PopupMenuBusca')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = DtmRecursoModulo.ImgLstPequenas
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 208
    Top = 208
    DockControlHeights = (
      0
      0
      0
      0)
    object BrBtnNovo: TdxBarButton
      Caption = '&Novo...'
      Category = 0
      Hint = 'Novo'
      Visible = ivAlways
      ImageIndex = 100
      OnClick = BtnNovoClick
    end
    object BrBtnEditar: TdxBarButton
      Caption = '&Editar...'
      Category = 0
      Enabled = False
      Hint = 'Editar'
      Visible = ivAlways
      ImageIndex = 19
      OnClick = BtnEditarClick
    end
    object BtnLimparResultado: TdxBarButton
      Caption = '&Limpar resultado'
      Category = 0
      Hint = 'Limpar resultado'
      Visible = ivAlways
      ImageIndex = 146
      OnClick = BtnLimparResultadoClick
    end
    object BtnAgrupamento: TdxBarButton
      Caption = 'Ex&ibir agrupamento'
      Category = 0
      Hint = 'Exibir agrupamento'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = BtnAgrupamentoClick
    end
    object BtnResumo: TdxBarButton
      Caption = 'Exibir &resumo'
      Category = 0
      Hint = 'Exibir resumo'
      Visible = ivAlways
      ButtonStyle = bsChecked
      OnClick = BtnResumoClick
    end
  end
  object PopupMenuBusca: TdxBarPopupMenu
    BarManager = dxBarManager
    Images = DtmRecursoModulo.ImgLstPequenas
    ItemLinks = <
      item
        Visible = True
        ItemName = 'BrBtnNovo'
      end
      item
        Visible = True
        ItemName = 'BrBtnEditar'
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
    UseOwnFont = False
    Left = 176
    Top = 208
  end
  object QryConsulta: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtConsulta
    Left = 80
    Top = 208
  end
  object UpdtConsulta: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 112
    Top = 208
  end
end
