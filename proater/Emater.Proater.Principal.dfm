inherited FrmProaterPrincipal: TFrmProaterPrincipal
  Left = 337
  Top = 143
  Caption = 'PROATER'
  ClientHeight = 590
  ClientWidth = 806
  ExplicitLeft = 337
  ExplicitTop = 143
  ExplicitWidth = 822
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 644
    Top = 558
    ExplicitLeft = 644
    ExplicitTop = 558
  end
  inherited PgCntrlMain: TcxPageControl
    Width = 791
    Height = 544
    ExplicitWidth = 791
    ExplicitHeight = 544
    ClientRectBottom = 542
    ClientRectRight = 789
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitWidth = 787
      ExplicitHeight = 514
      object Label30: TLabel
        Left = 136
        Top = 17
        Width = 48
        Height = 13
        Caption = 'Escrit'#243'rio:'
        Transparent = True
      end
      object Label12: TLabel
        Tag = 2
        Left = 8
        Top = 16
        Width = 92
        Height = 13
        Caption = 'Data do PROATER:'
        FocusControl = DbDtEdtPROATER
        Transparent = True
      end
      object Label37: TLabel
        Left = 648
        Top = 17
        Width = 81
        Height = 13
        Caption = #218'ltima altera'#231#227'o:'
        FocusControl = DbEdtModificadoData
        Transparent = True
      end
      object Label56: TLabel
        Left = 400
        Top = 17
        Width = 134
        Height = 13
        Caption = 'Usu'#225'rio da '#250'ltima altera'#231#227'o:'
        FocusControl = DbEdtModificadoUsuario
        Transparent = True
      end
      object PgCntrlApresentacao: TcxPageControl
        Left = 8
        Top = 64
        Width = 769
        Height = 441
        TabOrder = 0
        Properties.ActivePage = TbShtApresentacao
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 439
        ClientRectLeft = 2
        ClientRectRight = 767
        ClientRectTop = 28
        object TbShtApresentacao: TcxTabSheet
          Caption = 'Apresenta'#231#227'o'
          ImageIndex = 0
          object DbMemoApresentacao: TcxDBMemo
            Left = 8
            Top = 48
            DataBinding.DataField = 'PRO_APRESENTACAO'
            DataBinding.DataSource = DtSrcPrincipal
            Properties.ScrollBars = ssVertical
            TabOrder = 0
            Height = 353
            Width = 753
          end
          object BtnApresentacao: TcxButton
            Left = 8
            Top = 16
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = BtnApresentacaoClick
          end
        end
        object TbShtObservacao: TcxTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 2
          object DbMemoObservacao: TcxDBMemo
            Left = 8
            Top = 48
            DataBinding.DataField = 'PRO_OBSERVACAO'
            DataBinding.DataSource = DtSrcPrincipal
            Properties.ScrollBars = ssVertical
            TabOrder = 0
            Height = 353
            Width = 745
          end
          object BtnObservacao: TcxButton
            Left = 8
            Top = 16
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = BtnObservacaoClick
          end
        end
      end
      object DbLkpCmbBxUnidade: TcxDBLookupComboBox
        Left = 136
        Top = 33
        TabStop = False
        DataBinding.DataField = 'UND_ID'
        DataBinding.DataSource = DtSrcPrincipal
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
        TabOrder = 1
        Width = 257
      end
      object DbDtEdtPROATER: TcxDBDateEdit
        Left = 8
        Top = 32
        DataBinding.DataField = 'PRO_DATA'
        DataBinding.DataSource = DtSrcPrincipal
        TabOrder = 2
        Width = 121
      end
      object DbEdtModificadoData: TcxDBTextEdit
        Left = 648
        Top = 33
        DataBinding.DataField = 'REG_MODIFICADO'
        DataBinding.DataSource = DtSrcPrincipal
        Enabled = False
        TabOrder = 3
        Width = 129
      end
      object DbEdtModificadoUsuario: TcxDBTextEdit
        Left = 400
        Top = 33
        DataBinding.DataField = 'REG_USUARIO'
        DataBinding.DataSource = DtSrcPrincipal
        Enabled = False
        TabOrder = 4
        Width = 241
      end
    end
    object TbShtDiagnostico: TcxTabSheet
      Caption = 'Diagn'#243'stico do munic'#237'pio'
      ImageIndex = 1
      object PgCntrlDiagnostico: TcxPageControl
        Left = 8
        Top = 8
        Width = 769
        Height = 497
        TabOrder = 0
        Properties.ActivePage = TbShtEstatistica
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 495
        ClientRectLeft = 2
        ClientRectRight = 767
        ClientRectTop = 28
        object TbShtEstatistica: TcxTabSheet
          Caption = 'Estat'#237'sticas'
          ImageIndex = 2
          object cxButton1: TcxButton
            Left = 8
            Top = 24
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = cxButton1Click
          end
          object DbMemoEstatistica: TcxDBMemo
            Left = 8
            Top = 56
            DataBinding.DataField = 'PRO_ESTATISTICA'
            DataBinding.DataSource = DtSrcPrincipal
            Properties.ScrollBars = ssVertical
            TabOrder = 1
            Height = 401
            Width = 747
          end
        end
        object TbShtComunidades: TcxTabSheet
          Caption = 'Benefici'#225'rios e UPF'
          ImageIndex = 0
          DesignSize = (
            765
            467)
          object GrdCom: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
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
              DataController.KeyFieldNames = 'PRC_ID'
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
                Width = 280
              end
              object GrdComTblPRC_LOCALIZACAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRC_LOCALIZACAO'
                Width = 269
              end
              object GrdComTblPRC_QTDE_BENEFICIARIO: TcxGridDBColumn
                DataBinding.FieldName = 'PRC_QTDE_BENEFICIARIO'
                Width = 105
              end
              object GrdComTblPRC_QTDE_UPF: TcxGridDBColumn
                DataBinding.FieldName = 'PRC_QTDE_UPF'
                Width = 109
              end
            end
            object GrdComLvl: TcxGridLevel
              GridView = GrdComTbl
            end
          end
          object BtnComIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 1
            OnClick = BtnComIncluirClick
          end
          object BtnComEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 2
            OnClick = BtnComEditarClick
          end
          object BtnComExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 3
            OnClick = BtnComExcluirClick
          end
        end
        object TbShtProblemas: TcxTabSheet
          Caption = 'Problemas e potencialidades'
          ImageIndex = 1
          DesignSize = (
            765
            467)
          object GrdPot: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdPotTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcPotencial
              DataController.KeyFieldNames = 'PRP_ID'
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
              object GrdPotTblCTX_TIPO_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'CTX_TIPO_DESCRICAO'
                Width = 122
              end
              object GrdPotTblCTX_CONTEXTO: TcxGridDBColumn
                DataBinding.FieldName = 'CTX_CONTEXTO'
                Width = 210
              end
              object GrdPotTblPRP_POTENCIALIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'PRP_POTENCIALIDADE'
                Width = 209
              end
              object GrdPotTblPRP_PROBLEMA: TcxGridDBColumn
                DataBinding.FieldName = 'PRP_PROBLEMA'
                Width = 204
              end
            end
            object GrdPotLvl: TcxGridLevel
              GridView = GrdPotTbl
            end
          end
          object BtnPotIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 1
          end
          object BtnPotEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 2
          end
          object BtnPotExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 3
          end
        end
        object TbShtAcordos: TcxTabSheet
          Caption = 'Acordos, conv'#234'nios e parcerias'
          ImageIndex = 3
          DesignSize = (
            765
            467)
          object BtnAcrIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnAcrEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnAcrExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdAcr: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdAcrTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcAcordo
              DataController.KeyFieldNames = 'PRA_ID'
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
              object GrdAcrTblPRA_TIPO_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRA_TIPO_DESCRICAO'
              end
              object GrdAcrTblPRA_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRA_DESCRICAO'
              end
              object GrdAcrTblPRA_OBJETIVO: TcxGridDBColumn
                DataBinding.FieldName = 'PRA_OBJETIVO'
              end
              object GrdAcrTblPRA_ACAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRA_ACAO'
              end
              object GrdAcrTblPRA_SITUACAO_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRA_SITUACAO_DESCRICAO'
              end
            end
            object GrdAcrLvl: TcxGridLevel
              GridView = GrdAcrTbl
            end
          end
        end
      end
    end
    object TbShtCapacidade: TcxTabSheet
      Caption = 'Capacidade operacional do ESLOC'
      ImageIndex = 2
      object PgCntrlCapacidade: TcxPageControl
        Left = 8
        Top = 8
        Width = 769
        Height = 497
        TabOrder = 0
        Properties.ActivePage = TbShtRecursos
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 495
        ClientRectLeft = 2
        ClientRectRight = 767
        ClientRectTop = 28
        object TbShtRecursos: TcxTabSheet
          Caption = 'Recursos humanos'
          ImageIndex = 0
          DesignSize = (
            765
            467)
          object Label1: TLabel
            Left = 8
            Top = 13
            Width = 134
            Height = 13
            Caption = 'For'#231'a de trabalho atual:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 8
            Top = 245
            Width = 120
            Height = 13
            Caption = 'Demanda de pessoal:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object BtnFncIncluir: TcxButton
            Left = 8
            Top = 32
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnFncExcluir: TcxButton
            Left = 88
            Top = 32
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 1
          end
          object GrdFnc: TcxGrid
            Left = 8
            Top = 64
            Width = 747
            Height = 161
            Anchors = [akLeft, akTop, akRight]
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
              DataController.DataSource = DtSrcFuncionario
              DataController.KeyFieldNames = 'PRF_ID'
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
              end
              object GrdFncTblFUN_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'FUN_NOME'
              end
            end
            object GrdFncLvl: TcxGridLevel
              GridView = GrdFncTbl
            end
          end
          object BtnDemIncluir: TcxButton
            Left = 8
            Top = 264
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 3
          end
          object BtnDemExcluir: TcxButton
            Left = 88
            Top = 264
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 4
          end
          object GrdDem: TcxGrid
            Left = 8
            Top = 296
            Width = 747
            Height = 161
            Anchors = [akLeft, akTop, akRight]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdDemTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcDemanda
              DataController.KeyFieldNames = 'DEM_ID'
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
              object GrdDemTblCRG_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'CRG_DESCRICAO'
              end
              object GrdDemTblDEM_QUANTIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'DEM_QUANTIDADE'
              end
            end
            object GrdDemLvl: TcxGridLevel
              GridView = GrdDemTbl
            end
          end
        end
        object TbShtMobiliario: TcxTabSheet
          Caption = 'Mobili'#225'rio'
          ImageIndex = 1
          DesignSize = (
            765
            467)
          object BtnMobIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnMobEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnMobExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdMob: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object cxGridDBTableView1: TcxGridDBTableView
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
              DataController.DataSource = DtSrcMobiliario
              DataController.KeyFieldNames = 'PRM_ID'
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
              object cxGridDBTableView1PRM_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRM_DESCRICAO'
                Width = 464
              end
              object cxGridDBTableView1PRM_QTDE_EXISTENTE: TcxGridDBColumn
                DataBinding.FieldName = 'PRM_QTDE_EXISTENTE'
                Width = 141
              end
              object cxGridDBTableView1PRM_QTDE_NECESSARIA: TcxGridDBColumn
                DataBinding.FieldName = 'PRM_QTDE_NECESSARIA'
                Width = 140
              end
            end
            object GrdMobLvl: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
        object TbShtEquipamentos: TcxTabSheet
          Caption = 'Equipamentos'
          ImageIndex = 2
          DesignSize = (
            765
            467)
          object BtnEqpIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnEqpEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnEqpExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdEqp: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdEqpTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcEquipamento
              DataController.KeyFieldNames = 'PRE_ID'
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
              object GrdEqpTblPRE_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRE_DESCRICAO'
                Width = 464
              end
              object GrdEqpTblPRE_QTDE_EXISTENTE: TcxGridDBColumn
                DataBinding.FieldName = 'PRE_QTDE_EXISTENTE'
                Width = 155
              end
              object GrdEqpTblPRE_QTDE_NECESSARIA: TcxGridDBColumn
                DataBinding.FieldName = 'PRE_QTDE_NECESSARIA'
                Width = 155
              end
            end
            object GrdEqpLvl: TcxGridLevel
              GridView = GrdEqpTbl
            end
          end
        end
        object TbShtVeiculos: TcxTabSheet
          Caption = 'Ve'#237'culos'
          ImageIndex = 3
          DesignSize = (
            765
            467)
          object BtnVeiIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnVeiEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnVeiExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdVei: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdVeiTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcVeiculo
              DataController.KeyFieldNames = 'VEI_ID'
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
              object GrdVeiTblVTP_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'VTP_DESCRICAO'
                Width = 164
              end
              object GrdVeiTblVEI_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'VEI_DESCRICAO'
                Width = 300
              end
              object GrdVeiTblVEI_QTDE_EXISTENTE: TcxGridDBColumn
                DataBinding.FieldName = 'VEI_QTDE_EXISTENTE'
                Width = 155
              end
              object GrdVeiTblVEI_QTDE_NECESSARIA: TcxGridDBColumn
                DataBinding.FieldName = 'VEI_QTDE_NECESSARIA'
                Width = 155
              end
            end
            object GrdVeiLvl: TcxGridLevel
              GridView = GrdVeiTbl
            end
          end
        end
        object TbShtDespesas: TcxTabSheet
          Caption = 'Despesas de custeio'
          ImageIndex = 4
          DesignSize = (
            765
            467)
          object BtnCusIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnCusEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnCusExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdCus: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdCusTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcCusto
              DataController.KeyFieldNames = 'PRC_ID'
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
              object GrdCusTblPCT_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'PCT_DESCRICAO'
                Width = 589
              end
              object GrdCusTblPRC_CUSTO: TcxGridDBColumn
                DataBinding.FieldName = 'PRC_CUSTO'
                Width = 156
              end
            end
            object GrdCusLvl: TcxGridLevel
              GridView = GrdCusTbl
            end
          end
        end
        object TbShtNecessidades: TcxTabSheet
          Caption = 'Necessidades de qualifica'#231#227'o'
          ImageIndex = 5
          DesignSize = (
            765
            467)
          object BtnQuaIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnQuaEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnQuaExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdQua: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdQuaTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcQualificacao
              DataController.KeyFieldNames = 'QUA_ID'
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
              object GrdQuaTblMET_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'MET_DESCRICAO'
                Width = 419
              end
              object GrdQuaTblQUA_TEMATICA: TcxGridDBColumn
                DataBinding.FieldName = 'QUA_TEMATICA'
                Width = 213
              end
              object GrdQuaTblQUA_QTDE_TECNICO: TcxGridDBColumn
                DataBinding.FieldName = 'QUA_QTDE_TECNICO'
                Width = 113
              end
            end
            object GrdQuaLvl: TcxGridLevel
              GridView = GrdQuaTbl
            end
          end
        end
      end
    end
    object TbShtPlano: TcxTabSheet
      Caption = 'Plano de ATER do ESLOC'
      ImageIndex = 3
      object PgCntrlPlano: TcxPageControl
        Left = 8
        Top = 8
        Width = 769
        Height = 497
        TabOrder = 0
        Properties.ActivePage = TbShtProjetos
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 495
        ClientRectLeft = 2
        ClientRectRight = 767
        ClientRectTop = 28
        object TbShtProjetos: TcxTabSheet
          Caption = 'Projetos e subprojetos'
          ImageIndex = 0
          DesignSize = (
            765
            467)
          object BtnSubIncluir: TcxButton
            Left = 8
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnSubEditar: TcxButton
            Left = 88
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnSubExcluir: TcxButton
            Left = 168
            Top = 16
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdSub: TcxGrid
            Left = 8
            Top = 48
            Width = 747
            Height = 409
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdSubTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcSubProjeto
              DataController.KeyFieldNames = 'SPR_ID'
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
              object GrdSubTblSPR_ANO_MES_INICIO: TcxGridDBColumn
                Caption = 'Ref. inicial (ano/m'#234's)'
                DataBinding.FieldName = 'SPR_ANO_MES_INICIO'
                Width = 119
              end
              object GrdSubTblSPR_ANO_MES_FIM: TcxGridDBColumn
                Caption = 'Ref. final (ano/m'#234's)'
                DataBinding.FieldName = 'SPR_ANO_MES_FIM'
                Width = 118
              end
              object GrdSubTblSPR_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'SPR_NOME'
                Width = 143
              end
              object GrdSubTblPRJ_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'PRJ_NOME'
                Width = 140
              end
              object GrdSubTblPRG_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'PRG_NOME'
                Width = 144
              end
              object GrdSubTblFUN_RESPONSAVEL: TcxGridDBColumn
                DataBinding.FieldName = 'FUN_RESPONSAVEL'
                Width = 81
              end
            end
            object GrdSubLvl: TcxGridLevel
              GridView = GrdSubTbl
            end
          end
        end
        object TbShtMetas: TcxTabSheet
          Caption = 'Metas'
          ImageIndex = 1
          DesignSize = (
            765
            467)
          object BtnMetaIncluir: TcxButton
            Left = 8
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnMetaEditar: TcxButton
            Left = 88
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnMetaExcluir: TcxButton
            Left = 168
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdMeta: TcxGrid
            Left = 8
            Top = 160
            Width = 747
            Height = 297
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdMetaTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcSubMeta
              DataController.KeyFieldNames = 'MET_ID'
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
              object GrdMetaTblMET_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'MET_DESCRICAO'
                Width = 529
              end
              object GrdMetaTblMET_QUANTIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'MET_QUANTIDADE'
                Width = 103
              end
              object GrdMetaTblMET_UNIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'MET_UNIDADE'
                Width = 113
              end
            end
            object GrdMetaLvl: TcxGridLevel
              GridView = GrdMetaTbl
            end
          end
          object GrpBxSubprojeto: TcxGroupBox
            Left = 8
            Top = 0
            Caption = 'Subprojeto'
            ParentBackground = False
            ParentColor = False
            TabOrder = 4
            Height = 116
            Width = 745
            object Label3: TLabel
              Left = 8
              Top = 18
              Width = 50
              Height = 13
              Caption = 'Programa:'
              Transparent = True
            end
            object Label4: TLabel
              Left = 8
              Top = 34
              Width = 39
              Height = 13
              Caption = 'Projeto:'
              Transparent = True
            end
            object Label5: TLabel
              Left = 8
              Top = 50
              Width = 57
              Height = 13
              Caption = 'Subprojeto:'
              Transparent = True
            end
            object Bevel1: TBevel
              Left = 8
              Top = 67
              Width = 721
              Height = 9
              Shape = bsTopLine
            end
            object cxDBNavigator1: TcxDBNavigator
              Left = 8
              Top = 75
              Width = 94
              Height = 25
              Buttons.CustomButtons = <>
              Buttons.PriorPage.Visible = False
              Buttons.NextPage.Visible = False
              Buttons.Insert.Visible = False
              Buttons.Append.Visible = False
              Buttons.Delete.Visible = False
              Buttons.Edit.Visible = False
              Buttons.Post.Visible = False
              Buttons.Cancel.Visible = False
              Buttons.Refresh.Visible = False
              Buttons.SaveBookmark.Visible = False
              Buttons.GotoBookmark.Visible = False
              Buttons.Filter.Visible = False
              DataSource = DtSrcSubProjeto
              TabOrder = 0
            end
            object DbLblSubprojeto: TcxDBLabel
              Left = 71
              Top = 48
              DataBinding.DataField = 'SPR_NOME'
              DataBinding.DataSource = DtSrcSubProjeto
              ParentColor = False
              ParentFont = False
              Properties.ShowEndEllipsis = True
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clBlue
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Transparent = True
              Height = 17
              Width = 658
            end
            object DbLblPrograma: TcxDBLabel
              Left = 71
              Top = 16
              DataBinding.DataField = 'PRG_NOME'
              DataBinding.DataSource = DtSrcSubProjeto
              ParentColor = False
              Properties.ShowEndEllipsis = True
              Transparent = True
              Height = 17
              Width = 658
            end
            object DbLblProjeto: TcxDBLabel
              Left = 71
              Top = 32
              DataBinding.DataField = 'PRJ_NOME'
              DataBinding.DataSource = DtSrcSubProjeto
              ParentColor = False
              Properties.ShowEndEllipsis = True
              Transparent = True
              Height = 17
              Width = 658
            end
          end
        end
        object TbShtMetodologias: TcxTabSheet
          Caption = 'Metodologias de ATER'
          ImageIndex = 2
          DesignSize = (
            765
            467)
          object BtnMetIncluir: TcxButton
            Left = 8
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnMetEditar: TcxButton
            Left = 88
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnMetExcluir: TcxButton
            Left = 168
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdMet: TcxGrid
            Left = 8
            Top = 160
            Width = 747
            Height = 297
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdMetTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcSubMetodo
              DataController.KeyFieldNames = 'PSM_ID'
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
              object GrdMetTblMET_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'MET_DESCRICAO'
                Width = 429
              end
              object GrdMetTblMET_ANO: TcxGridDBColumn
                DataBinding.FieldName = 'MET_ANO'
                Width = 70
              end
              object GrdMetTblMET_QUANTIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'MET_QUANTIDADE'
                Width = 246
              end
            end
            object GrdMetLvl: TcxGridLevel
              GridView = GrdMetTbl
            end
          end
        end
        object TbShtBeneficiarios: TcxTabSheet
          Caption = 'Benefici'#225'rios de ATER'
          ImageIndex = 3
          DesignSize = (
            765
            467)
          object BtnBenIncluir: TcxButton
            Left = 8
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnBenEditar: TcxButton
            Left = 88
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnBenExcluir: TcxButton
            Left = 168
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdBen: TcxGrid
            Left = 8
            Top = 160
            Width = 747
            Height = 297
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdBenTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcSubBeneficiario
              DataController.KeyFieldNames = 'PLC_ID'
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
              object GrdBenTblCOM_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'COM_NOME'
                Width = 201
              end
              object GrdBenTblCAT_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'CAT_DESCRICAO'
                Width = 178
              end
              object GrdBenTblPRD_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRD_DESCRICAO'
                Width = 168
              end
              object GrdBenTblPLC_ANO: TcxGridDBColumn
                DataBinding.FieldName = 'PLC_ANO'
                Width = 72
              end
              object GrdBenTblPLC_QUANTIDADE: TcxGridDBColumn
                DataBinding.FieldName = 'PLC_QUANTIDADE'
                Width = 126
              end
            end
            object GrdBenLvl: TcxGridLevel
              GridView = GrdBenTbl
            end
          end
        end
        object TbShtOrcamento: TcxTabSheet
          Caption = 'Previs'#227'o or'#231'ament'#225'ria'
          ImageIndex = 4
          DesignSize = (
            765
            467)
          object BtnOrcIncluir: TcxButton
            Left = 8
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Incluir'
            TabOrder = 0
          end
          object BtnOrcEditar: TcxButton
            Left = 88
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Editar'
            TabOrder = 1
          end
          object BtnOrcExcluir: TcxButton
            Left = 168
            Top = 128
            Width = 75
            Height = 25
            Caption = 'Excluir'
            TabOrder = 2
          end
          object GrdOrc: TcxGrid
            Left = 8
            Top = 160
            Width = 747
            Height = 297
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdOrcTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcSubOrcamento
              DataController.KeyFieldNames = 'ORC_ID'
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
              object GrdOrcTblORC_FONTE: TcxGridDBColumn
                DataBinding.FieldName = 'ORC_FONTE'
                Width = 280
              end
              object GrdOrcTblORC_ELEMENTO: TcxGridDBColumn
                DataBinding.FieldName = 'ORC_ELEMENTO'
                Width = 221
              end
              object GrdOrcTblORC_ANO: TcxGridDBColumn
                DataBinding.FieldName = 'ORC_ANO'
                Width = 86
              end
              object GrdOrcTblORC_VALOR: TcxGridDBColumn
                DataBinding.FieldName = 'ORC_VALOR'
                Width = 158
              end
            end
            object GrdOrcLvl: TcxGridLevel
              GridView = GrdOrcTbl
            end
          end
        end
      end
    end
  end
  inherited BtnNovo: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited BtnSalvar: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited BtnCancelar: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited BtnExcluir: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited BtnFechar: TcxButton
    Left = 724
    Top = 558
    ExplicitLeft = 724
    ExplicitTop = 558
  end
  inherited BtnRelatorio: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited DtStPrincipal: TpFIBDataSet
    Left = 72
    Top = 288
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 176
    Top = 288
  end
  inherited QryPrincipal: TFDQuery
    CachedUpdates = True
    SQL.Strings = (
      'select'
      '  a.pro_id,'
      '  a.pro_data, '
      '  a.pro_apresentacao, '
      '  a.pro_observacao, '
      '  a.pro_estatistica, '
      '  a.und_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_proater a'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)')
    Left = 112
    Top = 288
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object QryPrincipalPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalPRO_DATA: TDateField
      FieldName = 'PRO_DATA'
      Origin = 'PRO_DATA'
    end
    object QryPrincipalPRO_APRESENTACAO: TMemoField
      FieldName = 'PRO_APRESENTACAO'
      Origin = 'PRO_APRESENTACAO'
      BlobType = ftMemo
    end
    object QryPrincipalPRO_OBSERVACAO: TMemoField
      FieldName = 'PRO_OBSERVACAO'
      Origin = 'PRO_OBSERVACAO'
      BlobType = ftMemo
    end
    object QryPrincipalPRO_ESTATISTICA: TMemoField
      FieldName = 'PRO_ESTATISTICA'
      Origin = 'PRO_ESTATISTICA'
      BlobType = ftMemo
    end
    object QryPrincipalUND_ID: TIntegerField
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
    end
    object QryPrincipalREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryPrincipalREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryPrincipalREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryPrincipalREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  inherited UpdtPrincipal: TFDUpdateSQL
    Left = 144
    Top = 288
  end
  object DtSrcComunidade: TDataSource
    DataSet = QryComunidade
    OnStateChange = DtSrcComunidadeStateChange
    Left = 176
    Top = 320
  end
  object UpdtComunidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_COMUNIDADE'
      '(PRC_ID, PRC_LOCALIZACAO, PRC_QTDE_BENEFICIARIO, '
      '  PRC_QTDE_UPF, PRO_ID, COM_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PRC_ID, :NEW_PRC_LOCALIZACAO, :NEW_PRC_QTDE_BENEFIC' +
        'IARIO, '
      
        '  :NEW_PRC_QTDE_UPF, :NEW_PRO_ID, :NEW_COM_ID, :NEW_REG_EXCLUIDO' +
        ', '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_COMUNIDADE'
      
        'SET PRC_ID = :NEW_PRC_ID, PRC_LOCALIZACAO = :NEW_PRC_LOCALIZACAO' +
        ', '
      
        '  PRC_QTDE_BENEFICIARIO = :NEW_PRC_QTDE_BENEFICIARIO, PRC_QTDE_U' +
        'PF = :NEW_PRC_QTDE_UPF, '
      
        '  PRO_ID = :NEW_PRO_ID, COM_ID = :NEW_COM_ID, REG_EXCLUIDO = :NE' +
        'W_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PRC_ID = :OLD_PRC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_COMUNIDADE'
      'WHERE PRC_ID = :OLD_PRC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRC_ID, PRC_LOCALIZACAO, PRC_QTDE_BENEFICIARIO, PRC_QTDE_' +
        'UPF, '
      '  PRO_ID, COM_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_COMUNIDADE'
      'WHERE PRC_ID = :PRC_ID')
    Left = 144
    Top = 320
  end
  object QryComunidade: TFDQuery
    BeforePost = QryComunidadeBeforePost
    OnNewRecord = QryComunidadeNewRecord
    Filtered = True
    Filter = 'REG_EXCLUIDO = 0'
    CachedUpdates = True
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtComunidade
    SQL.Strings = (
      'select'
      '  a.prc_id,'
      '  a.prc_localizacao, '
      '  a.prc_qtde_beneficiario, '
      '  a.prc_qtde_upf, '
      '  a.pro_id, '
      '  a.com_id, '
      '  b.com_nome,'
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      
        '  tab_prd_proater_comunidade a join tab_cad_comunidade b on (a.c' +
        'om_id = b.com_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.com_nome')
    Left = 112
    Top = 320
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QryComunidadePRC_ID: TLargeintField
      FieldName = 'PRC_ID'
      Origin = 'PRC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryComunidadePRC_LOCALIZACAO: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'PRC_LOCALIZACAO'
      Origin = 'PRC_LOCALIZACAO'
      Size = 100
    end
    object QryComunidadePRC_QTDE_BENEFICIARIO: TIntegerField
      DisplayLabel = 'N'#186'. de benefici'#225'rios de ATER cadastrados'
      FieldName = 'PRC_QTDE_BENEFICIARIO'
      Origin = 'PRC_QTDE_BENEFICIARIO'
    end
    object QryComunidadePRC_QTDE_UPF: TIntegerField
      DisplayLabel = 'N'#250'mero de UPF cadastradas'
      FieldName = 'PRC_QTDE_UPF'
      Origin = 'PRC_QTDE_UPF'
    end
    object QryComunidadePRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
    end
    object QryComunidadeCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
      Required = True
    end
    object QryComunidadeCOM_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      ProviderFlags = []
      Size = 100
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
  end
  object DtSrcPotencial: TDataSource
    DataSet = QryPotencial
    OnStateChange = DtSrcPrincipalStateChange
    Left = 176
    Top = 352
  end
  object UpdtPotencial: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_POTENCIAL'
      '(PRP_ID, PRP_POTENCIALIDADE, PRP_PROBLEMA, PRO_ID, '
      '  CTX_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_PRP_ID, :NEW_PRP_POTENCIALIDADE, :NEW_PRP_PROBLEMA,' +
        ' :NEW_PRO_ID, '
      
        '  :NEW_CTX_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_U' +
        'SUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_POTENCIAL'
      
        'SET PRP_ID = :NEW_PRP_ID, PRP_POTENCIALIDADE = :NEW_PRP_POTENCIA' +
        'LIDADE, '
      '  PRP_PROBLEMA = :NEW_PRP_PROBLEMA, PRO_ID = :NEW_PRO_ID, '
      '  CTX_ID = :NEW_CTX_ID, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PRP_ID = :OLD_PRP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_POTENCIAL'
      'WHERE PRP_ID = :OLD_PRP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRP_ID, PRP_POTENCIALIDADE, PRP_PROBLEMA, PRO_ID, CTX_ID,' +
        ' REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_POTENCIAL'
      'WHERE PRP_ID = :PRP_ID')
    Left = 144
    Top = 352
  end
  object QryPotencial: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtPotencial
    SQL.Strings = (
      'select'
      '  a.prp_id, '
      '  a.prp_potencialidade, '
      '  a.prp_problema, '
      '  a.pro_id, '
      '  a.ctx_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.ctx_tipo,'
      '  b.ctx_contexto,'
      '  case b.ctx_tipo'
      '    when 1 then '#39'Dimens'#227'o econ'#244'mica'#39
      '    when 2 then '#39'Dimens'#227'o social'#39
      '    when 3 then '#39'Dimens'#227'o ambiental'#39
      '  end as ctx_tipo_descricao'
      'from'
      
        '  tab_prd_proater_potencial a join tab_prd_proater_contexto b on' +
        ' (a.ctx_id = b.ctx_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  ctx_tipo_descricao, b.ctx_contexto')
    Left = 112
    Top = 352
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryPotencialPRP_ID: TLargeintField
      FieldName = 'PRP_ID'
      Origin = 'PRP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPotencialPRP_POTENCIALIDADE: TMemoField
      DisplayLabel = 'Potencialidades'
      FieldName = 'PRP_POTENCIALIDADE'
      Origin = 'PRP_POTENCIALIDADE'
      BlobType = ftMemo
    end
    object QryPotencialPRP_PROBLEMA: TMemoField
      DisplayLabel = 'Problemas'
      FieldName = 'PRP_PROBLEMA'
      Origin = 'PRP_PROBLEMA'
      BlobType = ftMemo
    end
    object QryPotencialPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryPotencialCTX_ID: TIntegerField
      FieldName = 'CTX_ID'
      Origin = 'CTX_ID'
    end
    object QryPotencialREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryPotencialREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryPotencialREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryPotencialREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryPotencialCTX_TIPO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'CTX_TIPO'
      Origin = 'CTX_TIPO'
      ProviderFlags = []
    end
    object QryPotencialCTX_CONTEXTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CTX_CONTEXTO'
      Origin = 'CTX_CONTEXTO'
      ProviderFlags = []
      Size = 100
    end
    object QryPotencialCTX_TIPO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Contexto'
      FieldName = 'CTX_TIPO_DESCRICAO'
      Origin = 'CTX_TIPO_DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
  end
  object DtSrcAcordo: TDataSource
    DataSet = QryAcordo
    OnStateChange = DtSrcPrincipalStateChange
    Left = 176
    Top = 384
  end
  object UpdtAcordo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_ACORDO'
      '(PRA_ID, PRA_TIPO, PRA_DESCRICAO, PRA_OBJETIVO, '
      '  PRA_ACAO, PRA_SITUACAO, PRO_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PRA_ID, :NEW_PRA_TIPO, :NEW_PRA_DESCRICAO, :NEW_PRA' +
        '_OBJETIVO, '
      
        '  :NEW_PRA_ACAO, :NEW_PRA_SITUACAO, :NEW_PRO_ID, :NEW_REG_EXCLUI' +
        'DO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_ACORDO'
      
        'SET PRA_ID = :NEW_PRA_ID, PRA_TIPO = :NEW_PRA_TIPO, PRA_DESCRICA' +
        'O = :NEW_PRA_DESCRICAO, '
      '  PRA_OBJETIVO = :NEW_PRA_OBJETIVO, PRA_ACAO = :NEW_PRA_ACAO, '
      '  PRA_SITUACAO = :NEW_PRA_SITUACAO, PRO_ID = :NEW_PRO_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PRA_ID = :OLD_PRA_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_ACORDO'
      'WHERE PRA_ID = :OLD_PRA_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRA_ID, PRA_TIPO, PRA_DESCRICAO, PRA_OBJETIVO, PRA_ACAO, ' +
        'PRA_SITUACAO, '
      
        '  PRO_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_PRD_PROATER_ACORDO'
      'WHERE PRA_ID = :PRA_ID')
    Left = 144
    Top = 384
  end
  object QryAcordo: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtAcordo
    SQL.Strings = (
      'select'
      '  a.pra_id,'
      '  a.pra_tipo, '
      '  a.pra_descricao, '
      '  a.pra_objetivo, '
      '  a.pra_acao, '
      '  a.pra_situacao, '
      '  a.pro_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  case a.pra_tipo'
      '    when 1 then '#39'Acordo'#39
      '    when 2 then '#39'Conv'#234'nio'#39
      '    when 3 then '#39'Parceria'#39
      '  end as pra_tipo_descricao,'
      '  case a.pra_situacao'
      '    when 1 then '#39'Previsto'#39
      '    when 2 then '#39'Em andamento'#39
      '  end as pra_situacao_descricao'
      'from'
      '  tab_prd_proater_acordo a'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.pra_descricao')
    Left = 112
    Top = 384
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryAcordoPRA_ID: TLargeintField
      FieldName = 'PRA_ID'
      Origin = 'PRA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAcordoPRA_TIPO: TSmallintField
      FieldName = 'PRA_TIPO'
      Origin = 'PRA_TIPO'
      Required = True
    end
    object QryAcordoPRA_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRA_DESCRICAO'
      Origin = 'PRA_DESCRICAO'
      BlobType = ftMemo
    end
    object QryAcordoPRA_OBJETIVO: TMemoField
      DisplayLabel = 'Objetivos'
      FieldName = 'PRA_OBJETIVO'
      Origin = 'PRA_OBJETIVO'
      BlobType = ftMemo
    end
    object QryAcordoPRA_ACAO: TMemoField
      DisplayLabel = 'A'#231#227'o'
      FieldName = 'PRA_ACAO'
      Origin = 'PRA_ACAO'
      BlobType = ftMemo
    end
    object QryAcordoPRA_SITUACAO: TSmallintField
      FieldName = 'PRA_SITUACAO'
      Origin = 'PRA_SITUACAO'
    end
    object QryAcordoPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryAcordoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryAcordoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryAcordoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryAcordoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryAcordoPRA_TIPO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'PRA_TIPO_DESCRICAO'
      Origin = 'PRA_TIPO_DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object QryAcordoPRA_SITUACAO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'PRA_SITUACAO_DESCRICAO'
      Origin = 'PRA_SITUACAO_DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 12
    end
  end
  object QryFuncionario: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFuncionario
    SQL.Strings = (
      'select'
      '  a.prf_id,'
      '  a.pro_id,'
      '  a.fun_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.fun_nome,'
      '  b.fun_matricula'
      'from'
      
        '  tab_prd_proater_funcionario a join tab_pes_funcionario b on (a' +
        '.fun_id = b.fun_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.fun_nome')
    Left = 248
    Top = 288
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryFuncionarioPRF_ID: TLargeintField
      FieldName = 'PRF_ID'
      Origin = 'PRF_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFuncionarioPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryFuncionarioFUN_ID: TIntegerField
      FieldName = 'FUN_ID'
      Origin = 'FUN_ID'
      Required = True
    end
    object QryFuncionarioREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryFuncionarioREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryFuncionarioREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryFuncionarioREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryFuncionarioFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
    object QryFuncionarioFUN_MATRICULA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'FUN_MATRICULA'
      Origin = 'FUN_MATRICULA'
      ProviderFlags = []
    end
  end
  object UpdtFuncionario: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 280
    Top = 288
  end
  object DtSrcFuncionario: TDataSource
    DataSet = QryFuncionario
    OnStateChange = DtSrcPrincipalStateChange
    Left = 312
    Top = 288
  end
  object UpdtDemanda: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_DEMANDA'
      '(DEM_ID, DEM_QUANTIDADE, CRG_ID, PRO_ID, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_DEM_ID, :NEW_DEM_QUANTIDADE, :NEW_CRG_ID, :NEW_PRO_' +
        'ID, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_DEMANDA'
      'SET DEM_ID = :NEW_DEM_ID, DEM_QUANTIDADE = :NEW_DEM_QUANTIDADE, '
      
        '  CRG_ID = :NEW_CRG_ID, PRO_ID = :NEW_PRO_ID, REG_EXCLUIDO = :NE' +
        'W_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE DEM_ID = :OLD_DEM_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_DEMANDA'
      'WHERE DEM_ID = :OLD_DEM_ID')
    FetchRowSQL.Strings = (
      
        'SELECT DEM_ID, DEM_QUANTIDADE, CRG_ID, PRO_ID, REG_EXCLUIDO, REG' +
        '_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_DEMANDA'
      'WHERE DEM_ID = :DEM_ID')
    Left = 280
    Top = 320
  end
  object DtSrcDemanda: TDataSource
    DataSet = QryDemanda
    OnStateChange = DtSrcPrincipalStateChange
    Left = 312
    Top = 320
  end
  object QryDemanda: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtDemanda
    SQL.Strings = (
      'select'
      '  a.dem_id,'
      '  a.dem_quantidade, '
      '  a.crg_id, '
      '  a.pro_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.crg_descricao'
      'from'
      
        '  tab_prd_proater_demanda a join tab_pes_cargo b on (a.crg_id = ' +
        'b.crg_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.crg_descricao')
    Left = 248
    Top = 320
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryDemandaDEM_ID: TLargeintField
      FieldName = 'DEM_ID'
      Origin = 'DEM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDemandaDEM_QUANTIDADE: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'DEM_QUANTIDADE'
      Origin = 'DEM_QUANTIDADE'
      Required = True
    end
    object QryDemandaCRG_ID: TIntegerField
      FieldName = 'CRG_ID'
      Origin = 'CRG_ID'
      Required = True
    end
    object QryDemandaPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryDemandaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryDemandaREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryDemandaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryDemandaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryDemandaCRG_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cargo'
      FieldName = 'CRG_DESCRICAO'
      Origin = 'CRG_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object QryMobiliario: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtMobiliario
    SQL.Strings = (
      'select'
      '  a.prm_id,'
      '  a.prm_descricao, '
      '  a.prm_qtde_existente, '
      '  a.prm_qtde_necessaria, '
      '  a.pro_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_proater_mobiliario a'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.prm_descricao')
    Left = 248
    Top = 352
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryMobiliarioPRM_ID: TLargeintField
      FieldName = 'PRM_ID'
      Origin = 'PRM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMobiliarioPRM_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRM_DESCRICAO'
      Origin = 'PRM_DESCRICAO'
      BlobType = ftMemo
    end
    object QryMobiliarioPRM_QTDE_EXISTENTE: TIntegerField
      DisplayLabel = 'Qtde existente'
      FieldName = 'PRM_QTDE_EXISTENTE'
      Origin = 'PRM_QTDE_EXISTENTE'
    end
    object QryMobiliarioPRM_QTDE_NECESSARIA: TIntegerField
      DisplayLabel = 'Qtde necess'#225'ria'
      FieldName = 'PRM_QTDE_NECESSARIA'
      Origin = 'PRM_QTDE_NECESSARIA'
    end
    object QryMobiliarioPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryMobiliarioREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryMobiliarioREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryMobiliarioREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryMobiliarioREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtMobiliario: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 280
    Top = 352
  end
  object DtSrcMobiliario: TDataSource
    DataSet = QryMobiliario
    OnStateChange = DtSrcPrincipalStateChange
    Left = 312
    Top = 352
  end
  object QryEquipamento: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtEquipamento
    SQL.Strings = (
      'select'
      '  a.pre_id,'
      '  a.pre_descricao, '
      '  a.pre_qtde_existente, '
      '  a.pre_qtde_necessaria, '
      '  a.pro_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_proater_equipamento a'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '   a.pre_descricao')
    Left = 248
    Top = 384
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryEquipamentoPRE_ID: TLargeintField
      FieldName = 'PRE_ID'
      Origin = 'PRE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryEquipamentoPRE_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRE_DESCRICAO'
      Origin = 'PRE_DESCRICAO'
      BlobType = ftMemo
    end
    object QryEquipamentoPRE_QTDE_EXISTENTE: TIntegerField
      DisplayLabel = 'Qtde existente'
      FieldName = 'PRE_QTDE_EXISTENTE'
      Origin = 'PRE_QTDE_EXISTENTE'
    end
    object QryEquipamentoPRE_QTDE_NECESSARIA: TIntegerField
      DisplayLabel = 'Qtde necess'#225'ria'
      FieldName = 'PRE_QTDE_NECESSARIA'
      Origin = 'PRE_QTDE_NECESSARIA'
    end
    object QryEquipamentoPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryEquipamentoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryEquipamentoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryEquipamentoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryEquipamentoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtEquipamento: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_EQUIPAMENTO'
      
        '(PRE_ID, PRE_DESCRICAO, PRE_QTDE_EXISTENTE, PRE_QTDE_NECESSARIA,' +
        ' '
      '  PRO_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_PRE_ID, :NEW_PRE_DESCRICAO, :NEW_PRE_QTDE_EXISTENTE' +
        ', :NEW_PRE_QTDE_NECESSARIA, '
      
        '  :NEW_PRO_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_U' +
        'SUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_EQUIPAMENTO'
      
        'SET PRE_ID = :NEW_PRE_ID, PRE_DESCRICAO = :NEW_PRE_DESCRICAO, PR' +
        'E_QTDE_EXISTENTE = :NEW_PRE_QTDE_EXISTENTE, '
      
        '  PRE_QTDE_NECESSARIA = :NEW_PRE_QTDE_NECESSARIA, PRO_ID = :NEW_' +
        'PRO_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PRE_ID = :OLD_PRE_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_EQUIPAMENTO'
      'WHERE PRE_ID = :OLD_PRE_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRE_ID, PRE_DESCRICAO, PRE_QTDE_EXISTENTE, PRE_QTDE_NECES' +
        'SARIA, '
      
        '  PRO_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_PRD_PROATER_EQUIPAMENTO'
      'WHERE PRE_ID = :PRE_ID')
    Left = 280
    Top = 384
  end
  object DtSrcEquipamento: TDataSource
    DataSet = QryEquipamento
    OnStateChange = DtSrcPrincipalStateChange
    Left = 312
    Top = 384
  end
  object QryVeiculo: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtVeiculo
    SQL.Strings = (
      'select'
      '  a.vei_id,'
      '  a.vei_descricao, '
      '  a.vei_qtde_existente, '
      '  a.vei_qtde_necessaria, '
      '  a.pro_id, '
      '  a.vtp_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.vtp_descricao'
      'from'
      
        '  tab_prd_proater_veiculo a join tab_prd_proater_veiculo_tipo b ' +
        'on (a.vtp_id = b.vtp_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.vtp_descricao, a.vei_descricao')
    Left = 248
    Top = 416
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryVeiculoVEI_ID: TLargeintField
      FieldName = 'VEI_ID'
      Origin = 'VEI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVeiculoVEI_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'VEI_DESCRICAO'
      Origin = 'VEI_DESCRICAO'
      BlobType = ftMemo
    end
    object QryVeiculoVEI_QTDE_EXISTENTE: TIntegerField
      DisplayLabel = 'Qtde existente'
      FieldName = 'VEI_QTDE_EXISTENTE'
      Origin = 'VEI_QTDE_EXISTENTE'
    end
    object QryVeiculoVEI_QTDE_NECESSARIA: TIntegerField
      DisplayLabel = 'Qtde necess'#225'ria'
      FieldName = 'VEI_QTDE_NECESSARIA'
      Origin = 'VEI_QTDE_NECESSARIA'
    end
    object QryVeiculoPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryVeiculoVTP_ID: TIntegerField
      FieldName = 'VTP_ID'
      Origin = 'VTP_ID'
      Required = True
    end
    object QryVeiculoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryVeiculoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryVeiculoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryVeiculoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryVeiculoVTP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'VTP_DESCRICAO'
      Origin = 'VTP_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object UpdtVeiculo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_VEICULO'
      
        '(VEI_ID, VEI_DESCRICAO, VEI_QTDE_EXISTENTE, VEI_QTDE_NECESSARIA,' +
        ' '
      '  PRO_ID, VTP_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_VEI_ID, :NEW_VEI_DESCRICAO, :NEW_VEI_QTDE_EXISTENTE' +
        ', :NEW_VEI_QTDE_NECESSARIA, '
      
        '  :NEW_PRO_ID, :NEW_VTP_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLICAD' +
        'O, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_VEICULO'
      
        'SET VEI_ID = :NEW_VEI_ID, VEI_DESCRICAO = :NEW_VEI_DESCRICAO, VE' +
        'I_QTDE_EXISTENTE = :NEW_VEI_QTDE_EXISTENTE, '
      
        '  VEI_QTDE_NECESSARIA = :NEW_VEI_QTDE_NECESSARIA, PRO_ID = :NEW_' +
        'PRO_ID, '
      '  VTP_ID = :NEW_VTP_ID, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE VEI_ID = :OLD_VEI_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_VEICULO'
      'WHERE VEI_ID = :OLD_VEI_ID')
    FetchRowSQL.Strings = (
      
        'SELECT VEI_ID, VEI_DESCRICAO, VEI_QTDE_EXISTENTE, VEI_QTDE_NECES' +
        'SARIA, '
      '  PRO_ID, VTP_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_VEICULO'
      'WHERE VEI_ID = :VEI_ID')
    Left = 280
    Top = 416
  end
  object DtSrcVeiculo: TDataSource
    DataSet = QryVeiculo
    OnStateChange = DtSrcPrincipalStateChange
    Left = 312
    Top = 416
  end
  object QryCusto: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = FDUpdateSQL2
    SQL.Strings = (
      'select'
      '  a.prc_id,'
      '  a.pro_id, '
      '  a.pct_id, '
      '  a.prc_custo, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.pct_descricao'
      'from'
      
        '  tab_prd_proater_custo a join tab_prd_proater_custo_tipo b on (' +
        'a.pct_id = b.pct_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.pct_descricao')
    Left = 248
    Top = 448
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryCustoPRC_ID: TLargeintField
      FieldName = 'PRC_ID'
      Origin = 'PRC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCustoPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryCustoPCT_ID: TIntegerField
      FieldName = 'PCT_ID'
      Origin = 'PCT_ID'
      Required = True
    end
    object QryCustoPRC_CUSTO: TBCDField
      DisplayLabel = 'Custo R$'
      FieldName = 'PRC_CUSTO'
      Origin = 'PRC_CUSTO'
      Required = True
      DisplayFormat = ',##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object QryCustoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryCustoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryCustoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryCustoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryCustoPCT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PCT_DESCRICAO'
      Origin = 'PCT_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object FDUpdateSQL2: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 280
    Top = 448
  end
  object DtSrcCusto: TDataSource
    DataSet = QryCusto
    OnStateChange = DtSrcPrincipalStateChange
    Left = 312
    Top = 448
  end
  object QryQualificacao: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtQualificacao
    SQL.Strings = (
      'select'
      '  a.qua_id,'
      '  a.qua_tematica, '
      '  a.qua_qtde_tecnico, '
      '  a.pro_id, '
      '  a.met_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.met_descricao'
      'from'
      
        '  tab_prd_proater_qualificacao a join tab_prd_proater_metodologi' +
        'a b on (a.met_id = b.met_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.met_descricao')
    Left = 248
    Top = 480
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryQualificacaoQUA_ID: TLargeintField
      FieldName = 'QUA_ID'
      Origin = 'QUA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryQualificacaoQUA_TEMATICA: TMemoField
      DisplayLabel = 'Tem'#225'tica'
      FieldName = 'QUA_TEMATICA'
      Origin = 'QUA_TEMATICA'
      BlobType = ftMemo
    end
    object QryQualificacaoQUA_QTDE_TECNICO: TIntegerField
      DisplayLabel = 'N'#250'mero de t'#233'cnicos'
      FieldName = 'QUA_QTDE_TECNICO'
      Origin = 'QUA_QTDE_TECNICO'
    end
    object QryQualificacaoPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryQualificacaoMET_ID: TIntegerField
      FieldName = 'MET_ID'
      Origin = 'MET_ID'
      Required = True
    end
    object QryQualificacaoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryQualificacaoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryQualificacaoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryQualificacaoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryQualificacaoMET_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Metodologia'
      FieldName = 'MET_DESCRICAO'
      Origin = 'MET_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object UpdtQualificacao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_QUALIFICACAO'
      '(QUA_ID, QUA_TEMATICA, QUA_QTDE_TECNICO, PRO_ID, '
      '  MET_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_QUA_ID, :NEW_QUA_TEMATICA, :NEW_QUA_QTDE_TECNICO, :' +
        'NEW_PRO_ID, '
      
        '  :NEW_MET_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_U' +
        'SUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_QUALIFICACAO'
      
        'SET QUA_ID = :NEW_QUA_ID, QUA_TEMATICA = :NEW_QUA_TEMATICA, QUA_' +
        'QTDE_TECNICO = :NEW_QUA_QTDE_TECNICO, '
      
        '  PRO_ID = :NEW_PRO_ID, MET_ID = :NEW_MET_ID, REG_EXCLUIDO = :NE' +
        'W_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE QUA_ID = :OLD_QUA_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_QUALIFICACAO'
      'WHERE QUA_ID = :OLD_QUA_ID')
    FetchRowSQL.Strings = (
      
        'SELECT QUA_ID, QUA_TEMATICA, QUA_QTDE_TECNICO, PRO_ID, MET_ID, R' +
        'EG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_QUALIFICACAO'
      'WHERE QUA_ID = :QUA_ID')
    Left = 280
    Top = 480
  end
  object DtSrcQualificacao: TDataSource
    DataSet = QryQualificacao
    OnStateChange = DtSrcPrincipalStateChange
    Left = 312
    Top = 480
  end
  object QrySubProjeto: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtSubProjeto
    SQL.Strings = (
      'select'
      '  a.spr_id,'
      '  a.spr_data, '
      '  a.spr_ano_mes_inicio, '
      '  a.spr_ano_mes_fim, '
      '  a.spr_nome, '
      '  a.spr_justificativa, '
      '  a.spr_objetivo_geral, '
      '  a.spr_objetivo_especifico, '
      '  a.prj_id, '
      '  a.fun_id_responsavel, '
      '  a.fun_id_substituto, '
      '  a.pro_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.prj_nome, '
      '  c.prg_nome, '
      '  d.fun_nome as fun_responsavel,'
      '  e.fun_nome as fun_substituto'
      'from'
      
        '  tab_prd_subprojeto a join tab_prd_projeto b on (a.prj_id = b.p' +
        'rj_id) join'
      '  tab_prd_programa c on (b.prg_id = c.prg_id) left join'
      
        '  tab_pes_funcionario d on (a.fun_id_responsavel = d.fun_id) lef' +
        't join'
      '  tab_pes_funcionario e on (a.fun_id_substituto = e.fun_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  c.prg_nome, b.prj_nome, a.spr_nome')
    Left = 392
    Top = 288
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QrySubProjetoSPR_ID: TIntegerField
      FieldName = 'SPR_ID'
      Origin = 'SPR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySubProjetoSPR_DATA: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'SPR_DATA'
      Origin = 'SPR_DATA'
    end
    object QrySubProjetoSPR_ANO_MES_INICIO: TIntegerField
      DisplayLabel = 'Refer'#234'ncia inicial (ano/m'#234's)'
      FieldName = 'SPR_ANO_MES_INICIO'
      Origin = 'SPR_ANO_MES_INICIO'
    end
    object QrySubProjetoSPR_ANO_MES_FIM: TIntegerField
      DisplayLabel = 'Refer'#234'ncia final (ano/m'#234's)'
      FieldName = 'SPR_ANO_MES_FIM'
      Origin = 'SPR_ANO_MES_FIM'
    end
    object QrySubProjetoSPR_NOME: TStringField
      DisplayLabel = 'Subprojeto'
      FieldName = 'SPR_NOME'
      Origin = 'SPR_NOME'
      Size = 500
    end
    object QrySubProjetoSPR_JUSTIFICATIVA: TMemoField
      DisplayLabel = 'Justificativa'
      FieldName = 'SPR_JUSTIFICATIVA'
      Origin = 'SPR_JUSTIFICATIVA'
      BlobType = ftMemo
    end
    object QrySubProjetoSPR_OBJETIVO_GERAL: TMemoField
      DisplayLabel = 'Objetivo geral'
      FieldName = 'SPR_OBJETIVO_GERAL'
      Origin = 'SPR_OBJETIVO_GERAL'
      BlobType = ftMemo
    end
    object QrySubProjetoSPR_OBJETIVO_ESPECIFICO: TMemoField
      DisplayLabel = 'Objetivo espec'#237'fico'
      FieldName = 'SPR_OBJETIVO_ESPECIFICO'
      Origin = 'SPR_OBJETIVO_ESPECIFICO'
      BlobType = ftMemo
    end
    object QrySubProjetoPRJ_ID: TIntegerField
      FieldName = 'PRJ_ID'
      Origin = 'PRJ_ID'
      Required = True
    end
    object QrySubProjetoFUN_ID_RESPONSAVEL: TIntegerField
      FieldName = 'FUN_ID_RESPONSAVEL'
      Origin = 'FUN_ID_RESPONSAVEL'
    end
    object QrySubProjetoFUN_ID_SUBSTITUTO: TIntegerField
      FieldName = 'FUN_ID_SUBSTITUTO'
      Origin = 'FUN_ID_SUBSTITUTO'
    end
    object QrySubProjetoPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QrySubProjetoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QrySubProjetoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QrySubProjetoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QrySubProjetoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QrySubProjetoPRJ_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Projeto'
      FieldName = 'PRJ_NOME'
      Origin = 'PRJ_NOME'
      ProviderFlags = []
      Size = 500
    end
    object QrySubProjetoPRG_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Programa'
      FieldName = 'PRG_NOME'
      Origin = 'PRG_NOME'
      ProviderFlags = []
      Size = 500
    end
    object QrySubProjetoFUN_RESPONSAVEL: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Respons'#225'vel pelo subprojeto'
      FieldName = 'FUN_RESPONSAVEL'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
    object QrySubProjetoFUN_SUBSTITUTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Substituto do respons'#225'vel'
      FieldName = 'FUN_SUBSTITUTO'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
  end
  object UpdtSubProjeto: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_SUBPROJETO'
      '(SPR_ID, SPR_DATA, SPR_ANO_MES_INICIO, SPR_ANO_MES_FIM, '
      '  SPR_NOME, SPR_JUSTIFICATIVA, SPR_OBJETIVO_GERAL, '
      '  SPR_OBJETIVO_ESPECIFICO, PRJ_ID, FUN_ID_RESPONSAVEL, '
      '  FUN_ID_SUBSTITUTO, PRO_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_SPR_ID, :NEW_SPR_DATA, :NEW_SPR_ANO_MES_INICIO, :NE' +
        'W_SPR_ANO_MES_FIM, '
      
        '  :NEW_SPR_NOME, :NEW_SPR_JUSTIFICATIVA, :NEW_SPR_OBJETIVO_GERAL' +
        ', '
      
        '  :NEW_SPR_OBJETIVO_ESPECIFICO, :NEW_PRJ_ID, :NEW_FUN_ID_RESPONS' +
        'AVEL, '
      '  :NEW_FUN_ID_SUBSTITUTO, :NEW_PRO_ID, :NEW_REG_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_SUBPROJETO'
      
        'SET SPR_ID = :NEW_SPR_ID, SPR_DATA = :NEW_SPR_DATA, SPR_ANO_MES_' +
        'INICIO = :NEW_SPR_ANO_MES_INICIO, '
      
        '  SPR_ANO_MES_FIM = :NEW_SPR_ANO_MES_FIM, SPR_NOME = :NEW_SPR_NO' +
        'ME, '
      
        '  SPR_JUSTIFICATIVA = :NEW_SPR_JUSTIFICATIVA, SPR_OBJETIVO_GERAL' +
        ' = :NEW_SPR_OBJETIVO_GERAL, '
      '  SPR_OBJETIVO_ESPECIFICO = :NEW_SPR_OBJETIVO_ESPECIFICO, '
      
        '  PRJ_ID = :NEW_PRJ_ID, FUN_ID_RESPONSAVEL = :NEW_FUN_ID_RESPONS' +
        'AVEL, '
      
        '  FUN_ID_SUBSTITUTO = :NEW_FUN_ID_SUBSTITUTO, PRO_ID = :NEW_PRO_' +
        'ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE SPR_ID = :OLD_SPR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_SUBPROJETO'
      'WHERE SPR_ID = :OLD_SPR_ID')
    FetchRowSQL.Strings = (
      
        'SELECT SPR_ID, SPR_DATA, SPR_ANO_MES_INICIO, SPR_ANO_MES_FIM, SP' +
        'R_NOME, '
      
        '  SPR_JUSTIFICATIVA, SPR_OBJETIVO_GERAL, SPR_OBJETIVO_ESPECIFICO' +
        ', '
      
        '  PRJ_ID, FUN_ID_RESPONSAVEL, FUN_ID_SUBSTITUTO, PRO_ID, REG_EXC' +
        'LUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_SUBPROJETO'
      'WHERE SPR_ID = :SPR_ID')
    Left = 424
    Top = 288
  end
  object DtSrcSubProjeto: TDataSource
    DataSet = QrySubProjeto
    OnStateChange = DtSrcPrincipalStateChange
    Left = 456
    Top = 288
  end
  object QrySubMeta: TFDQuery
    MasterSource = DtSrcSubProjeto
    MasterFields = 'SPR_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtSubMeta
    SQL.Strings = (
      'select'
      '  a.met_id,'
      '  a.met_descricao, '
      '  a.met_quantidade, '
      '  a.met_unidade, '
      '  a.spr_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_subprojeto_meta a'
      'where'
      '  (a.spr_id = :spr_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.met_descricao')
    Left = 392
    Top = 320
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QrySubMetaMET_ID: TLargeintField
      FieldName = 'MET_ID'
      Origin = 'MET_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySubMetaMET_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o da meta'
      FieldName = 'MET_DESCRICAO'
      Origin = 'MET_DESCRICAO'
      BlobType = ftMemo
    end
    object QrySubMetaMET_QUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'MET_QUANTIDADE'
      Origin = 'MET_QUANTIDADE'
    end
    object QrySubMetaMET_UNIDADE: TStringField
      DisplayLabel = 'Unidade de medida'
      FieldName = 'MET_UNIDADE'
      Origin = 'MET_UNIDADE'
    end
    object QrySubMetaSPR_ID: TIntegerField
      FieldName = 'SPR_ID'
      Origin = 'SPR_ID'
      Required = True
    end
    object QrySubMetaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QrySubMetaREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QrySubMetaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QrySubMetaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtSubMeta: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 424
    Top = 320
  end
  object DtSrcSubMeta: TDataSource
    DataSet = QrySubMeta
    OnStateChange = DtSrcPrincipalStateChange
    Left = 456
    Top = 320
  end
  object QrySubMetodo: TFDQuery
    MasterSource = DtSrcSubProjeto
    MasterFields = 'SPR_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtSubMetodo
    SQL.Strings = (
      'select'
      '  a.psm_id,'
      '  a.spr_id, '
      '  a.met_id, '
      '  a.met_ano, '
      '  a.met_quantidade, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.met_descricao'
      'from'
      
        '  tab_prd_subprojeto_metodo a join tab_prd_metodo b on (a.met_id' +
        ' = b.met_id)'
      'where'
      '  (a.spr_id = :spr_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.met_descricao, a.met_ano')
    Left = 392
    Top = 352
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QrySubMetodoPSM_ID: TLargeintField
      FieldName = 'PSM_ID'
      Origin = 'PSM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySubMetodoSPR_ID: TIntegerField
      FieldName = 'SPR_ID'
      Origin = 'SPR_ID'
      Required = True
    end
    object QrySubMetodoMET_ID: TIntegerField
      FieldName = 'MET_ID'
      Origin = 'MET_ID'
      Required = True
    end
    object QrySubMetodoMET_ANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'MET_ANO'
      Origin = 'MET_ANO'
      Required = True
    end
    object QrySubMetodoMET_QUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'MET_QUANTIDADE'
      Origin = 'MET_QUANTIDADE'
      Required = True
    end
    object QrySubMetodoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QrySubMetodoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QrySubMetodoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QrySubMetodoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QrySubMetodoMET_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'M'#233'todos/t'#233'cnicas'
      FieldName = 'MET_DESCRICAO'
      Origin = 'MET_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
  end
  object UpdtSubMetodo: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_SUBPROJETO_METODO'
      '(PSM_ID, SPR_ID, MET_ID, MET_ANO, MET_QUANTIDADE, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_PSM_ID, :NEW_SPR_ID, :NEW_MET_ID, :NEW_MET_ANO, :NE' +
        'W_MET_QUANTIDADE, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_SUBPROJETO_METODO'
      
        'SET PSM_ID = :NEW_PSM_ID, SPR_ID = :NEW_SPR_ID, MET_ID = :NEW_ME' +
        'T_ID, '
      '  MET_ANO = :NEW_MET_ANO, MET_QUANTIDADE = :NEW_MET_QUANTIDADE, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PSM_ID = :OLD_PSM_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_SUBPROJETO_METODO'
      'WHERE PSM_ID = :OLD_PSM_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PSM_ID, SPR_ID, MET_ID, MET_ANO, MET_QUANTIDADE, REG_EXCL' +
        'UIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_SUBPROJETO_METODO'
      'WHERE PSM_ID = :PSM_ID')
    Left = 424
    Top = 352
  end
  object DtSrcSubMetodo: TDataSource
    DataSet = QrySubMetodo
    OnStateChange = DtSrcPrincipalStateChange
    Left = 456
    Top = 352
  end
  object QrySubBeneficiario: TFDQuery
    MasterSource = DtSrcSubProjeto
    MasterFields = 'SPR_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtSubBeneficiario
    SQL.Strings = (
      'select'
      '  a.plc_id,'
      '  a.plc_ano, '
      '  a.plc_quantidade, '
      '  a.com_id, '
      '  a.cat_id, '
      '  a.prd_id, '
      '  a.spr_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.com_nome,'
      '  c.cat_descricao,'
      '  d.prd_descricao'
      'from'
      
        '  tab_prd_subprojeto_comunidade a left join tab_cad_comunidade b' +
        ' on (a.com_id = b.com_id) left join'
      '  tab_cad_categoria c on (a.cat_id = c.cat_id) left join'
      '  tab_cad_produto d on (a.prd_id = d.prd_id)'
      'where'
      '  (a.spr_id = :spr_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.com_nome, c.cat_descricao, d.prd_descricao, a.plc_ano')
    Left = 392
    Top = 384
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QrySubBeneficiarioPLC_ID: TLargeintField
      FieldName = 'PLC_ID'
      Origin = 'PLC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySubBeneficiarioPLC_ANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'PLC_ANO'
      Origin = 'PLC_ANO'
    end
    object QrySubBeneficiarioPLC_QUANTIDADE: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'PLC_QUANTIDADE'
      Origin = 'PLC_QUANTIDADE'
    end
    object QrySubBeneficiarioCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
    end
    object QrySubBeneficiarioCAT_ID: TIntegerField
      FieldName = 'CAT_ID'
      Origin = 'CAT_ID'
    end
    object QrySubBeneficiarioPRD_ID: TIntegerField
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
    end
    object QrySubBeneficiarioSPR_ID: TIntegerField
      FieldName = 'SPR_ID'
      Origin = 'SPR_ID'
    end
    object QrySubBeneficiarioREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QrySubBeneficiarioREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QrySubBeneficiarioREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QrySubBeneficiarioREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QrySubBeneficiarioCOM_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      ProviderFlags = []
      Size = 100
    end
    object QrySubBeneficiarioCAT_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Categoria'
      FieldName = 'CAT_DESCRICAO'
      Origin = 'CAT_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object QrySubBeneficiarioPRD_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Produto'
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object UpdtSubBeneficiario: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 424
    Top = 384
  end
  object DtSrcSubBeneficiario: TDataSource
    DataSet = QrySubBeneficiario
    OnStateChange = DtSrcPrincipalStateChange
    Left = 456
    Top = 384
  end
  object QrySubOrcamento: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtSubOrcamento
    SQL.Strings = (
      'select'
      '  a.orc_id,'
      '  a.orc_fonte, '
      '  a.orc_elemento, '
      '  a.orc_ano, '
      '  a.orc_valor, '
      '  a.spr_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_subprojeto_orcamento a'
      'where'
      '  (a.spr_id = :spr_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.orc_fonte, a.orc_elemento, a.orc_ano')
    Left = 392
    Top = 416
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QrySubOrcamentoORC_ID: TLargeintField
      FieldName = 'ORC_ID'
      Origin = 'ORC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QrySubOrcamentoORC_FONTE: TStringField
      DisplayLabel = 'Tesouro/recuros pr'#243'prio/conv'#234'nio'
      FieldName = 'ORC_FONTE'
      Origin = 'ORC_FONTE'
      Size = 50
    end
    object QrySubOrcamentoORC_ELEMENTO: TStringField
      DisplayLabel = 'Elemento de despesa'
      FieldName = 'ORC_ELEMENTO'
      Origin = 'ORC_ELEMENTO'
      Size = 50
    end
    object QrySubOrcamentoORC_ANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ORC_ANO'
      Origin = 'ORC_ANO'
    end
    object QrySubOrcamentoORC_VALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'ORC_VALOR'
      Origin = 'ORC_VALOR'
      Required = True
      Precision = 18
      Size = 2
    end
    object QrySubOrcamentoSPR_ID: TIntegerField
      FieldName = 'SPR_ID'
      Origin = 'SPR_ID'
      Required = True
    end
    object QrySubOrcamentoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QrySubOrcamentoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QrySubOrcamentoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QrySubOrcamentoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtSubOrcamento: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_SUBPROJETO_ORCAMENTO'
      '(ORC_ID, ORC_FONTE, ORC_ELEMENTO, ORC_ANO, '
      '  ORC_VALOR, SPR_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_ORC_ID, :NEW_ORC_FONTE, :NEW_ORC_ELEMENTO, :NEW_ORC' +
        '_ANO, '
      
        '  :NEW_ORC_VALOR, :NEW_SPR_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLI' +
        'CADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_SUBPROJETO_ORCAMENTO'
      
        'SET ORC_ID = :NEW_ORC_ID, ORC_FONTE = :NEW_ORC_FONTE, ORC_ELEMEN' +
        'TO = :NEW_ORC_ELEMENTO, '
      
        '  ORC_ANO = :NEW_ORC_ANO, ORC_VALOR = :NEW_ORC_VALOR, SPR_ID = :' +
        'NEW_SPR_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE ORC_ID = :OLD_ORC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_SUBPROJETO_ORCAMENTO'
      'WHERE ORC_ID = :OLD_ORC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ORC_ID, ORC_FONTE, ORC_ELEMENTO, ORC_ANO, ORC_VALOR, SPR_' +
        'ID, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_PRD_SUBPROJETO_ORCAMENTO'
      'WHERE ORC_ID = :ORC_ID')
    Left = 424
    Top = 416
  end
  object DtSrcSubOrcamento: TDataSource
    DataSet = QrySubOrcamento
    OnStateChange = DtSrcPrincipalStateChange
    Left = 456
    Top = 416
  end
end
