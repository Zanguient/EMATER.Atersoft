inherited FrmLogImportarDetalhe: TFrmLogImportarDetalhe
  Left = 264
  Top = 137
  BorderStyle = bsDialog
  Caption = 'Detalhes da importa'#231#227'o'
  ClientHeight = 506
  ClientWidth = 786
  Position = poOwnerFormCenter
  ExplicitLeft = 264
  ExplicitTop = 137
  ExplicitWidth = 802
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 470
    Top = 16
    Width = 45
    Height = 13
    Caption = 'Situa'#231#227'o:'
  end
  object Label2: TLabel
    Left = 8
    Top = 16
    Width = 98
    Height = 13
    Caption = 'Escrit'#243'rio de origem:'
  end
  object Label3: TLabel
    Left = 296
    Top = 16
    Width = 37
    Height = 13
    Caption = 'Vers'#227'o:'
  end
  object Label4: TLabel
    Left = 360
    Top = 16
    Width = 99
    Height = 13
    Caption = 'Total de transa'#231#245'es:'
  end
  object GrdConsulta: TcxGrid
    Left = 8
    Top = 56
    Width = 770
    Height = 273
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
        DataBinding.FieldName = 'REP_TRANSACAO'
        Width = 84
      end
      object GrdConsultaTblREP_USUARIO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_USUARIO'
        Width = 168
      end
      object GrdConsultaTblREP_SQL: TcxGridDBColumn
        DataBinding.FieldName = 'REP_SQL'
        Width = 275
      end
      object GrdConsultaTblREP_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_SITUACAO'
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
        Width = 114
      end
      object GrdConsultaTblREP_ERRO: TcxGridDBColumn
        DataBinding.FieldName = 'REP_ERRO'
        Width = 115
      end
    end
    object GrdConsultaLvl: TcxGridLevel
      GridView = GrdConsultaTbl
    end
  end
  object MemoUsuario: TcxDBMemo
    Left = 8
    Top = 336
    DataBinding.DataField = 'REP_USUARIO'
    DataBinding.DataSource = DtSrcConsulta
    Properties.ReadOnly = True
    Properties.ScrollBars = ssVertical
    TabOrder = 5
    Height = 129
    Width = 153
  end
  object MemoSQL: TcxDBMemo
    Left = 169
    Top = 336
    DataBinding.DataField = 'REP_SQL'
    DataBinding.DataSource = DtSrcConsulta
    Properties.ReadOnly = True
    Properties.ScrollBars = ssVertical
    TabOrder = 6
    Height = 129
    Width = 609
  end
  object BtnFechar: TcxButton
    Left = 697
    Top = 472
    Width = 81
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.ImageIndex = 87
    OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
    TabOrder = 7
  end
  object EdtEscritorio: TcxTextEdit
    Left = 8
    Top = 32
    Properties.ReadOnly = True
    TabOrder = 0
    Width = 281
  end
  object EdtVersao: TcxTextEdit
    Left = 296
    Top = 32
    Properties.ReadOnly = True
    TabOrder = 1
    Width = 57
  end
  object EdtTotal: TcxTextEdit
    Left = 360
    Top = 32
    Properties.ReadOnly = True
    TabOrder = 2
    Width = 105
  end
  object EdtSituacao: TcxTextEdit
    Left = 470
    Top = 32
    Properties.ReadOnly = True
    TabOrder = 3
    Width = 308
  end
  object DtStConsulta: TpFIBDataSet
    SelectSQL.Strings = (
      'SELECT'
      '    a.REP_ID,'
      '    a.REP_TRANSACAO,'
      '    a.REP_USUARIO,'
      '    a.REP_SQL,'
      '    a.REP_SITUACAO,'
      '    a.REP_ERRO'
      'FROM'
      '    TAB_LOG_REPLICACAO_ENTRADA a'
      'WHERE'
      '    a.REP_ID = :ID'
      'ORDER BY'
      '    a.REP_TRANSACAO')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 88
    Top = 208
    object DtStConsultaREP_ID: TFIBBCDField
      FieldName = 'REP_ID'
      Size = 0
    end
    object DtStConsultaREP_TRANSACAO: TFIBBCDField
      DisplayLabel = 'Transa'#231#227'o'
      FieldName = 'REP_TRANSACAO'
      DisplayFormat = '000"."000"."000'
      Size = 0
    end
    object DtStConsultaREP_USUARIO: TFIBMemoField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'REP_USUARIO'
      BlobType = ftMemo
      Size = 8
    end
    object DtStConsultaREP_SQL: TFIBMemoField
      DisplayLabel = 'Comando'
      FieldName = 'REP_SQL'
      BlobType = ftMemo
      Size = 8
    end
    object DtStConsultaREP_SITUACAO: TFIBSmallIntField
      Alignment = taLeftJustify
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'REP_SITUACAO'
    end
    object DtStConsultaREP_ERRO: TFIBStringField
      DisplayLabel = 'Erro'
      FieldName = 'REP_ERRO'
      Size = 10
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object DtSrcConsulta: TDataSource
    DataSet = DtStConsulta
    Left = 120
    Top = 208
  end
end
