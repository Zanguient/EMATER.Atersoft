inherited FrmProdutividadeFater: TFrmProdutividadeFater
  Tag = 1
  Left = 321
  Top = 117
  Hint = 'Cadastro de FATER.'
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'FATER'
  ClientHeight = 613
  ClientWidth = 851
  ExplicitLeft = 8
  ExplicitTop = -133
  ExplicitWidth = 867
  ExplicitHeight = 652
  DesignSize = (
    851
    613)
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 687
    Top = 581
    ExplicitLeft = 687
    ExplicitTop = 581
  end
  inherited PgCntrlMain: TcxPageControl
    Top = 37
    Width = 835
    Height = 538
    ExplicitTop = 37
    ExplicitWidth = 835
    ExplicitHeight = 538
    ClientRectBottom = 536
    ClientRectRight = 833
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 831
      ExplicitHeight = 508
      DesignSize = (
        831
        508)
      object Label27: TLabel
        Left = 437
        Top = 331
        Width = 136
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'T'#233'cnicas de ATER aplicadas:'
        Transparent = True
        ExplicitLeft = 440
        ExplicitTop = 350
      end
      object Label29: TLabel
        Left = 589
        Top = 331
        Width = 156
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'Ferramentas de ATER aplicadas:'
        Transparent = True
        ExplicitLeft = 592
        ExplicitTop = 350
      end
      object GrpBxPrincipal: TcxGroupBox
        Left = 8
        Top = 0
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = 'Informa'#231#245'es principais'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          803
          316)
        Height = 323
        Width = 803
        object Label1: TLabel
          Left = 8
          Top = 16
          Width = 68
          Height = 13
          Caption = 'Data da a'#231#227'o:'
          FocusControl = DbEdtDataAcao
          Transparent = True
        end
        object Label3: TLabel
          Left = 120
          Top = 16
          Width = 88
          Height = 13
          Caption = 'Munic'#237'pio da a'#231#227'o:'
          Transparent = True
        end
        object Label5: TLabel
          Left = 8
          Top = 56
          Width = 68
          Height = 13
          Caption = 'M'#233'todo inicial:'
          Transparent = True
        end
        object Label6: TLabel
          Left = 424
          Top = 56
          Width = 52
          Height = 13
          Caption = 'Finalidade:'
          Transparent = True
        end
        object Label18: TLabel
          Left = 392
          Top = 16
          Width = 17
          Height = 13
          Caption = 'UF:'
          Transparent = True
        end
        object Label2: TLabel
          Left = 424
          Top = 16
          Width = 43
          Height = 13
          Caption = 'Recurso:'
          Transparent = True
        end
        object Label12: TLabel
          Left = 8
          Top = 96
          Width = 39
          Height = 13
          Caption = 'Projeto:'
          Transparent = True
        end
        object Label17: TLabel
          Left = 216
          Top = 56
          Width = 63
          Height = 13
          Caption = 'M'#233'todo final:'
          Transparent = True
        end
        object DbEdtDataAcao: TcxDBDateEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'FAT_DATA_ACAO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 0
          Width = 105
        end
        object DbLkpCmbBxMunicipio: TcxDBLookupComboBox
          Left = 120
          Top = 32
          DataBinding.DataField = 'CID_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CID_ID'
          Properties.ListColumns = <
            item
              FieldName = 'CID_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          Properties.OnEditValueChanged = DbLkpCmbBxMunicipioPropertiesEditValueChanged
          TabOrder = 1
          Width = 265
        end
        object DbEdtUF: TcxDBTextEdit
          Left = 392
          Top = 32
          TabStop = False
          DataBinding.DataField = 'UFE_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 2
          Width = 25
        end
        object DbLkpCmbBxMetodoInicial: TcxDBLookupComboBox
          Left = 8
          Top = 72
          DataBinding.DataField = 'MET_ID_INICIAL'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'MET_ID'
          Properties.ListColumns = <
            item
              FieldName = 'MET_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcMetodo
          Properties.PostPopupValueOnTab = True
          TabOrder = 4
          Width = 201
        end
        object DbLkpCmbBxFinalidade: TcxDBLookupComboBox
          Left = 424
          Top = 72
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'FIN_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'FIN_ID'
          Properties.ListColumns = <
            item
              FieldName = 'FIN_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcFinalidade
          Properties.PostPopupValueOnTab = True
          TabOrder = 6
          Width = 371
        end
        object DbLkpCmbBxRecurso: TcxDBLookupComboBox
          Left = 424
          Top = 32
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'REC_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'REC_ID'
          Properties.ListColumns = <
            item
              FieldName = 'REC_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcRecurso
          Properties.PostPopupValueOnTab = True
          TabOrder = 3
          Width = 371
        end
        object DbLkpCmbBxProjeto: TcxDBLookupComboBox
          Left = 8
          Top = 112
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'PRJ_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PRJ_ID'
          Properties.ListColumns = <
            item
              FieldName = 'PRJ_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcProjeto
          Properties.PostPopupValueOnTab = True
          Properties.OnChange = DbLkpCmbBxProjetoPropertiesChange
          TabOrder = 7
          Width = 787
        end
        object DbLkpCmbBxMetodoFinal: TcxDBLookupComboBox
          Left = 216
          Top = 72
          DataBinding.DataField = 'MET_ID_FINAL'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'MET_ID'
          Properties.ListColumns = <
            item
              FieldName = 'MET_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcMetodoFinal
          Properties.PostPopupValueOnTab = True
          TabOrder = 5
          Width = 201
        end
        object PgCntrlTexto: TcxPageControl
          Left = 8
          Top = 139
          Width = 787
          Height = 153
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 8
          Properties.ActivePage = TbShtTematica
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 151
          ClientRectLeft = 2
          ClientRectRight = 785
          ClientRectTop = 28
          object TbShtTematica: TcxTabSheet
            Caption = 'Tem'#225'tica'
            ImageIndex = 0
            DesignSize = (
              783
              123)
            object BtnTematica: TcxButton
              Left = 8
              Top = 8
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
              OnClick = BtnTematicaClick
            end
            object DbMemoTematica: TcxDBMemo
              Left = 8
              Top = 40
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataBinding.DataField = 'FAT_TEMATICA'
              DataBinding.DataSource = DtSrcPrincipal
              Properties.ScrollBars = ssVertical
              TabOrder = 1
              Height = 74
              Width = 767
            end
          end
          object TbShtOrientacao: TcxTabSheet
            Caption = 'Orienta'#231#227'o t'#233'cnica'
            ImageIndex = 1
            DesignSize = (
              783
              123)
            object DbMemoOrientacao: TcxDBMemo
              Left = 8
              Top = 40
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataBinding.DataField = 'FAT_ORIENTACAO'
              DataBinding.DataSource = DtSrcPrincipal
              Properties.ScrollBars = ssVertical
              TabOrder = 1
              Height = 74
              Width = 767
            end
            object BtnOrientacao: TcxButton
              Left = 8
              Top = 8
              Width = 129
              Height = 25
              Caption = 'Editar em tela cheia'
              OptionsImage.ImageIndex = 16
              OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
              TabOrder = 0
              OnClick = BtnOrientacaoClick
            end
          end
          object TbShtResumo: TcxTabSheet
            Caption = 'Resumo da a'#231#227'o'
            ImageIndex = 2
            DesignSize = (
              783
              123)
            object DbMemoResumo: TcxDBMemo
              Left = 8
              Top = 40
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataBinding.DataField = 'FAT_RESUMO'
              DataBinding.DataSource = DtSrcPrincipal
              Properties.ScrollBars = ssVertical
              TabOrder = 1
              Height = 74
              Width = 767
            end
            object BtnResumo: TcxButton
              Left = 8
              Top = 8
              Width = 129
              Height = 25
              Caption = 'Editar em tela cheia'
              OptionsImage.ImageIndex = 16
              OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
              TabOrder = 0
              OnClick = BtnResumoClick
            end
          end
          object TbShtParceria: TcxTabSheet
            Caption = 'Parcerias'
            ImageIndex = 3
            DesignSize = (
              783
              123)
            object BtnParceria: TcxButton
              Left = 8
              Top = 8
              Width = 129
              Height = 25
              Caption = 'Editar em tela cheia'
              OptionsImage.ImageIndex = 16
              OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
              TabOrder = 0
              OnClick = BtnParceriaClick
            end
            object DbMemoParceria: TcxDBMemo
              Left = 8
              Top = 40
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataBinding.DataField = 'FAT_PARCERIA'
              DataBinding.DataSource = DtSrcPrincipal
              Properties.ScrollBars = ssVertical
              TabOrder = 1
              Height = 74
              Width = 767
            end
          end
          object TbShtTecnologia: TcxTabSheet
            Caption = 'Tecnologia inovadora'
            ImageIndex = 4
            DesignSize = (
              783
              123)
            object DbChckBxTecnologia: TcxDBCheckBox
              Left = 144
              Top = 11
              Caption = 'Uso de tecnologia inovadora.'
              DataBinding.DataField = 'FAT_TECNOLOGIA_USO'
              DataBinding.DataSource = DtSrcPrincipal
              ParentBackground = False
              ParentColor = False
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              Style.StyleController = DtmRecursoModulo.cxEditStyleController
              TabOrder = 1
              OnClick = DbChckBxTecnologiaClick
              Width = 169
            end
            object BtnTecnologia: TcxButton
              Left = 8
              Top = 8
              Width = 129
              Height = 25
              Caption = 'Editar em tela cheia'
              OptionsImage.ImageIndex = 16
              OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
              TabOrder = 0
              OnClick = BtnTecnologiaClick
            end
            object DbMemoTecnologia: TcxDBMemo
              Left = 8
              Top = 40
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataBinding.DataField = 'FAT_TECNOLOGIA'
              DataBinding.DataSource = DtSrcPrincipal
              Properties.ScrollBars = ssVertical
              TabOrder = 2
              Height = 74
              Width = 767
            end
          end
          object TbShtPratica: TcxTabSheet
            Caption = 'Boas pr'#225'ticas'
            ImageIndex = 5
            DesignSize = (
              783
              123)
            object DbChckBxBoas: TcxDBCheckBox
              Left = 144
              Top = 11
              Caption = 'Uso de boas pr'#225'ticas de beneficiamento.'
              DataBinding.DataField = 'FAT_BOA_PRATICA_USO'
              DataBinding.DataSource = DtSrcPrincipal
              ParentBackground = False
              ParentColor = False
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              Style.StyleController = DtmRecursoModulo.cxEditStyleController
              TabOrder = 1
              OnClick = DbChckBxBoasClick
              Width = 225
            end
            object BtnPratica: TcxButton
              Left = 8
              Top = 8
              Width = 129
              Height = 25
              Caption = 'Editar em tela cheia'
              OptionsImage.ImageIndex = 16
              OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
              TabOrder = 0
              OnClick = BtnPraticaClick
            end
            object DbMemoPratica: TcxDBMemo
              Left = 8
              Top = 40
              Anchors = [akLeft, akTop, akRight, akBottom]
              DataBinding.DataField = 'FAT_BOA_PRATICA'
              DataBinding.DataSource = DtSrcPrincipal
              Properties.ScrollBars = ssVertical
              TabOrder = 2
              Height = 74
              Width = 767
            end
          end
        end
      end
      object GrdTecVw: TcxGrid
        Left = 437
        Top = 348
        Width = 145
        Height = 137
        Anchors = [akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdTecVwTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcFaterTecnica
          DataController.KeyFieldNames = 'TEC_ID'
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
          OptionsView.Header = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          object GrdTecVwTblTEC_MARCADA: TcxGridDBColumn
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                ImageIndex = 140
              end>
            MinWidth = 25
            Width = 25
          end
          object GrdTecVwTblTEC_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'TEC_DESCRICAO'
          end
        end
        object GrdTecVwLvl: TcxGridLevel
          GridView = GrdTecVwTbl
        end
      end
      object GrdFerVw: TcxGrid
        Left = 590
        Top = 348
        Width = 221
        Height = 137
        Anchors = [akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdFerVwTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcFaterFerramenta
          DataController.KeyFieldNames = 'FER_ID'
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
          OptionsView.Header = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          object GrdFerVwTblFER_MARCADA: TcxGridDBColumn
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                ImageIndex = 140
              end>
            MinWidth = 25
            Width = 25
          end
          object GrdFerVwTblFER_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FER_DESCRICAO'
          end
        end
        object GrdFerVwLvl: TcxGridLevel
          GridView = GrdFerVwTbl
        end
      end
      object GrpBxRegistro: TcxGroupBox
        Left = 8
        Top = 324
        Anchors = [akLeft, akRight, akBottom]
        Caption = 'Outras informa'#231#245'es da Fater'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        DesignSize = (
          422
          154)
        Height = 161
        Width = 422
        object Label13: TLabel
          Left = 8
          Top = 16
          Width = 124
          Height = 13
          Caption = 'Data prevista nova visita:'
          FocusControl = DbEdtDataVisita
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label7: TLabel
          Left = 209
          Top = 56
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Situa'#231#227'o:'
          Transparent = True
          ExplicitLeft = 224
        end
        object Label19: TLabel
          Left = 152
          Top = 16
          Width = 101
          Height = 13
          Caption = 'T'#233'cnico respons'#225'vel:'
          Transparent = True
        end
        object Label20: TLabel
          Left = 8
          Top = 56
          Width = 48
          Height = 13
          Caption = 'Escrit'#243'rio:'
          Transparent = True
        end
        object Label21: TLabel
          Left = 8
          Top = 99
          Width = 121
          Height = 13
          Caption = 'Data da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoData
          Transparent = True
        end
        object Label22: TLabel
          Left = 144
          Top = 99
          Width = 134
          Height = 13
          Caption = 'Usu'#225'rio da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoUsuario
          Transparent = True
        end
        object DbEdtDataVisita: TcxDBDateEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'FAT_DATA_VISITA'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 0
          Width = 137
        end
        object DbImgCmbBxSituacao: TcxDBImageComboBox
          Left = 209
          Top = 72
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'FAT_SITUACAO'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          Properties.Images = DtmRecursoModulo.ImgLstPequenas
          Properties.Items = <
            item
              Description = 'Ativa e validada pela chefia'
              ImageIndex = 48
              Value = 2
            end
            item
              Description = 'Ativa e n'#227'o validada pela chefia'
              ImageIndex = 108
              Value = 1
            end
            item
              Description = 'Inativa'
              ImageIndex = 47
              Value = 3
            end>
          TabOrder = 3
          Width = 205
        end
        object DbLkpCmbBxTecnico: TcxDBLookupComboBox
          Left = 152
          Top = 32
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'FUN_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.DropDownWidth = 350
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'FUN_ID'
          Properties.ListColumns = <
            item
              FieldName = 'FUN_NOME'
            end
            item
              FieldName = 'FUN_MATRICULA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          TabOrder = 1
          Width = 262
        end
        object DbLkpCmbBxUnidade: TcxDBLookupComboBox
          Left = 8
          Top = 72
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'UND_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'UND_ID'
          Properties.ListColumns = <
            item
              FieldName = 'UND_NOME_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 194
        end
        object DbEdtModificadoData: TcxDBTextEdit
          Left = 8
          Top = 115
          DataBinding.DataField = 'REG_MODIFICADO'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 4
          Width = 129
        end
        object DbEdtModificadoUsuario: TcxDBTextEdit
          Left = 144
          Top = 115
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'FAT_MODIFICADO_USUARIO_NOME'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 5
          Width = 270
        end
      end
    end
    object TbShtTecnicas: TcxTabSheet
      Caption = 'T'#233'cnicas e ferramentas'
      ImageIndex = 2
      OnShow = TbShtTecnicasShow
      DesignSize = (
        831
        508)
      object LblTecDis: TLabel
        Left = 384
        Top = 40
        Width = 100
        Height = 13
        Caption = 'T'#233'cnicas dispon'#237'veis:'
        Transparent = True
      end
      object LblTec: TLabel
        Left = 8
        Top = 40
        Width = 109
        Height = 13
        Caption = 'T'#233'cnicas selecionadas:'
        Transparent = True
      end
      object LblFerDis: TLabel
        Left = 384
        Top = 244
        Width = 164
        Height = 13
        Caption = 'Ferramentas de ATER dispon'#237'veis:'
        Transparent = True
      end
      object LblFer: TLabel
        Left = 8
        Top = 244
        Width = 173
        Height = 13
        Caption = 'Ferramentas de ATER selecionadas:'
        Transparent = True
      end
      object LblCategorias: TLabel
        Left = 8
        Top = 8
        Width = 803
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = ' T'#233'cnicas de ATER aplicadas:'
        Color = 14612957
        Font.Charset = ANSI_CHARSET
        Font.Color = 4092194
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitWidth = 809
      end
      object Shape1: TShape
        Left = 8
        Top = 8
        Width = 803
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Brush.Style = bsClear
        Pen.Color = 4092194
        ExplicitWidth = 809
      end
      object Label14: TLabel
        Left = 8
        Top = 212
        Width = 803
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        AutoSize = False
        Caption = ' Ferrametas de ATER aplicadas:'
        Color = 14612957
        Font.Charset = ANSI_CHARSET
        Font.Color = 4092194
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitWidth = 809
      end
      object Shape2: TShape
        Left = 8
        Top = 212
        Width = 803
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        Brush.Style = bsClear
        Pen.Color = 4092194
        ExplicitWidth = 809
      end
      object GrdTecDis: TcxGrid
        Left = 384
        Top = 56
        Width = 329
        Height = 145
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdTecDisTbl: TcxGridDBTableView
          OnDblClick = GrdTecDisTblDblClick
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
          DataController.DataSource = DtSrcTecnica
          DataController.KeyFieldNames = 'TEC_ID'
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
          OptionsView.Header = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          Styles.Selection = DtmRecursoModulo.cxStyleSelection
          object GrdTecDisTblTEC_DESMARCADO: TcxGridDBColumn
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                ImageIndex = 142
              end>
            MinWidth = 25
            Options.HorzSizing = False
            Width = 25
          end
          object GrdTecDisTblTEC_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'TEC_DESCRICAO'
          end
        end
        object GrdTecDisLvl: TcxGridLevel
          GridView = GrdTecDisTbl
        end
      end
      object GrdTec: TcxGrid
        Left = 8
        Top = 56
        Width = 329
        Height = 145
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdTecTbl: TcxGridDBTableView
          OnDblClick = GrdTecTblDblClick
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
          DataController.DataSource = DtSrcFaterTecnica
          DataController.KeyFieldNames = 'FTE_ID'
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
          OptionsView.Header = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          object GrdTecTblTEC_MARCADO: TcxGridDBColumn
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                ImageIndex = 140
              end>
            MinWidth = 25
            Width = 25
          end
          object GrdTecTblTEC_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'TEC_DESCRICAO'
          end
        end
        object GrdTecLvl: TcxGridLevel
          GridView = GrdTecTbl
        end
      end
      object BtnTecRemover: TcxButton
        Tag = 1
        Left = 344
        Top = 88
        Width = 33
        Height = 25
        Hint = 'Remover t'#233'cnica de ATER'
        Caption = '>'
        Description = 'Remove a t'#233'cnica de ATER aplicada '#224' FATER.'
        TabOrder = 2
        OnClick = BtnTecRemoverClick
      end
      object BtnTecAdicionar: TcxButton
        Tag = 1
        Left = 344
        Top = 56
        Width = 33
        Height = 25
        Hint = 'Adicionar t'#233'cnica de ATER'
        Caption = '<'
        Description = 'Adiciona a t'#233'cnica de ATER aplicada '#224' FATER.'
        TabOrder = 3
        OnClick = BtnTecAdicionarClick
      end
      object GrdFerDis: TcxGrid
        Left = 384
        Top = 260
        Width = 329
        Height = 133
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdFerDisTbl: TcxGridDBTableView
          OnDblClick = GrdFerDisTblDblClick
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
          DataController.DataSource = DtSrcFerramenta
          DataController.KeyFieldNames = 'FER_ID'
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
          OptionsView.Header = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          Styles.Selection = DtmRecursoModulo.cxStyleSelection
          object GrdFerDisTbFER_DESMARCADA: TcxGridDBColumn
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                ImageIndex = 142
              end>
            MinWidth = 25
            Options.HorzSizing = False
            Width = 25
          end
          object GrdFerDisTblFER_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FER_DESCRICAO'
            Width = 150
          end
        end
        object GrdFerDisLvl: TcxGridLevel
          GridView = GrdFerDisTbl
        end
      end
      object GrdFer: TcxGrid
        Left = 8
        Top = 260
        Width = 329
        Height = 133
        Anchors = [akLeft, akTop, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdFerTbl: TcxGridDBTableView
          OnDblClick = GrdFerTblDblClick
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
          DataController.DataSource = DtSrcFaterFerramenta
          DataController.KeyFieldNames = 'FFE_ID'
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
          OptionsView.Header = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          Styles.Selection = DtmRecursoModulo.cxStyleSelection
          object GrdFerTblFER_MARCADA: TcxGridDBColumn
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                ImageIndex = 140
              end>
            MinWidth = 25
            Width = 25
          end
          object GrdFerTblFER_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FER_DESCRICAO'
          end
        end
        object GrdFerLvl: TcxGridLevel
          GridView = GrdFerTbl
        end
      end
      object BtnFerRemover: TcxButton
        Tag = 1
        Left = 344
        Top = 292
        Width = 33
        Height = 25
        Hint = 'Remover ferramenta de ATER'
        Caption = '>'
        Description = 'Remove o atributo de ferramenta de ATER aplicada '#224' FATER.'
        TabOrder = 6
        OnClick = BtnFerRemoverClick
      end
      object BtnFerAdicionar: TcxButton
        Tag = 1
        Left = 344
        Top = 260
        Width = 33
        Height = 25
        Hint = 'Adicionar ferramenta de ATER'
        Caption = '<'
        Description = 'Adiciona o atributo de ferramenta de ATER aplicada '#224' FATER.'
        TabOrder = 7
        OnClick = BtnFerAdicionarClick
      end
    end
    object TbShtDetalhes: TcxTabSheet
      Caption = 'Mais detalhes'
      ImageIndex = 1
      DesignSize = (
        831
        508)
      object PgCntrlDetalhes: TcxPageControl
        Left = 8
        Top = 8
        Width = 803
        Height = 477
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        Properties.ActivePage = TbShtProduto
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 475
        ClientRectLeft = 2
        ClientRectRight = 801
        ClientRectTop = 28
        object TbShtProduto: TcxTabSheet
          Caption = 'Cria'#231#227'o/cultura/servi'#231'o'
          ImageIndex = 4
          OnShow = TbShtProdutoShow
          DesignSize = (
            799
            447)
          object GrdPrd: TcxGrid
            Left = 8
            Top = 40
            Width = 783
            Height = 399
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
            object GrdPrdTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcFaterProduto
              DataController.KeyFieldNames = 'PRD_ID'
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
              object GrdPrdTblPRD_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRD_DESCRICAO'
                Width = 166
              end
              object GrdPrdTblDIV_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'DIV_DESCRICAO'
                Width = 106
              end
              object GrdPrdTblGRP_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'GRP_DESCRICAO'
                Width = 107
              end
              object GrdPrdTblCLS_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'CLS_DESCRICAO'
                Width = 106
              end
              object GrdPrdTblUNI_DESCRICAO: TcxGridDBColumn
                DataBinding.FieldName = 'UNI_DESCRICAO'
                Width = 106
              end
            end
            object GrdPrdLvl: TcxGridLevel
              GridView = GrdPrdTbl
            end
          end
          object BtnPrdIncluir: TcxButton
            Tag = 1
            Left = 8
            Top = 7
            Width = 113
            Height = 25
            Hint = 'Inserir produto '#224' FATER'
            Caption = 'Incluir produto...'
            Description = 'Insere um produto '#224' FATER.'
            TabOrder = 0
            OnClick = BtnPrdIncluirClick
          end
          object BtnPrdExcluir: TcxButton
            Tag = 1
            Left = 128
            Top = 7
            Width = 113
            Height = 25
            Hint = 'Excluir produto da FATER'
            Caption = 'Excluir produto'
            Description = 'Exclui o produto atualmente selecionada da FATER.'
            TabOrder = 1
            OnClick = BtnPrdExcluirClick
          end
        end
        object TbShtBeneficiarios: TcxTabSheet
          Caption = 'Benefici'#225'rio atendido'
          ImageIndex = 0
          OnShow = TbShtBeneficiariosShow
          DesignSize = (
            799
            447)
          object Label15: TLabel
            Left = 8
            Top = 8
            Width = 176
            Height = 13
            Caption = 'Benefici'#225'rios cadastrados atendidos:'
            Transparent = True
          end
          object Label16: TLabel
            Left = 8
            Top = 240
            Width = 152
            Height = 13
            Caption = 'Outros participantes atendidos:'
            Transparent = True
          end
          object GrdBen: TcxGrid
            Left = 8
            Top = 56
            Width = 783
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
              DataController.DataSource = DtSrcFaterBeneficiario
              DataController.KeyFieldNames = 'BEN_ID'
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
              object GrdBenTblBEN_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'BEN_NOME'
                Width = 292
              end
              object GrdBenTblBEN_CPF: TcxGridDBColumn
                DataBinding.FieldName = 'BEN_CPF'
                Width = 109
              end
              object GrdBenTblBEN_SEXO: TcxGridDBColumn
                DataBinding.FieldName = 'BEN_SEXO'
                Width = 89
              end
              object GrdBenTblBEN_NASCIMENTO: TcxGridDBColumn
                DataBinding.FieldName = 'BEN_NASCIMENTO'
                Width = 101
              end
            end
            object GrdBenLvl: TcxGridLevel
              GridView = GrdBenTbl
            end
          end
          object BtnBenIncluir: TcxButton
            Tag = 1
            Left = 8
            Top = 24
            Width = 113
            Height = 25
            Hint = 'Inserir benefici'#225'rio atendido'
            Caption = 'Incluir benefici'#225'rio...'
            Description = 'Insere um benefici'#225'rio atendido '#224' FATER.'
            TabOrder = 0
            OnClick = BtnBenIncluirClick
          end
          object BtnBenExcluir: TcxButton
            Tag = 1
            Left = 128
            Top = 24
            Width = 113
            Height = 25
            Hint = 'Excluir benefici'#225'rio atendido'
            Caption = 'Excluir benefici'#225'rio'
            Description = 'Exclui o benefici'#225'rio atendido da FATER.'
            TabOrder = 1
            OnClick = BtnBenExcluirClick
          end
          object GrdBenPar: TcxGrid
            Left = 8
            Top = 288
            Width = 783
            Height = 151
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
            object GrdBenParTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcFaterParticipante
              DataController.KeyFieldNames = 'PRT_ID'
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
              object GrdBenParTblPRT_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'PRT_NOME'
                Width = 292
              end
              object GrdBenParTblPRT_CPF: TcxGridDBColumn
                DataBinding.FieldName = 'PRT_CPF'
                Width = 109
              end
              object GrdBenParTblPRT_SEXO: TcxGridDBColumn
                DataBinding.FieldName = 'PRT_SEXO_DESCRICAO'
                Width = 89
              end
              object GrdBenParTblPRT_NASCIMENTO: TcxGridDBColumn
                DataBinding.FieldName = 'PRT_NASCIMENTO'
                Width = 101
              end
            end
            object GrdBenParLvl: TcxGridLevel
              GridView = GrdBenParTbl
            end
          end
          object BtnBenParIncluir: TcxButton
            Tag = 1
            Left = 8
            Top = 256
            Width = 113
            Height = 25
            Hint = 'Inserir participante n'#227'o benefici'#225'rio'
            Caption = 'Incluir participante...'
            Description = 'Insere um participante n'#227'o benefici'#225'rio '#224' FATER.'
            TabOrder = 3
            OnClick = BtnBenParIncluirClick
          end
          object BtnBenParExcluir: TcxButton
            Tag = 1
            Left = 128
            Top = 256
            Width = 113
            Height = 25
            Hint = 'Excluir participante n'#227'o benefici'#225'rio'
            Caption = 'Excluir participante'
            Description = 'Exclui o participante n'#227'o benefici'#225'rio da FATER.'
            TabOrder = 4
            OnClick = BtnBenParExcluirClick
          end
        end
        object TbShtTecnico: TcxTabSheet
          Caption = 'T'#233'cnico participante'
          ImageIndex = 1
          OnShow = TbShtTecnicoShow
          DesignSize = (
            799
            447)
          object BtnTecIncluir: TcxButton
            Tag = 1
            Left = 8
            Top = 8
            Width = 113
            Height = 25
            Hint = 'Inserir t'#233'cnico da FATER'
            Caption = 'Incluir t'#233'cnico...'
            Description = 'Insere um novo t'#233'cnico '#224' FATER.'
            TabOrder = 0
            OnClick = BtnTecIncluirClick
          end
          object BtnTecExcluir: TcxButton
            Tag = 1
            Left = 128
            Top = 8
            Width = 113
            Height = 25
            Hint = 'Excluir t'#233'cnco da FATER'
            Caption = 'Excluir t'#233'cnico'
            Description = 'Exclui o t'#233'cnico atualmente selecionado da FATER.'
            TabOrder = 1
            OnClick = BtnTecExcluirClick
          end
          object GrdPar: TcxGrid
            Left = 8
            Top = 40
            Width = 783
            Height = 399
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
            object GrdParTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcFaterFuncionario
              DataController.KeyFieldNames = 'FUN_ID'
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
              object GrdParTblFUN_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'FUN_NOME'
                Width = 477
              end
              object GrdParTblFUN_MATRICULA: TcxGridDBColumn
                DataBinding.FieldName = 'FUN_MATRICULA'
                Width = 114
              end
            end
            object GrdParLvl: TcxGridLevel
              GridView = GrdParTbl
            end
          end
        end
        object TbShtComunidades: TcxTabSheet
          Caption = 'Comunidade'
          ImageIndex = 2
          OnShow = TbShtComunidadesShow
          DesignSize = (
            799
            447)
          object GrdCom: TcxGrid
            Left = 8
            Top = 40
            Width = 783
            Height = 399
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
              DataController.DataSource = DtSrcFaterComunidade
              DataController.KeyFieldNames = 'COM_ID'
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
                Width = 294
              end
              object GrdComTblCID_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'CID_NOME'
                Width = 256
              end
              object GrdComTblUFE_ID: TcxGridDBColumn
                DataBinding.FieldName = 'UFE_ID'
                Width = 41
              end
            end
            object GrdComLvl: TcxGridLevel
              GridView = GrdComTbl
            end
          end
          object BtnComIncluir: TcxButton
            Tag = 1
            Left = 8
            Top = 8
            Width = 113
            Height = 25
            Hint = 'Inserir comunidade '#224' FATER'
            Caption = 'Incluir comunidade...'
            Description = 'Insere uma comunidade '#224' FATER.'
            TabOrder = 0
            OnClick = BtnComIncluirClick
          end
          object BtnComExcluir: TcxButton
            Tag = 1
            Left = 128
            Top = 8
            Width = 113
            Height = 25
            Hint = 'Excluir comunidade da FATER'
            Caption = 'Excluir comunidade'
            Description = 'Exclui a comunidade atualmente selecionada da FATER.'
            TabOrder = 1
            OnClick = BtnComExcluirClick
          end
        end
        object TbShtOrganizacao: TcxTabSheet
          Caption = 'Organiza'#231#227'o social'
          ImageIndex = 3
          OnShow = TbShtOrganizacaoShow
          DesignSize = (
            799
            447)
          object GrdOrg: TcxGrid
            Left = 8
            Top = 40
            Width = 783
            Height = 399
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
            ExplicitWidth = 787
            ExplicitHeight = 405
            object GrdOrgTbl: TcxGridDBTableView
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
              DataController.DataSource = DtSrcFaterOrganizacao
              DataController.KeyFieldNames = 'ORG_ID'
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
              object GrdOrgTblORG_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'ORG_NOME'
                Width = 294
              end
              object GrdOrgTblCID_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'CID_NOME'
                Width = 256
              end
              object GrdOrgTblUFE_ID: TcxGridDBColumn
                DataBinding.FieldName = 'UFE_ID'
                Width = 41
              end
            end
            object GrdOrgLvl: TcxGridLevel
              GridView = GrdOrgTbl
            end
          end
          object BtnOrgIncluir: TcxButton
            Tag = 1
            Left = 8
            Top = 8
            Width = 113
            Height = 25
            Hint = 'Inserir organiza'#231#227'o '#224' FATER'
            Caption = 'Incluir organiza'#231#227'o...'
            Description = 'Insere uma organiza'#231#227'o '#224' FATER.'
            TabOrder = 0
            OnClick = BtnOrgIncluirClick
          end
          object BtnOrgExcluir: TcxButton
            Tag = 1
            Left = 128
            Top = 8
            Width = 113
            Height = 25
            Hint = 'Excluir organiza'#231#227'o da FATER'
            Caption = 'Excluir organiza'#231#227'o'
            Description = 'Exclui a organiza'#231#227'o atualmente selecionada da FATER.'
            TabOrder = 1
            OnClick = BtnOrgExcluirClick
          end
        end
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 581
    Hint = 'Inserir nova FATER'
    Description = 'Cria um novo registro de FATER.'
    ExplicitTop = 581
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 581
    Hint = 'Salvar altera'#231#245'es na FATER'
    Description = 'Salva as altera'#231#245'es realizadas no registro de FATER.'
    ExplicitTop = 581
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 581
    Hint = 'Cancelar altera'#231#245'es na FATER'
    Description = 'Cancela as altera'#231#245'es realizadas no registro de FATER.'
    ExplicitTop = 581
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 581
    Hint = 'Excluir FATER'
    Description = 'Exclui a FATER atualmente selecionada.'
    ExplicitTop = 581
  end
  inherited BtnFechar: TcxButton
    Left = 768
    Top = 581
    ExplicitLeft = 768
    ExplicitTop = 581
  end
  inherited BtnRelatorio: TcxButton
    Top = 581
    ExplicitTop = 581
  end
  object PnlTop: TPanel [8]
    Left = 0
    Top = 0
    Width = 851
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Color = 4551200
    ParentBackground = False
    TabOrder = 8
    object LblTitulo: TLabel
      Left = 0
      Top = 0
      Width = 774
      Height = 29
      Align = alClient
      AutoSize = False
      Caption = '      FATER'
      Color = 4551200
      EllipsisPosition = epEndEllipsis
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      ExplicitWidth = 201
    end
    object Image: TImage
      Left = 4
      Top = 2
      Width = 24
      Height = 24
      Picture.Data = {
        055449636F6E0000010001001818000001002000880900001600000028000000
        1800000030000000010020000000000060090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000B0000002600000032
        000000230000000F000000030000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000060000001D0000004038383879DBDBDBEE
        676767A10000005B000000360000001400000005000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000010000000B000000230202024C11111183C6C6C6F6F6F6F6FF
        D6D6D6FFAFAFAFFB7A7A7AC30000005B00000033000000190000000800000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000070000001B0000003C02020266595959CE686868FCD5D5D5FFD0D0D0FF
        A2A2A2FFDEDEDEFFA1A1A1FFBABABAFDAAAAAAD5202020640000002B00000009
        0000000000000000000000000000000000000000000000000000000300000013
        000000310000005A3E3E3EA18B8A8AF6AEACA9FFBDBAB6FFA5A4A3FF959595FF
        CACACAFFE1E1E1FFD2D2D2FFA9A9A9FFB2B2B2FFDDDDDDFFD3D3D3D65F5F5F22
        00000000000000000000000000000000000000010000000D000000260000004D
        23232386787878DEB1AFAEFFD0CCC7FFD5D1CCFFD6D2CDFFD0CCC9FF878787FF
        BCBCBCFFA3A3A3FFC7C7C7FFB8B8B8FFBFBFBFFFA6A6A6FFCACACAF900000017
        000000000000000000000000000000090000001E0000004114141472626262C5
        AAA9A8FBCCC8C4FFD5D1CCFFD6D2CDFFD7D3CEFFD8D4D0FFD8D5D1FFA8A6A4FF
        848484FFE1E1E1FFFDFDFDFFB2B2B2FFBFBFBFFFDADADAFF8C8C8CDD00000036
        0000000E0000000400000016000000360000005F474747A99C9C9BF5CAC7C3FF
        D5D1CCFFD6D2CDFFD7D3CEFFD8D4CFFFD8D5D0FFD9D6D1FFDAD7D2FFDBD8D4FF
        A4A3A3FFDEDEDEFFFBFBFBFFFDFDFDFFACACACFFC5C5C5FFEAEAEAFE9B9B9BA8
        00000021000000160000004922222289848483E8A7A6A3FFB2AFABFFC4C1BCFF
        D3D1CCFFD7D4CFFFD8D5D0FFD9D6D1FFDAD7D2FFDBD8D3FFDCD9D5FFDDD9D6FF
        BFBDBAFFBBBBBBFFEEEEEEFFFDFDFDFFF7F7F7FFA3A3A3FFCDCDCDFFF4F4F4FF
        C2C2C2760000002E686868BAB6B5B4FFC8C4C1FFAEAAA6FF9A9895FFA5A39FFF
        BCB9B5FFCFCCC7FFD9D6D1FFDBD7D3FFDCD8D4FFDDD9D6FFDDDAD7FFDEDBD8FF
        DFDCD9FFA8A8A7FFD6D6D6FFF8F8F8FFF3F3F3FFE1E1E1FF979797FFCACACAF8
        7676761E2828283DCAC8C5FFC9C6C4FFC6C4C1FF7B9CAAFF9C9FA0FFA9A095FF
        8F8A86FFA4A19EFFC0BCB9FFD2CFCBFFDCD9D5FFDEDBD8FFDFDCD9FFE0DDDAFF
        E1DEDBFFCDCBC9FFB1B1B1FFE0E0E0FFD4D4D4FFC4C4C4FFD3D3D3FF53535391
        0000001900000018D6D3CEFFD7D7D7FFD2D2D1FFD1CDCAFF99948DFFB8A998FF
        CDBCA7FFA59B8CFF898782FFA8A6A3FFC7C5C2FFDBD8D5FFE1DEDBFFE1DFDCFF
        E2E0DDFFE3E1DEFFAAA9A8FFACACACFFA6A6A6FFABABAAFFDEDEDEFFD4D4D4E1
        0000002000000004C7C4C1B0D6D2CFFFD8D5D1FFDAD7D3FFD8D5D0FFC1B6A8FF
        C2B3A0FFD1C1ABFFCEBCA7FF9C9183FF949290FFBAB9B6FFD6D4D1FFE2E0DDFF
        E4E2DFFFE5E3E0FFDEDBD9FFADABAAFFE0DEDCFFB9B8B7FFCCCCCCFFE5E5E5F4
        5959592700000000DAD6D210D5D3CFEFDBD8D4FFDCD9D5FFDDDAD6FFDCD9D5FF
        C7BBAEFFC8B8A6FFCDBCA8FFDDCBB4FFB9AA97FF8A8680FFAAA8A6FFCDCAC8FF
        E1DEDCFFE6E4E2FFE7E5E3FFE8E6E4FFE9E7E5FFEAE8E6FFB4B3B3FE31313188
        000000230000000000000000DCD9D550DDDAD6FFDEDBD7FFDFDCD8FFDFDDD9FF
        E0DDD8FFD1C8BCFFCDBDABFFCCBCAAFFDDCAB4FFD1BFA9FF9B9185FF979594FF
        BDBCBAFFD9D8D6FFE7E5E3FFEAE8E6FFEBE9E7FFECEAE8FFD7D6D5FF737373D1
        00000037000000000000000000000000DCDAD6B4DFDDD9FFE0DDDAFFE1DEDBFF
        E2DFDCFFE4E1DDFFDBD3CBFFCEC0AFFFCFBFADFFD8C6B1FFE4D1B9FFB8AA97FF
        8A8681FFAAA8A7FFCECDCBFFE5E4E2FFECEBE9FFD9D9D7FFD5D4D3FFBDBCBCFF
        00000036000000000000000000000000E0DDDA20E0DDDAF2E2DFDCFFE3E0DDFF
        E4E1DEFFE4E2DFFFE6E3E0FFE3DFDAFFD1C6B7FFCFBFADFFD3C3AFFFE7D3BCFF
        D2C0AAFF9A9084FF959493FFBFBFBDFFDFDEDCFFCACACAFFD0D0D0FFD5D5D4F9
        0000001F00000000000000000000000000000000E3E0DD7FE3E1DEFFE4E2DFFF
        E5E3E0FFE6E4E1FFE7E5E2FFE8E6E4FFEAE7E4FFDBD4CBFFCDBEADFFCFBFADFF
        E0CEB9FFE1CEB6FFB7A996FF8B8884FFAEADACFFCECECEFFE2E1E0F8AFAFAE6D
        000000080000000000000000000000000000000000000000E5E3E0CFE6E4E1FF
        E7E5E2FFE8E6E3FFE9E7E5FFE9E8E6FFEAE9E7FFECE9E8FFE8E4E0FFD1C4B6FF
        CFBFADFFDCCAB6FFE7D5BDFFCFBDA8FF988E83FB616161A00000002E0000000D
        000000010000000000000000000000000000000000000000E7E5E240E8E6E3FF
        E8E7E4FFE9E7E5FFEAE8E7FFEBE9E8FFECEAE9FFEDEBEAFFEEECEBFFEEECEAFF
        D8D0C6FFCDBEADFFD7C6B3FFE9D7C0FFDCC9B2FFB4A592EF1F1D197900000034
        0000000B000000000000000000000000000000000000000000000000E9E7E58F
        EAE8E6FFEBE9E8FFECEAE9FFEDEBEAFFEDECEBFFEEEDECFFEFEEEDFFF0EFEEFF
        F1F0EFE0E2DBD389C7B8A6E0CFC0AEFFE3D1BCFFE1CEB6FFA9A49BEE28282862
        00000012000000000000000000000000000000000000000000000000EBE9E710
        ECEAE8EFE6E4E3FFD3D3D3FFDEDDDCFFEFEEEDFFF0EFEEFFF1F0EFDFF1F0EF60
        00000000FFF0E103F0E2D412C7B8A59CC8B9A6FFCEBFADFFE1DFDCFF71717163
        0000000B00000000000000000000000000000000000000000000000000000000
        EDECEA50E4E3E1FFCBCBCBFFDFDFDEFFF1F0EFDFF1F0EF600000000000000000
        000000000000000000000000FFF0E108D1C3B327A09E9C909493939B0000000B
        0000000100000000000000000000000000000000000000000000000000000000
        00000000F0EFEE90F1F0EFC0F1F0EF6000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFF03F00FFC00F00FF000300FE000100F8000100E0000100C0000000
        00000000000000000000000000000000000000000000000080000000C0000000
        E0000000E0000000F0000000F8000000F8000000FC000000FC010000FE07C000
        FF1FFF00}
      Transparent = True
    end
    object LblReplicacao: TLabel
      Left = 774
      Top = 0
      Width = 77
      Height = 29
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      Caption = 'Migra'#231#227'o pendente'
      Color = 5855696
      EllipsisPosition = epEndEllipsis
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
      WordWrap = True
      ExplicitLeft = 648
    end
  end
  inherited DtStPrincipal: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_PRD_FATER'
      'SET '
      '    FAT_DATA_ACAO = :FAT_DATA_ACAO,'
      '    FAT_DATA_VISITA = :FAT_DATA_VISITA,'
      '    FAT_SITUACAO = :FAT_SITUACAO,'
      '    FAT_TEMATICA = :FAT_TEMATICA,'
      '    FAT_ORIENTACAO = :FAT_ORIENTACAO,'
      '    FAT_RESUMO = :FAT_RESUMO,'
      '    FAT_PARCERIA = :FAT_PARCERIA,'
      '    FAT_TECNOLOGIA_USO = :FAT_TECNOLOGIA_USO,'
      '    FAT_TECNOLOGIA = :FAT_TECNOLOGIA,'
      '    FAT_BOA_PRATICA_USO = :FAT_BOA_PRATICA_USO,'
      '    FAT_BOA_PRATICA = :FAT_BOA_PRATICA,'
      '    UND_ID = :UND_ID,'
      '    FIN_ID = :FIN_ID,'
      '    MET_ID_INICIAL = :MET_ID_INICIAL,'
      '    MET_ID_FINAL = :MET_ID_FINAL,'
      '    CID_ID = :CID_ID,'
      '    FUN_ID = :FUN_ID,'
      '    REC_ID = :REC_ID,'
      '    PRJ_ID = :PRJ_ID,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    FAT_ID = :OLD_FAT_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_PRD_FATER'
      'WHERE'
      '        FAT_ID = :OLD_FAT_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER('
      '    FAT_ID,'
      '    FAT_DATA_ACAO,'
      '    FAT_DATA_VISITA,'
      '    FAT_SITUACAO,'
      '    FAT_TEMATICA,'
      '    FAT_ORIENTACAO,'
      '    FAT_RESUMO,'
      '    FAT_PARCERIA,'
      '    FAT_TECNOLOGIA_USO,'
      '    FAT_TECNOLOGIA,'
      '    FAT_BOA_PRATICA_USO,'
      '    FAT_BOA_PRATICA,'
      '    UND_ID,'
      '    FIN_ID,'
      '    MET_ID_INICIAL,'
      '    MET_ID_FINAL,'
      '    CID_ID,'
      '    FUN_ID,'
      '    REC_ID,'
      '    PRJ_ID,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :FAT_ID,'
      '    :FAT_DATA_ACAO,'
      '    :FAT_DATA_VISITA,'
      '    :FAT_SITUACAO,'
      '    :FAT_TEMATICA,'
      '    :FAT_ORIENTACAO,'
      '    :FAT_RESUMO,'
      '    :FAT_PARCERIA,'
      '    :FAT_TECNOLOGIA_USO,'
      '    :FAT_TECNOLOGIA,'
      '    :FAT_BOA_PRATICA_USO,'
      '    :FAT_BOA_PRATICA,'
      '    :UND_ID,'
      '    :FIN_ID,'
      '    :MET_ID_INICIAL,'
      '    :MET_ID_FINAL,'
      '    :CID_ID,'
      '    :FUN_ID,'
      '    :REC_ID,'
      '    :PRJ_ID,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.fat_id,'
      '  a.fat_data_acao,'
      '  a.fat_data_visita,'
      '  a.fat_situacao,'
      '  a.fat_tematica,'
      '  a.fat_orientacao,'
      '  a.fat_resumo,'
      '  a.fat_parceria,'
      '  a.fat_tecnologia_uso,'
      '  a.fat_tecnologia,'
      '  a.fat_boa_pratica_uso,'
      '  a.fat_boa_pratica,'
      '  a.und_id,'
      '  a.fin_id,'
      '  a.met_id_inicial,'
      '  a.met_id_final,'
      '  a.cid_id,'
      '  a.fun_id,'
      '  a.rec_id,'
      '  a.prj_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.ufe_id,'
      
        '  '#39'('#39' || coalesce(c.usr_login, '#39'N'#227'o identificado'#39') || '#39') '#39' || co' +
        'alesce(d.fun_nome, '#39#39') as fat_modificado_usuario_nome'
      'from'
      
        '  tab_prd_fater a left join tab_dne_cidade b on (a.cid_id = b.ci' +
        'd_id) left join'
      '  tab_sis_usuario c on (a.reg_usuario = c.usr_login) left join'
      '  tab_pes_funcionario d on (c.usr_id = d.usr_id)'
      'where( '
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))'
      '     ) and (     A.FAT_ID = :OLD_FAT_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.fat_id,'
      '  a.fat_data_acao,'
      '  a.fat_data_visita,'
      '  a.fat_situacao,'
      '  a.fat_tematica,'
      '  a.fat_orientacao,'
      '  a.fat_resumo,'
      '  a.fat_parceria,'
      '  a.fat_tecnologia_uso,'
      '  a.fat_tecnologia,'
      '  a.fat_boa_pratica_uso,'
      '  a.fat_boa_pratica,'
      '  a.und_id,'
      '  a.fin_id,'
      '  a.met_id_inicial,'
      '  a.met_id_final,'
      '  a.cid_id,'
      '  a.fun_id,'
      '  a.rec_id,'
      '  a.prj_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.ufe_id,'
      
        '  '#39'('#39' || coalesce(c.usr_login, '#39'N'#227'o identificado'#39') || '#39') '#39' || co' +
        'alesce(d.fun_nome, '#39#39') as fat_modificado_usuario_nome'
      'from'
      
        '  tab_prd_fater a left join tab_dne_cidade b on (a.cid_id = b.ci' +
        'd_id) left join'
      '  tab_sis_usuario c on (a.reg_usuario = c.usr_login) left join'
      '  tab_pes_funcionario d on (c.usr_id = d.usr_id)'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    AutoUpdateOptions.UpdateTableName = 'TAB_PRD_FATER'
    AutoUpdateOptions.KeyFields = 'FAT_ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 88
    Top = 192
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 96
    Top = 296
  end
  inherited QryPrincipal: TFDQuery
    SQL.Strings = (
      'select'
      '  a.fat_id,'
      '  a.fat_data_acao,'
      '  a.fat_data_visita,'
      '  a.fat_situacao,'
      '  a.fat_tematica,'
      '  a.fat_orientacao,'
      '  a.fat_resumo,'
      '  a.fat_parceria,'
      '  a.fat_tecnologia_uso,'
      '  a.fat_tecnologia,'
      '  a.fat_boa_pratica_uso,'
      '  a.fat_boa_pratica,'
      '  a.und_id,'
      '  a.fin_id,'
      '  a.met_id_inicial,'
      '  a.met_id_final,'
      '  a.cid_id,'
      '  a.fun_id,'
      '  a.rec_id,'
      '  a.prj_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.ufe_id,'
      
        '  '#39'('#39' || coalesce(c.usr_login, '#39'N'#227'o identificado'#39') || '#39') '#39' || co' +
        'alesce(d.fun_nome, '#39#39') as fat_modificado_usuario_nome'
      'from'
      
        '  tab_prd_fater a left join tab_dne_cidade b on (a.cid_id = b.ci' +
        'd_id) left join'
      '  tab_sis_usuario c on (a.reg_usuario = c.usr_login) left join'
      '  tab_pes_funcionario d on (c.usr_id = d.usr_id)'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    Left = 32
    Top = 296
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryPrincipalFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalFAT_DATA_ACAO: TDateField
      DisplayLabel = 'Data da a'#231#227'o'
      FieldName = 'FAT_DATA_ACAO'
      Origin = 'FAT_DATA_ACAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalFAT_DATA_VISITA: TDateField
      DisplayLabel = 'Data da pr'#243'xima visita'
      FieldName = 'FAT_DATA_VISITA'
      Origin = 'FAT_DATA_VISITA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalFAT_SITUACAO: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'FAT_SITUACAO'
      Origin = 'FAT_SITUACAO'
    end
    object QryPrincipalFAT_TEMATICA: TMemoField
      DisplayLabel = 'Tem'#225'tica'
      FieldName = 'FAT_TEMATICA'
      Origin = 'FAT_TEMATICA'
      BlobType = ftMemo
    end
    object QryPrincipalFAT_ORIENTACAO: TMemoField
      DisplayLabel = 'Orienta'#231#227'o t'#233'cnica'
      FieldName = 'FAT_ORIENTACAO'
      Origin = 'FAT_ORIENTACAO'
      BlobType = ftMemo
    end
    object QryPrincipalFAT_RESUMO: TMemoField
      DisplayLabel = 'Resumo da a'#231#227'o'
      FieldName = 'FAT_RESUMO'
      Origin = 'FAT_RESUMO'
      BlobType = ftMemo
    end
    object QryPrincipalFAT_PARCERIA: TMemoField
      DisplayLabel = 'Parcerias'
      FieldName = 'FAT_PARCERIA'
      Origin = 'FAT_PARCERIA'
      BlobType = ftMemo
    end
    object QryPrincipalFAT_TECNOLOGIA_USO: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Uso de tecnologia inovadora'
      FieldName = 'FAT_TECNOLOGIA_USO'
      Origin = 'FAT_TECNOLOGIA_USO'
    end
    object QryPrincipalFAT_TECNOLOGIA: TMemoField
      DisplayLabel = 'Tecnologia inovadora'
      FieldName = 'FAT_TECNOLOGIA'
      Origin = 'FAT_TECNOLOGIA'
      BlobType = ftMemo
    end
    object QryPrincipalFAT_BOA_PRATICA_USO: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Uso de boas pr'#225'ticas de beneficiamento'
      FieldName = 'FAT_BOA_PRATICA_USO'
      Origin = 'FAT_BOA_PRATICA_USO'
    end
    object QryPrincipalFAT_BOA_PRATICA: TMemoField
      DisplayLabel = 'Boas pr'#225'ticas de beneficiamento'
      FieldName = 'FAT_BOA_PRATICA'
      Origin = 'FAT_BOA_PRATICA'
      BlobType = ftMemo
    end
    object QryPrincipalUND_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Regional'
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
    end
    object QryPrincipalFIN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Finalidade'
      FieldName = 'FIN_ID'
      Origin = 'FIN_ID'
    end
    object QryPrincipalCID_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Munic'#237'pio da a'#231#227'o'
      FieldName = 'CID_ID'
      Origin = 'CID_ID'
    end
    object QryPrincipalPRJ_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'PRJ_ID'
      Origin = 'PRJ_ID'
    end
    object QryPrincipalFUN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'T'#233'cnico respons'#225'vel'
      FieldName = 'FUN_ID'
      Origin = 'FUN_ID'
    end
    object QryPrincipalREC_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Fonte de recursos'
      FieldName = 'REC_ID'
      Origin = 'REC_ID'
    end
    object QryPrincipalUFE_ID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object QryPrincipalMET_ID_INICIAL: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'MET_ID_INICIAL'
      Origin = 'MET_ID_INICIAL'
    end
    object QryPrincipalMET_ID_FINAL: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'MET_ID_FINAL'
      Origin = 'MET_ID_FINAL'
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
    object QryPrincipalFAT_MODIFICADO_USUARIO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAT_MODIFICADO_USUARIO_NOME'
      Origin = 'FAT_MODIFICADO_USUARIO_NOME'
      ProviderFlags = []
      Size = 153
    end
  end
  inherited UpdtPrincipal: TFDUpdateSQL
    Left = 64
    Top = 296
  end
  object DtSrcMetodo: TDataSource
    DataSet = DtmProdutividadeModulo.DtStMetodo
    Left = 128
    Top = 296
  end
  object DtSrcFinalidade: TDataSource
    DataSet = DtmProdutividadeModulo.DtStFinalidade
    Left = 160
    Top = 296
  end
  object DtSrcRecurso: TDataSource
    DataSet = DtmProdutividadeModulo.DtStRecurso
    Left = 192
    Top = 296
  end
  object DtSrcFaterTecnica: TDataSource
    DataSet = DtStFaterTecnica
    Left = 96
    Top = 328
  end
  object DtSrcTecnica: TDataSource
    DataSet = DtStTecnica
    Left = 160
    Top = 328
  end
  object DtSrcFaterFerramenta: TDataSource
    DataSet = DtStFaterFerramenta
    Left = 96
    Top = 360
  end
  object DtSrcFerramenta: TDataSource
    DataSet = DtStFerramenta
    Left = 160
    Top = 360
  end
  object DtSrcFaterBeneficiario: TDataSource
    DataSet = DtStFaterBeneficiario
    OnStateChange = DtSrcFaterBeneficiarioStateChange
    Left = 96
    Top = 392
  end
  object DtSrcFaterParticipante: TDataSource
    DataSet = DtStFaterParticipante
    OnStateChange = DtSrcFaterParticipanteStateChange
    Left = 96
    Top = 424
  end
  object DtSrcFaterComunidade: TDataSource
    DataSet = DtStFaterComunidade
    OnStateChange = DtSrcFaterComunidadeStateChange
    Left = 96
    Top = 456
  end
  object DtSrcFaterOrganizacao: TDataSource
    DataSet = DtStFaterOrganizacao
    OnStateChange = DtSrcFaterOrganizacaoStateChange
    Left = 96
    Top = 488
  end
  object DtSrcFaterFuncionario: TDataSource
    DataSet = DtStFaterFuncionario
    OnStateChange = DtSrcFaterFuncionarioStateChange
    Left = 96
    Top = 520
  end
  object DtSrcProjeto: TDataSource
    DataSet = DtStProjeto
    Left = 536
    Top = 136
  end
  object DtSrcFaterProduto: TDataSource
    DataSet = DtStFaterProduto
    OnStateChange = DtSrcFaterProdutoStateChange
    Left = 96
    Top = 552
  end
  object DtSrcMetodoFinal: TDataSource
    DataSet = DtmProdutividadeModulo.DtStMetodoFinal
    Left = 224
    Top = 296
  end
  object DtStFaterProduto: TFDQuery
    AfterPost = DtStFaterProdutoAfterPost
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFaterProduto
    SQL.Strings = (
      'select'
      '  z.fpr_id,'
      '  z.fat_id,'
      '  z.prd_id,'
      '  z.reg_excluido,'
      '  z.reg_replicado,'
      '  z.reg_usuario,'
      '  z.reg_modificado,'
      '  a.prd_descricao,'
      '  a.div_id,'
      '  b.div_descricao,'
      '  b.div_tipo,'
      '  c.grp_descricao,'
      '  d.cls_descricao,'
      '  e.uni_descricao,'
      '  e.uni_id'
      'from'
      
        '  tab_prd_fater_produto z join tab_cad_produto a on (z.prd_id = ' +
        'a.prd_id) left join'
      '  tab_cad_divisao b on (a.div_id = b.div_id) left join'
      '  tab_cad_grupo c on (a.grp_id = c.grp_id) left join'
      '  tab_cad_classe d on (a.cls_id = d.cls_id) left join'
      '  tab_cad_unidade_medida e on (a.uni_id = e.uni_id)'
      'where'
      '  (z.fat_id = :fat_id) and'
      '  (z.reg_excluido = 0)'
      'order by'
      '  a.prd_descricao')
    Left = 32
    Top = 552
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object DtStFaterProdutoFPR_ID: TLargeintField
      FieldName = 'FPR_ID'
      Origin = 'FPR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStFaterProdutoFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
      Required = True
    end
    object DtStFaterProdutoPRD_ID: TIntegerField
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
      Required = True
    end
    object DtStFaterProdutoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object DtStFaterProdutoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object DtStFaterProdutoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object DtStFaterProdutoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object DtStFaterProdutoPRD_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cria'#231#227'o/cultura/servi'#231'o'
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object DtStFaterProdutoDIV_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DIV_ID'
      Origin = 'DIV_ID'
      ProviderFlags = []
    end
    object DtStFaterProdutoDIV_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Atividade produtiva'
      FieldName = 'DIV_DESCRICAO'
      Origin = 'DIV_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object DtStFaterProdutoDIV_TIPO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'DIV_TIPO'
      Origin = 'DIV_TIPO'
      ProviderFlags = []
    end
    object DtStFaterProdutoGRP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Grupo'
      FieldName = 'GRP_DESCRICAO'
      Origin = 'GRP_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object DtStFaterProdutoCLS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Classe'
      FieldName = 'CLS_DESCRICAO'
      Origin = 'CLS_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object DtStFaterProdutoUNI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object DtStFaterProdutoUNI_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNI_ID'
      Origin = 'UNI_ID'
      ProviderFlags = []
    end
  end
  object UpdtFaterProduto: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER_PRODUTO'
      '(FPR_ID, FAT_ID, PRD_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FPR_ID, :NEW_FAT_ID, :NEW_PRD_ID, :NEW_REG_EXCLUIDO' +
        ', :NEW_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FATER_PRODUTO'
      
        'SET FPR_ID = :NEW_FPR_ID, FAT_ID = :NEW_FAT_ID, PRD_ID = :NEW_PR' +
        'D_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE FPR_ID = :OLD_FPR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FATER_PRODUTO'
      'WHERE FPR_ID = :OLD_FPR_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FPR_ID, FAT_ID, PRD_ID, REG_EXCLUIDO, REG_REPLICADO, REG_' +
        'USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_FATER_PRODUTO'
      'WHERE FPR_ID = :FPR_ID')
    Left = 64
    Top = 552
  end
  object DtStFaterTecnica: TFDQuery
    AfterPost = DtStFaterTecnicaAfterPost
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.fte_id,'
      '  a.fat_id,'
      '  a.tec_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.tec_descricao'
      'from'
      
        '  tab_prd_fater_tecnica a join tab_prd_tecnica b on (a.tec_id = ' +
        'b.tec_id)'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.tec_descricao')
    Left = 32
    Top = 328
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object DtStFaterTecnicaFTE_ID: TLargeintField
      FieldName = 'FTE_ID'
      Origin = 'FTE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DtStFaterTecnicaFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
    end
    object DtStFaterTecnicaTEC_ID: TIntegerField
      FieldName = 'TEC_ID'
      Origin = 'TEC_ID'
    end
    object DtStFaterTecnicaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object DtStFaterTecnicaREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object DtStFaterTecnicaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object DtStFaterTecnicaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object DtStFaterTecnicaTEC_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TEC_DESCRICAO'
      Origin = 'TEC_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object UpdtFaterTecnica: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER_TECNICA'
      '(FTE_ID, FAT_ID, TEC_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FTE_ID, :NEW_FAT_ID, :NEW_TEC_ID, :NEW_REG_EXCLUIDO' +
        ', :NEW_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FATER_TECNICA'
      
        'SET FTE_ID = :NEW_FTE_ID, FAT_ID = :NEW_FAT_ID, TEC_ID = :NEW_TE' +
        'C_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE FTE_ID = :OLD_FTE_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FATER_TECNICA'
      'WHERE FTE_ID = :OLD_FTE_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FTE_ID, FAT_ID, TEC_ID, REG_EXCLUIDO, REG_REPLICADO, REG_' +
        'USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_FATER_TECNICA'
      'WHERE FTE_ID = :FTE_ID')
    Left = 64
    Top = 328
  end
  object DtStTecnica: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.tec_id,'
      '  a.tec_descricao'
      'from'
      '  tab_prd_tecnica a'
      'where'
      
        '  not exists (select c.tec_id from tab_prd_fater_tecnica c where' +
        ' c.fat_id = :fat_id and c.tec_id = a.tec_id and c.reg_excluido =' +
        ' 0) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.tec_descricao')
    Left = 128
    Top = 328
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object DtStTecnicaTEC_ID: TIntegerField
      FieldName = 'TEC_ID'
      Origin = 'TEC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStTecnicaTEC_DESCRICAO: TStringField
      FieldName = 'TEC_DESCRICAO'
      Origin = 'TEC_DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object DtStFaterFerramenta: TFDQuery
    AfterPost = DtStFaterFerramentaAfterPost
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFaterFerramenta
    SQL.Strings = (
      'select'
      '  a.ffe_id,'
      '  a.fat_id,'
      '  a.fer_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.fer_descricao'
      'from'
      
        '  tab_prd_fater_ferramenta a join tab_prd_ferramenta b on (a.fer' +
        '_id = b.fer_id)'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.fer_descricao')
    Left = 32
    Top = 360
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object DtStFaterFerramentaFFE_ID: TLargeintField
      FieldName = 'FFE_ID'
      Origin = 'FFE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object DtStFaterFerramentaFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
    end
    object DtStFaterFerramentaFER_ID: TIntegerField
      FieldName = 'FER_ID'
      Origin = 'FER_ID'
    end
    object DtStFaterFerramentaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object DtStFaterFerramentaREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object DtStFaterFerramentaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object DtStFaterFerramentaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object DtStFaterFerramentaFER_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FER_DESCRICAO'
      Origin = 'FER_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
  end
  object UpdtFaterFerramenta: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 64
    Top = 360
  end
  object DtStFaterBeneficiario: TFDQuery
    AfterPost = QryFaterBeneficiarioAfterPost
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFaterBeneficiario
    SQL.Strings = (
      'select'
      '  a.fbe_id,'
      '  a.fat_id,'
      '  a.ben_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.ben_nome,'
      '  b.ben_cpf,'
      '  case b.ben_sexo'
      '    when '#39'M'#39' then '#39'Masculino'#39
      '    when '#39'F'#39' then '#39'Feminino'#39
      '  end as ben_sexo,'
      '  b.ben_nascimento'
      'from'
      
        '  tab_prd_fater_beneficiario a join tab_cad_beneficiario b on (a' +
        '.ben_id = b.ben_id)'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.ben_nome')
    Left = 32
    Top = 392
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object DtStFaterBeneficiarioFBE_ID: TLargeintField
      FieldName = 'FBE_ID'
      Origin = 'FBE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStFaterBeneficiarioFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
      Required = True
    end
    object DtStFaterBeneficiarioBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
      Required = True
    end
    object DtStFaterBeneficiarioREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object DtStFaterBeneficiarioREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object DtStFaterBeneficiarioREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object DtStFaterBeneficiarioREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object DtStFaterBeneficiarioBEN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do benefici'#225'rio'
      FieldName = 'BEN_NOME'
      Origin = 'BEN_NOME'
      ProviderFlags = []
      Size = 150
    end
    object DtStFaterBeneficiarioBEN_CPF: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'BEN_CPF'
      Origin = 'BEN_CPF'
      ProviderFlags = []
      EditMask = '000.000.000\-00;0; '
      Size = 11
    end
    object DtStFaterBeneficiarioBEN_SEXO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'BEN_SEXO'
      Origin = 'BEN_SEXO'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object DtStFaterBeneficiarioBEN_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nascimento'
      FieldName = 'BEN_NASCIMENTO'
      Origin = 'BEN_NASCIMENTO'
      ProviderFlags = []
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object UpdtFaterBeneficiario: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 64
    Top = 392
  end
  object DtStFaterParticipante: TFDQuery
    BeforePost = DtStFaterParticipanteBeforePost
    AfterPost = DtStFaterParticipanteAfterPost
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFaterParticipante
    SQL.Strings = (
      'select'
      '  a.prt_id,'
      '  a.prt_nome,'
      '  a.prt_cpf,'
      '  a.prt_sexo,'
      '  a.prt_nascimento,'
      '  a.prt_observacao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.fat_id,'
      '  case a.prt_sexo'
      '    when '#39'M'#39' then '#39'Masculino'#39
      '    when '#39'F'#39' then '#39'Feminino'#39
      '  end as prt_sexo_descricao'
      'from'
      '  tab_prd_fater_participante a'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.prt_nome')
    Left = 32
    Top = 424
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object DtStFaterParticipantePRT_ID: TLargeintField
      FieldName = 'PRT_ID'
      Origin = 'PRT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStFaterParticipantePRT_NOME: TStringField
      DisplayLabel = 'Nome do participante'
      FieldName = 'PRT_NOME'
      Origin = 'PRT_NOME'
      Size = 100
    end
    object DtStFaterParticipantePRT_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'PRT_CPF'
      Origin = 'PRT_CPF'
      EditMask = '000.000.000\-00;0; '
      Size = 11
    end
    object DtStFaterParticipantePRT_SEXO: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'PRT_SEXO'
      Origin = 'PRT_SEXO'
      FixedChar = True
      Size = 1
    end
    object DtStFaterParticipantePRT_NASCIMENTO: TDateField
      DisplayLabel = 'Nascimento'
      FieldName = 'PRT_NASCIMENTO'
      Origin = 'PRT_NASCIMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DtStFaterParticipantePRT_OBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'PRT_OBSERVACAO'
      Origin = 'PRT_OBSERVACAO'
      BlobType = ftMemo
    end
    object DtStFaterParticipanteFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
      Required = True
    end
    object DtStFaterParticipantePRT_SEXO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'PRT_SEXO_DESCRICAO'
      Origin = 'PRT_SEXO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object DtStFaterParticipanteREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object DtStFaterParticipanteREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object DtStFaterParticipanteREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object DtStFaterParticipanteREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtFaterParticipante: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER_PARTICIPANTE'
      '(PRT_ID, PRT_NOME, PRT_CPF, PRT_SEXO, PRT_NASCIMENTO, '
      '  PRT_OBSERVACAO, FAT_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PRT_ID, :NEW_PRT_NOME, :NEW_PRT_CPF, :NEW_PRT_SEXO,' +
        ' :NEW_PRT_NASCIMENTO, '
      
        '  :NEW_PRT_OBSERVACAO, :NEW_FAT_ID, :NEW_REG_EXCLUIDO, :NEW_REG_' +
        'REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FATER_PARTICIPANTE'
      
        'SET PRT_ID = :NEW_PRT_ID, PRT_NOME = :NEW_PRT_NOME, PRT_CPF = :N' +
        'EW_PRT_CPF, '
      
        '  PRT_SEXO = :NEW_PRT_SEXO, PRT_NASCIMENTO = :NEW_PRT_NASCIMENTO' +
        ', '
      '  PRT_OBSERVACAO = :NEW_PRT_OBSERVACAO, FAT_ID = :NEW_FAT_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PRT_ID = :OLD_PRT_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FATER_PARTICIPANTE'
      'WHERE PRT_ID = :OLD_PRT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRT_ID, PRT_NOME, PRT_CPF, PRT_SEXO, PRT_NASCIMENTO, PRT_' +
        'OBSERVACAO, '
      
        '  FAT_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_PRD_FATER_PARTICIPANTE'
      'WHERE PRT_ID = :PRT_ID')
    Left = 64
    Top = 424
  end
  object DtStFaterComunidade: TFDQuery
    AfterPost = DtStFaterComunidadeAfterPost
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFaterComunidade
    SQL.Strings = (
      'select'
      '  a.fco_id,'
      '  a.fat_id,'
      '  a.com_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.com_nome,'
      '  c.cid_nome,'
      '  c.ufe_id'
      'from'
      
        '  tab_prd_fater_comunidade a join tab_cad_comunidade b on (a.com' +
        '_id = b.com_id) left join'
      '  tab_dne_cidade c on (b.cid_id = c.cid_id)'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.com_nome')
    Left = 32
    Top = 456
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object DtStFaterComunidadeFCO_ID: TLargeintField
      FieldName = 'FCO_ID'
      Origin = 'FCO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStFaterComunidadeFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
      Required = True
    end
    object DtStFaterComunidadeCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
      Required = True
    end
    object DtStFaterComunidadeREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object DtStFaterComunidadeREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object DtStFaterComunidadeREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object DtStFaterComunidadeREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object DtStFaterComunidadeCOM_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      ProviderFlags = []
      Size = 100
    end
    object DtStFaterComunidadeCID_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      Size = 80
    end
    object DtStFaterComunidadeUFE_ID: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
  end
  object UpdtFaterComunidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER_COMUNIDADE'
      '(FCO_ID, FAT_ID, COM_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FCO_ID, :NEW_FAT_ID, :NEW_COM_ID, :NEW_REG_EXCLUIDO' +
        ', :NEW_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FATER_COMUNIDADE'
      
        'SET FCO_ID = :NEW_FCO_ID, FAT_ID = :NEW_FAT_ID, COM_ID = :NEW_CO' +
        'M_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE FCO_ID = :OLD_FCO_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FATER_COMUNIDADE'
      'WHERE FCO_ID = :OLD_FCO_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FCO_ID, FAT_ID, COM_ID, REG_EXCLUIDO, REG_REPLICADO, REG_' +
        'USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_FATER_COMUNIDADE'
      'WHERE FCO_ID = :FCO_ID')
    Left = 64
    Top = 456
  end
  object DtStFerramenta: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.fer_id,'
      '  a.fer_descricao'
      'from'
      '  tab_prd_ferramenta a'
      'where'
      
        '  not exists (select c.fer_id from tab_prd_fater_ferramenta c wh' +
        'ere c.fat_id = :fat_id and c.fer_id = a.fer_id and c.reg_excluid' +
        'o = 0) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.fer_descricao')
    Left = 128
    Top = 360
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object DtStFerramentaFER_ID: TIntegerField
      FieldName = 'FER_ID'
      Origin = 'FER_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStFerramentaFER_DESCRICAO: TStringField
      FieldName = 'FER_DESCRICAO'
      Origin = 'FER_DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object DtStFaterOrganizacao: TFDQuery
    AfterPost = DtStFaterOrganizacaoAfterPost
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFaterOrganizacao
    SQL.Strings = (
      'select'
      '  a.for_id,'
      '  a.fat_id,'
      '  a.org_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.org_nome,'
      '  c.cid_nome,'
      '  c.ufe_id'
      'from'
      
        '  tab_prd_fater_organizacao a join tab_cad_organizacao b on (a.o' +
        'rg_id = b.org_id) left join'
      '  tab_dne_cidade c on (b.cid_id = c.cid_id)'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.org_nome')
    Left = 32
    Top = 488
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object DtStFaterOrganizacaoFOR_ID: TLargeintField
      FieldName = 'FOR_ID'
      Origin = 'FOR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStFaterOrganizacaoFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
      Required = True
    end
    object DtStFaterOrganizacaoORG_ID: TIntegerField
      FieldName = 'ORG_ID'
      Origin = 'ORG_ID'
      Required = True
    end
    object DtStFaterOrganizacaoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object DtStFaterOrganizacaoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object DtStFaterOrganizacaoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object DtStFaterOrganizacaoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object DtStFaterOrganizacaoORG_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da organiza'#231#227'o'
      FieldName = 'ORG_NOME'
      Origin = 'ORG_NOME'
      ProviderFlags = []
      Size = 100
    end
    object DtStFaterOrganizacaoCID_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      Size = 80
    end
    object DtStFaterOrganizacaoUFE_ID: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
  end
  object UpdtFaterOrganizacao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER_ORGANIZACAO'
      '(FOR_ID, FAT_ID, ORG_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FOR_ID, :NEW_FAT_ID, :NEW_ORG_ID, :NEW_REG_EXCLUIDO' +
        ', :NEW_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FATER_ORGANIZACAO'
      
        'SET FOR_ID = :NEW_FOR_ID, FAT_ID = :NEW_FAT_ID, ORG_ID = :NEW_OR' +
        'G_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE FOR_ID = :OLD_FOR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FATER_ORGANIZACAO'
      'WHERE FOR_ID = :OLD_FOR_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FOR_ID, FAT_ID, ORG_ID, REG_EXCLUIDO, REG_REPLICADO, REG_' +
        'USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_FATER_ORGANIZACAO'
      'WHERE FOR_ID = :FOR_ID')
    Left = 64
    Top = 488
  end
  object DtStFaterFuncionario: TFDQuery
    AfterPost = DtStFaterFuncionarioAfterPost
    MasterSource = DtSrcPrincipal
    MasterFields = 'FAT_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtFaterFuncionario
    SQL.Strings = (
      'select'
      '  a.ffu_id,'
      '  a.fat_id,'
      '  a.fun_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.fun_nome,'
      '  b.fun_matricula'
      'from'
      
        '  tab_prd_fater_funcionario a join tab_pes_funcionario b on (a.f' +
        'un_id = b.fun_id)'
      'where'
      '  (a.fat_id = :fat_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.fun_nome')
    Left = 32
    Top = 520
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object DtStFaterFuncionarioFFU_ID: TLargeintField
      FieldName = 'FFU_ID'
      Origin = 'FFU_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStFaterFuncionarioFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
      Required = True
    end
    object DtStFaterFuncionarioFUN_ID: TIntegerField
      FieldName = 'FUN_ID'
      Origin = 'FUN_ID'
      Required = True
    end
    object DtStFaterFuncionarioREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object DtStFaterFuncionarioREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object DtStFaterFuncionarioREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object DtStFaterFuncionarioREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object DtStFaterFuncionarioFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do t'#233'cnico participante'
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
    object DtStFaterFuncionarioFUN_MATRICULA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'FUN_MATRICULA'
      Origin = 'FUN_MATRICULA'
      ProviderFlags = []
    end
  end
  object UpdtFaterFuncionario: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER_FUNCIONARIO'
      '(FFU_ID, FAT_ID, FUN_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FFU_ID, :NEW_FAT_ID, :NEW_FUN_ID, :NEW_REG_EXCLUIDO' +
        ', :NEW_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FATER_FUNCIONARIO'
      
        'SET FFU_ID = :NEW_FFU_ID, FAT_ID = :NEW_FAT_ID, FUN_ID = :NEW_FU' +
        'N_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE FFU_ID = :OLD_FFU_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FATER_FUNCIONARIO'
      'WHERE FFU_ID = :OLD_FFU_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FFU_ID, FAT_ID, FUN_ID, REG_EXCLUIDO, REG_REPLICADO, REG_' +
        'USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_FATER_FUNCIONARIO'
      'WHERE FFU_ID = :FFU_ID')
    Left = 64
    Top = 520
  end
  object DtStProjeto: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select prj_id, prj_nome from stp_prd_projeto_por_cidade(:cidade)')
    Left = 536
    Top = 104
    ParamData = <
      item
        Name = 'CIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object DtStProjetoPRJ_ID: TIntegerField
      FieldName = 'PRJ_ID'
      Origin = 'PRJ_ID'
    end
    object DtStProjetoPRJ_NOME: TStringField
      FieldName = 'PRJ_NOME'
      Origin = 'PRJ_NOME'
      Size = 500
    end
  end
end
