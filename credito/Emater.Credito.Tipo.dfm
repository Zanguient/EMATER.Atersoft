inherited FrmCreditoTipo: TFrmCreditoTipo
  Tag = 1
  Left = 415
  Top = 152
  Hint = 'Cr'#233'dito Rural :: Tabelas :: Tipos de Cr'#233'dito'
  Caption = 'Cr'#233'dito Rural :: Tabelas :: Tipos de Cr'#233'dito'
  ClientHeight = 474
  ClientWidth = 412
  ExplicitWidth = 418
  ExplicitHeight = 503
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 250
    Top = 442
    ExplicitLeft = 250
    ExplicitTop = 442
  end
  inherited PgCntrlMain: TcxPageControl
    Width = 397
    Height = 428
    ExplicitWidth = 397
    ExplicitHeight = 428
    ClientRectBottom = 426
    ClientRectRight = 395
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 393
      ExplicitHeight = 398
      object GrdPrincipal: TcxGrid
        Left = 8
        Top = 88
        Width = 377
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
          DataController.KeyFieldNames = 'TIP_ID'
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
          object GrdPrincipalTblTIP_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'TIP_DESCRICAO'
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
        Caption = 'Informa'#231#245'es do tipo de cr'#233'dito'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          377
          74)
        Height = 81
        Width = 377
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 118
          Height = 13
          Caption = 'Nome do tipo de cr'#233'dito:'
          FocusControl = DbEdtNome
          Transparent = True
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'TIP_DESCRICAO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 0
          Width = 361
        end
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Insere um novo registro de tipo de cr'#233'dito rural'
    Description = 'Inserir novo tipo de cr'#233'dito rural.'
    ExplicitTop = 442
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Salva as altera'#231#245'es realizadas no tipo de cr'#233'dito rural'
    Description = 'Salvar as altera'#231#245'es realizadas no tipo de cr'#233'dito rural.'
    ExplicitTop = 442
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Cancela as altera'#231#245'es realizadas no tipo de cr'#233'dito rural'
    Description = 'Cancelar altera'#231#245'es no tipo de cr'#233'dito rural.'
    ExplicitTop = 442
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Exclui o tipo de cr'#233'dito rural atualmente selecionado'
    Description = 'Excluir o tipo de cr'#233'dito rural atualmente selecionado.'
    ExplicitTop = 442
  end
  inherited BtnRelatorio: TcxButton [6]
    Top = 442
    ExplicitTop = 442
  end
  inherited BtnFechar: TcxButton [7]
    Left = 330
    Top = 442
    ExplicitLeft = 330
    ExplicitTop = 442
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 248
    Top = 184
  end
  inherited QryPrincipal: TFDQuery
    SQL.Strings = (
      'select'
      '  a.tip_id,'
      '  a.tip_descricao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_crd_tipo a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.tip_descricao')
    Left = 184
    Top = 184
    object QryPrincipalTIP_ID: TIntegerField
      FieldName = 'TIP_ID'
      Origin = 'TIP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalTIP_DESCRICAO: TStringField
      DisplayLabel = 'Nome do tipo de cr'#233'dito'
      FieldName = 'TIP_DESCRICAO'
      Origin = 'TIP_DESCRICAO'
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
      'INSERT INTO TAB_CRD_TIPO'
      '(TIP_ID, TIP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_TIP_ID, :NEW_TIP_DESCRICAO, :NEW_REG_EXCLUIDO, :NEW' +
        '_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_TIPO'
      
        'SET TIP_ID = :NEW_TIP_ID, TIP_DESCRICAO = :NEW_TIP_DESCRICAO, RE' +
        'G_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE TIP_ID = :OLD_TIP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_TIPO'
      'WHERE TIP_ID = :OLD_TIP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT TIP_ID, TIP_DESCRICAO, REG_EXCLUIDO, REG_REPLICADO, REG_U' +
        'SUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_TIPO'
      'WHERE TIP_ID = :TIP_ID')
    Left = 216
    Top = 184
  end
end
