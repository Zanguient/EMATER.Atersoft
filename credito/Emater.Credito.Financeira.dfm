inherited FrmCreditoFinanceira: TFrmCreditoFinanceira
  Tag = 1
  Left = 301
  Top = 111
  Hint = 'Tabela de agentes financeiros.'
  Caption = 'Agentes Financeiros'
  ClientHeight = 474
  ClientWidth = 410
  ExplicitLeft = 301
  ExplicitTop = 111
  ExplicitWidth = 426
  ExplicitHeight = 513
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 248
    Top = 442
    Hint = '0'
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
          DataController.KeyFieldNames = 'FIN_ID'
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
          object GrdPrincipalTblFIN_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'FIN_DESCRICAO'
          end
        end
        object GrdPrincipalLvl: TcxGridLevel
          GridView = GrdPrincipalTbl
        end
      end
      object GrpBxInfo: TcxGroupBox
        Left = 8
        Top = 0
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es do agente financeiro'
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
          Width = 133
          Height = 13
          Caption = 'Nome do agente financeiro:'
          FocusControl = DbEdtNome
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'FIN_DESCRICAO'
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
    Hint = 'Inserir novo agente financeiro'
    Description = 'Insere um registro em branco de agente financeiro.'
    ExplicitTop = 442
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Salvar altera'#231#245'es no agente financeiro'
    Description = 'Salva as altera'#231#245'es no agente financeiro.'
    ExplicitTop = 442
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Cancelar altera'#231#245'es no agente financeiro'
    Description = 'Cancela as altera'#231#245'es realizadas no agente financeiro.'
    ExplicitTop = 442
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Excluir agente financeiro selecionado'
    Description = 'Exclui o agente financeiro selecionado.'
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
      'UPDATE TAB_CRD_FINANCEIRA'
      'SET '
      '    FIN_DESCRICAO = :FIN_DESCRICAO,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    FIN_ID = :OLD_FIN_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_CRD_FINANCEIRA'
      'WHERE'
      '        FIN_ID = :OLD_FIN_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_FINANCEIRA('
      '    FIN_ID,'
      '    FIN_DESCRICAO,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :FIN_ID,'
      '    :FIN_DESCRICAO,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.fin_id,'
      '  a.fin_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_financeira a'
      'where( '
      '  (a.reg_excluido = 0)'
      '     ) and (     A.FIN_ID = :OLD_FIN_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.fin_id,'
      '  a.fin_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_financeira a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.fin_descricao')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    Left = 216
    Top = 184
    object DtStPrincipalFIN_ID: TFIBIntegerField
      FieldName = 'FIN_ID'
    end
    object DtStPrincipalFIN_DESCRICAO: TFIBStringField
      DisplayLabel = 'Nome do agente financeiro'
      FieldName = 'FIN_DESCRICAO'
      Required = True
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalREG_EXCLUIDO: TFIBBooleanField
      FieldName = 'REG_EXCLUIDO'
    end
    object DtStPrincipalREG_REPLICADO: TFIBBooleanField
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
    end
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 248
    Top = 184
  end
end
