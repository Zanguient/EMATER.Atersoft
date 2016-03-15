inherited FrmDneCidadePesquisa: TFrmDneCidadePesquisa
  Left = 407
  Top = 203
  BorderStyle = bsDialog
  Caption = 'Pesquisa de munic'#237'pio'
  ClientHeight = 402
  ClientWidth = 297
  Position = poOwnerFormCenter
  ExplicitLeft = 407
  ExplicitTop = 203
  ExplicitWidth = 313
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 160
    Height = 13
    Caption = 'Selecione uma UF e um munic'#237'pio:'
  end
  object BtnOK: TcxButton
    Left = 133
    Top = 370
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    OptionsImage.NumGlyphs = 2
    TabOrder = 2
    OnClick = BtnOKClick
  end
  object BtnCancelar: TcxButton
    Left = 213
    Top = 370
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    OptionsImage.NumGlyphs = 2
    TabOrder = 3
  end
  object LkpCmbBxUF: TcxLookupComboBox
    Left = 8
    Top = 32
    Anchors = [akLeft, akTop, akRight]
    Properties.DropDownRows = 12
    Properties.KeyFieldNames = 'UFE_ID'
    Properties.ListColumns = <
      item
        FieldName = 'UFE_UF_NOME'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DtmDneModulo.DtSrcUF
    Properties.OnEditValueChanged = LkpCmbBxUFPropertiesEditValueChanged
    TabOrder = 0
    Width = 281
  end
  object GrdMunicipio: TcxGrid
    Left = 8
    Top = 56
    Width = 281
    Height = 308
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
    object GrdMunicipioTbl: TcxGridDBTableView
      OnDblClick = GrdMunicipioTblDblClick
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
      DataController.DataSource = DtmDneModulo.DtSrcNaturalidade
      DataController.KeyFieldNames = 'CID_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsBehavior.ImmediateEditor = False
      OptionsBehavior.IncSearch = True
      OptionsCustomize.ColumnFiltering = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.HeaderHeight = 21
      Styles.ContentEven = DtmRecursoModulo.cxStyleEven
      Styles.Inactive = DtmRecursoModulo.cxStyleSelection
      Styles.Selection = DtmRecursoModulo.cxStyleSelection
      object GrdMunicipioTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
      end
    end
    object GrdMunicipioLvl: TcxGridLevel
      GridView = GrdMunicipioTbl
    end
  end
end
