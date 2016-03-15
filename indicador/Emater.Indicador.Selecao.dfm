inherited FrmIndicadorSelecao: TFrmIndicadorSelecao
  Left = 377
  Top = 166
  ActiveControl = DtEdtRegistro
  BorderStyle = bsDialog
  Caption = 'Novo Indicador'
  ClientHeight = 453
  ClientWidth = 370
  Position = poMainFormCenter
  OnShow = FormShow
  ExplicitLeft = 377
  ExplicitTop = 166
  ExplicitWidth = 386
  ExplicitHeight = 492
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 353
    Height = 41
    AutoSize = False
    Caption = 
      'Para registrar um novo indicador, informe a data e selecione o i' +
      'ndicador desejado. Utilize o campo de filtro para localizar um i' +
      'ndicador mais rapidamente na lista.'
    Transparent = True
    WordWrap = True
  end
  object Label2: TLabel
    Left = 8
    Top = 80
    Width = 82
    Height = 13
    Caption = 'Data de registro:'
  end
  object BtnOK: TcxButton
    Left = 204
    Top = 418
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 2
    OnClick = BtnOKClick
  end
  object BtnCancelar: TcxButton
    Left = 286
    Top = 418
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    TabOrder = 3
  end
  object GrdInd: TcxGrid
    Left = 8
    Top = 120
    Width = 353
    Height = 289
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    object GrdIndTbl: TcxGridDBTableView
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
      DataController.DataSource = DtSrcIndicador
      DataController.KeyFieldNames = 'IND_ID'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.InfoText = 'Digite um filtro para os indicadores aqui'
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
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
      OptionsView.Header = False
      OptionsView.HeaderEndEllipsis = True
      OptionsView.HeaderHeight = 21
      OptionsView.Indicator = True
      Styles.ContentEven = DtmRecursoModulo.cxStyleEven
      Styles.Inactive = DtmRecursoModulo.cxStyleSelection
      Styles.Selection = DtmRecursoModulo.cxStyleSelection
      object GrdIndTblIND_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'IND_DESCRICAO'
      end
    end
    object GrdIndLvl: TcxGridLevel
      GridView = GrdIndTbl
    end
  end
  object DtEdtRegistro: TcxDateEdit
    Left = 8
    Top = 96
    Properties.ImmediatePost = True
    Properties.PostPopupValueOnTab = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 121
  end
  object QryIndicador: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select ind_id, ind_descricao, ind_nome, ind_ativo'
      'from tab_ind_indicador'
      'where (ind_ativo = 1)'
      'order by ind_descricao')
    Left = 72
    Top = 176
    object QryIndicadorIND_ID: TIntegerField
      FieldName = 'IND_ID'
      Origin = 'IND_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryIndicadorIND_DESCRICAO: TStringField
      FieldName = 'IND_DESCRICAO'
      Origin = 'IND_DESCRICAO'
      Required = True
      Size = 150
    end
    object QryIndicadorIND_NOME: TStringField
      FieldName = 'IND_NOME'
      Origin = 'IND_NOME'
      Required = True
      Size = 50
    end
    object QryIndicadorIND_ATIVO: TSmallintField
      FieldName = 'IND_ATIVO'
      Origin = 'IND_ATIVO'
      Required = True
    end
  end
  object DtSrcIndicador: TDataSource
    DataSet = QryIndicador
    Left = 104
    Top = 176
  end
  object StrdPrcRegistrar: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_IND_REGISTRAR'
    Left = 72
    Top = 208
    ParamData = <
      item
        Position = 1
        Name = 'INDICADOR'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 2
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
      end
      item
        Position = 3
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 4
        Name = 'REGISTRO'
        DataType = ftLargeint
        ParamType = ptOutput
      end>
  end
end
