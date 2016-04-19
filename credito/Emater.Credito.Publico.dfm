inherited FrmCreditoPublico: TFrmCreditoPublico
  Tag = 1
  Left = 415
  Top = 152
  Hint = 'Tabela de p'#250'blicos benefici'#225'rios do cr'#233'dito rural.'
  Caption = 'P'#250'blicos Benefici'#225'rio'
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
          DataController.KeyFieldNames = 'PUB_ID'
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
          object GrdPrincipalTblPUB_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'PUB_DESCRICAO'
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
        Caption = 'Informa'#231#245'es do p'#250'blico benefici'#225'rio'
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
          Width = 159
          Height = 13
          Caption = 'Descri'#231#227'o do p'#250'blico benefici'#225'rio:'
          FocusControl = DbEdtNome
          Transparent = True
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'PUB_DESCRICAO'
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
    Hint = 'Insere um novo registro de p'#250'blico benefici'#225'rio'
    Description = 'Inserir novo p'#250'blico benefici'#225'rio.'
    ExplicitTop = 442
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Salva as altera'#231#245'es realizadas no p'#250'blico benefici'#225'rio'
    Description = 'Salvar altera'#231#245'es no p'#250'blico benefici'#225'rio.'
    ExplicitTop = 442
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Cancela as altera'#231#245'es realizadas no p'#250'blico benefici'#225'rio'
    Description = 'Cancelar altera'#231#245'es realizadas no p'#250'blico benefici'#225'rio.'
    ExplicitTop = 442
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Exclui o registro de p'#250'blico benefici'#225'rio atualmente selecionado'
    Description = 'Excluir p'#250'blico benefici'#225'rio selecionado.'
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
      'UPDATE TAB_CRD_PUBLICO'
      'SET '
      '    PUB_DESCRICAO = :PUB_DESCRICAO,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    PUB_ID = :OLD_PUB_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_CRD_PUBLICO'
      'WHERE'
      '        PUB_ID = :OLD_PUB_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_PUBLICO('
      '    PUB_ID,'
      '    PUB_DESCRICAO,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :PUB_ID,'
      '    :PUB_DESCRICAO,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.pub_id,'
      '  a.pub_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_publico a'
      'where( '
      '  (a.reg_excluido = 0)'
      '     ) and (     A.PUB_ID = :OLD_PUB_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.pub_id,'
      '  a.pub_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_publico a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.pub_descricao')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    Left = 192
    Top = 128
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 248
    Top = 184
  end
  inherited QryPrincipal: TFDQuery
    SQL.Strings = (
      'select'
      '  a.pub_id,'
      '  a.pub_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_publico a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.pub_descricao')
    Left = 184
    Top = 184
    object QryPrincipalPUB_ID: TIntegerField
      FieldName = 'PUB_ID'
      Origin = 'PUB_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalPUB_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do p'#250'blico benefici'#225'rio'
      FieldName = 'PUB_DESCRICAO'
      Origin = 'PUB_DESCRICAO'
      Required = True
      Size = 50
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
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_PUBLICO'
      '(PUB_ID, PUB_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PUB_ID, :NEW_PUB_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_PUBLICO'
      
        'SET PUB_ID = :NEW_PUB_ID, PUB_DESCRICAO = :NEW_PUB_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PUB_ID = :OLD_PUB_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_PUBLICO'
      'WHERE PUB_ID = :OLD_PUB_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PUB_ID, PUB_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_PUBLICO'
      'WHERE PUB_ID = :PUB_ID')
    Left = 216
    Top = 184
  end
end
