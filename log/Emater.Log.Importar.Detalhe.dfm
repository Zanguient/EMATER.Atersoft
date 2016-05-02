inherited FrmLogImportarDetalhe: TFrmLogImportarDetalhe
  Left = 320
  Top = 227
  BorderStyle = bsDialog
  Caption = 'Detalhes da importa'#231#227'o'
  ClientHeight = 451
  ClientWidth = 786
  Position = poOwnerFormCenter
  ExplicitLeft = 320
  ExplicitTop = 227
  ExplicitWidth = 802
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 470
    Top = 8
    Width = 45
    Height = 13
    Caption = 'Situa'#231#227'o:'
    Transparent = True
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 98
    Height = 13
    Caption = 'Escrit'#243'rio de origem:'
    Transparent = True
  end
  object Label4: TLabel
    Left = 360
    Top = 8
    Width = 99
    Height = 13
    Caption = 'Total de transa'#231#245'es:'
    Transparent = True
  end
  object GrdConsulta: TcxGrid
    Left = 8
    Top = 48
    Width = 770
    Height = 239
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
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
      object GrdConsultaTblREP_TRANSACAO: TcxGridDBColumn
        DataBinding.FieldName = 'TRN_ID'
        Width = 86
      end
      object GrdConsultaTblREP_SQL: TcxGridDBColumn
        DataBinding.FieldName = 'TRN_SQL'
        Width = 356
      end
      object GrdConsultaTblREP_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'TRN_SITUACAO'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = DtmRecursoModulo.ImgLstPequenas
        Properties.Items = <
          item
            Description = 'Pendente'
            ImageIndex = 107
            Value = 1
          end
          item
            Description = 'Importado'
            ImageIndex = 48
            Value = 2
          end
          item
            Description = 'Erro'
            ImageIndex = 47
            Value = 3
          end>
        Width = 147
      end
      object GrdConsultaTblREP_ERRO: TcxGridDBColumn
        DataBinding.FieldName = 'TRN_ERRO'
        Width = 150
      end
    end
    object GrdConsultaLvl: TcxGridLevel
      GridView = GrdConsultaTbl
    end
  end
  object MemoSQL: TcxDBMemo
    Left = 8
    Top = 296
    DataBinding.DataField = 'TRN_SQL'
    DataBinding.DataSource = DtSrcConsulta
    Properties.ReadOnly = True
    Properties.ScrollBars = ssVertical
    TabOrder = 4
    Height = 116
    Width = 770
  end
  object BtnFechar: TcxButton
    Left = 697
    Top = 419
    Width = 81
    Height = 25
    Anchors = [akTop, akRight]
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.ImageIndex = 87
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 5
  end
  object EdtEscritorio: TcxTextEdit
    Left = 8
    Top = 24
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 347
  end
  object EdtTotal: TcxTextEdit
    Left = 360
    Top = 24
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 105
  end
  object EdtSituacao: TcxTextEdit
    Left = 470
    Top = 24
    Properties.ReadOnly = True
    TabOrder = 2
    Width = 308
  end
  object DtSrcConsulta: TDataSource
    DataSet = DtStConsulta
    Left = 120
    Top = 168
  end
  object DtStConsulta: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.rep_id,'
      '  a.trn_id,'
      '  a.trn_sql,'
      '  a.trn_situacao,'
      '  a.trn_erro'
      'from'
      '  tab_sis_replicacao_transacao a'
      'where'
      '  (a.rep_id = :id)'
      'order by'
      '  a.trn_id')
    Left = 88
    Top = 168
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = '100000020'
      end>
    object DtStConsultaREP_ID: TIntegerField
      FieldName = 'REP_ID'
      Origin = 'REP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStConsultaTRN_ID: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Transa'#231#227'o'
      FieldName = 'TRN_ID'
      Origin = 'TRN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      DisplayFormat = '000"."000"."000'
    end
    object DtStConsultaTRN_SQL: TMemoField
      DisplayLabel = 'Comando'
      FieldName = 'TRN_SQL'
      Origin = 'TRN_SQL'
      BlobType = ftMemo
    end
    object DtStConsultaTRN_SITUACAO: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'TRN_SITUACAO'
      Origin = 'TRN_SITUACAO'
    end
    object DtStConsultaTRN_ERRO: TStringField
      DisplayLabel = 'Erro'
      FieldName = 'TRN_ERRO'
      Origin = 'TRN_ERRO'
    end
  end
end
