inherited FrmSistemaPerfil: TFrmSistemaPerfil
  Tag = 1
  Left = 337
  Top = 153
  Hint = 'Tabela de perfis de usu'#225'rios.'
  ActiveControl = DbEdtNome
  Caption = 'Perfis de usu'#225'rios'
  ClientHeight = 488
  ClientWidth = 492
  ExplicitLeft = 337
  ExplicitTop = 153
  ExplicitWidth = 508
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 330
    Top = 456
    ExplicitLeft = 330
    ExplicitTop = 456
  end
  inherited PgCntrlMain: TcxPageControl
    Width = 477
    Height = 442
    ExplicitWidth = 477
    ExplicitHeight = 442
    ClientRectBottom = 442
    ClientRectRight = 477
    inherited TbShtPrincipal: TcxTabSheet
      object GrdPrincipal: TcxGrid
        Left = 8
        Top = 112
        Width = 457
        Height = 292
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
          DataController.KeyFieldNames = 'PER_ID'
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
          object GrdPrincipalTblPER_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'PER_NOME'
          end
          object GrdPrincipalTblPER_ATIVO: TcxGridDBColumn
            DataBinding.FieldName = 'PER_ATIVO'
          end
        end
        object GrdPrincipalLvl: TcxGridLevel
          GridView = GrdPrincipalTbl
        end
      end
      object GrpBxPrincipal: TcxGroupBox
        Left = 8
        Top = 0
        Caption = 'Informa'#231#245'es principais'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Height = 105
        Width = 457
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 73
          Height = 13
          Caption = 'Nome do perfil:'
          FocusControl = DbEdtNome
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 40
          DataBinding.DataField = 'PER_NOME'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 0
          Width = 441
        end
        object DbChckBxAtivo: TcxDBCheckBox
          Left = 8
          Top = 72
          Caption = 'O perfil est'#225' ativo.'
          DataBinding.DataField = 'PER_ATIVO'
          DataBinding.DataSource = DtSrcPrincipal
          ParentBackground = False
          ParentColor = False
          Style.StyleController = DtmRecursoModulo.cxEditStyleController
          TabOrder = 1
          Width = 129
        end
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 456
    Hint = 'Inserir novo perfil'
    Description = 'Cria um novo registro de perfil de usu'#225'rios.'
    ExplicitTop = 456
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 456
    Hint = 'Salvar altera'#231#245'es no perfil'
    Description = 'Salva as altera'#231#245'es realizadas no perfil de usu'#225'rios.'
    ExplicitTop = 456
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 456
    Hint = 'Cancelar altera'#231#245'es no perfil'
    Description = 'Cancela as altera'#231#245'es realizadas no perfil de usu'#225'rios.'
    ExplicitTop = 456
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 456
    Hint = 'Excluir perfil'
    Description = 'Exclui o perfil de usu'#225'rios atualmente selecionado.'
    ExplicitTop = 456
  end
  inherited BtnFechar: TcxButton
    Left = 410
    Top = 456
    ExplicitLeft = 410
    ExplicitTop = 456
  end
  inherited BtnRelatorio: TcxButton
    Left = 330
    Top = 456
    ExplicitLeft = 330
    ExplicitTop = 456
  end
  inherited DtStPrincipal: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_SIS_PERFIL'
      'SET '
      '    PER_NOME = :PER_NOME,'
      '    PER_ATIVO = :PER_ATIVO,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    PER_ID = :OLD_PER_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_SIS_PERFIL'
      'WHERE'
      '        PER_ID = :OLD_PER_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_SIS_PERFIL('
      '    PER_ID,'
      '    PER_NOME,'
      '    PER_ATIVO,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :PER_ID,'
      '    :PER_NOME,'
      '    :PER_ATIVO,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.per_id,'
      '  a.per_nome,'
      '  a.per_ativo,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_sis_perfil a'
      'where( '
      '  (a.reg_excluido = 0)'
      '     ) and (     A.PER_ID = :OLD_PER_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.per_id,'
      '  a.per_nome,'
      '  a.per_ativo,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      '  tab_sis_perfil a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.per_nome')
    AutoUpdateOptions.UpdateTableName = 'TAB_SIS_PERFIL'
    AutoUpdateOptions.KeyFields = 'PER_ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    AfterPost = DtStPrincipalAfterPost
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    Left = 96
    Top = 280
    object DtStPrincipalPER_ID: TFIBIntegerField
      FieldName = 'PER_ID'
    end
    object DtStPrincipalPER_NOME: TFIBStringField
      DisplayLabel = 'Nome do perfil'
      FieldName = 'PER_NOME'
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
    object DtStPrincipalPER_ATIVO: TFIBBooleanField
      DefaultExpression = 'True'
      DisplayLabel = 'Ativo'
      FieldName = 'PER_ATIVO'
    end
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 128
    Top = 280
  end
end
