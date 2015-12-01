inherited FrmCreditoClassificacao: TFrmCreditoClassificacao
  Tag = 1
  Left = 415
  Top = 152
  Hint = 'Tabela de classifica'#231#245'es do porte do proponente.'
  Caption = 'Classifica'#231#245'es do Porte do Proponente'
  ClientHeight = 474
  ClientWidth = 410
  ExplicitLeft = 415
  ExplicitTop = 152
  ExplicitWidth = 426
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 248
    Top = 442
    ExplicitLeft = 248
    ExplicitTop = 442
  end
  inherited PgCntrlMain: TcxPageControl
    Width = 395
    Height = 428
    ExplicitWidth = 395
    ExplicitHeight = 428
    ClientRectBottom = 426
    ClientRectRight = 393
    inherited TbShtPrincipal: TcxTabSheet
      object GrdPrincipal: TcxGrid
        Left = 8
        Top = 88
        Width = 375
        Height = 302
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
        object GrdPrincipalTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcPrincipal
          DataController.KeyFieldNames = 'CLS_ID'
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
          object GrdPrincipalTblCLS_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'CLS_DESCRICAO'
          end
        end
        object GrdPrincipalLvl: TcxGridLevel
          GridView = GrdPrincipalTbl
        end
      end
      object GrpBxInformacao: TcxGroupBox
        Left = 8
        Top = 0
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es da classifica'#231#227'o do porte do proponente'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          375
          74)
        Height = 81
        Width = 375
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 127
          Height = 13
          Caption = 'Descri'#231#227'o da classifica'#231#227'o:'
          FocusControl = DbEdtNome
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'CLS_DESCRICAO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 0
          Width = 359
        end
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Insere uma nova classifica'#231#227'o do porte do proponente'
    Description = 'Inserir nova classifica'#231#227'o do porte do proponente.'
    ExplicitTop = 442
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Salva as altera'#231#245'es na classifica'#231#227'o do porte do proponente'
    Description = 'Salvar altera'#231#245'es na classifica'#231#227'o do porte do proponente.'
    ExplicitTop = 442
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 442
    Hint = 
      'Cancela as altera'#231#245'es realizadas na classifica'#231#227'o do porte do pr' +
      'oponente'
    Description = 'Cancelar as altera'#231#245'es na classifica'#231#227'o do porte do proponente.'
    ExplicitTop = 442
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 442
    Hint = 
      'Exclui a classifica'#231#227'o do porte do proponente atualmente selecio' +
      'nada'
    Description = 'Excluir classifica'#231#227'o do porte do proponente selecionada.'
    ExplicitTop = 442
  end
  inherited BtnRelatorio: TcxButton [6]
    Top = 442
    ExplicitTop = 442
  end
  inherited BtnFechar: TcxButton [7]
    Left = 328
    Top = 442
    ExplicitLeft = 328
    ExplicitTop = 442
  end
  inherited DtStPrincipal: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_CRD_CLASSIFICACAO'
      'SET '
      '    CLS_DESCRICAO = :CLS_DESCRICAO,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    CLS_ID = :OLD_CLS_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_CRD_CLASSIFICACAO'
      'WHERE'
      '        CLS_ID = :OLD_CLS_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_CLASSIFICACAO('
      '    CLS_ID,'
      '    CLS_DESCRICAO,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :CLS_ID,'
      '    :CLS_DESCRICAO,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.cls_id,'
      '  a.cls_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_classificacao a'
      'where( '
      '  (a.reg_excluido = 0)'
      '     ) and (     A.CLS_ID = :OLD_CLS_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.cls_id,'
      '  a.cls_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_classificacao a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.cls_descricao')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    Left = 216
    Top = 184
    object DtStPrincipalCLS_ID: TFIBIntegerField
      FieldName = 'CLS_ID'
    end
    object DtStPrincipalCLS_DESCRICAO: TFIBStringField
      DisplayLabel = 'Descri'#231#227'o da classifica'#231#227'o'
      FieldName = 'CLS_DESCRICAO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalREG_EXCLUIDO: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'REG_EXCLUIDO'
    end
    object DtStPrincipalREG_REPLICADO: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'REG_REPLICADO'
    end
    object DtStPrincipalREG_USUARIO: TFIBStringField
      FieldName = 'REG_USUARIO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalREG_MODIFICADO: TFIBDateTimeField
      FieldName = 'REG_MODIFICADO'
      DisplayFormat = 'dd/mm/yyyy hh:mm AMPM'
    end
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 248
    Top = 184
  end
end
