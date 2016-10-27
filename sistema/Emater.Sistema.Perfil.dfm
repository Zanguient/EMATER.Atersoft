inherited FrmSistemaPerfil: TFrmSistemaPerfil
  Tag = 1
  Left = 337
  Top = 153
  Hint = 'Sistema :: Usu'#225'rios :: Perfis'
  ActiveControl = DbEdtNome
  Caption = 'Sistema :: Usu'#225'rios :: Perfis'
  ClientHeight = 488
  ClientWidth = 492
  ExplicitWidth = 498
  ExplicitHeight = 517
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
    ClientRectBottom = 440
    ClientRectRight = 475
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 473
      ExplicitHeight = 412
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
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
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
          Transparent = True
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
          ParentColor = False
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Style.StyleController = DtmRecursoModulo.cxEditStyleController
          TabOrder = 1
          Transparent = True
          Width = 129
        end
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 456
    Description = 'Criar novo perfil.'
    ExplicitTop = 456
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 456
    Description = 'Salvar altera'#231#245'es no perfil.'
    ExplicitTop = 456
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 456
    Description = 'Cancelar altera'#231#245'es no perfil.'
    ExplicitTop = 456
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 456
    Hint = '04. Excluir'
    Description = 'Excluir perfil selecionado.'
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
  inherited QryPrincipal: TFDQuery
    AfterPost = QryPrincipalAfterPost
    SQL.Strings = (
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
    object QryPrincipalPER_ID: TIntegerField
      FieldName = 'PER_ID'
      Origin = 'PER_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalPER_NOME: TStringField
      DisplayLabel = 'Nome do perfil'
      FieldName = 'PER_NOME'
      Origin = 'PER_NOME'
      Required = True
      Size = 50
    end
    object QryPrincipalPER_ATIVO: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Ativo'
      FieldName = 'PER_ATIVO'
      Origin = 'PER_ATIVO'
      Required = True
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
      'INSERT INTO TAB_SIS_PERFIL'
      '(PER_ID, PER_NOME, PER_ATIVO, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PER_ID, :NEW_PER_NOME, :NEW_PER_ATIVO, :NEW_REG_EXC' +
        'LUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_SIS_PERFIL'
      
        'SET PER_ID = :NEW_PER_ID, PER_NOME = :NEW_PER_NOME, PER_ATIVO = ' +
        ':NEW_PER_ATIVO, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PER_ID = :OLD_PER_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_SIS_PERFIL'
      'WHERE PER_ID = :OLD_PER_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PER_ID, PER_NOME, PER_ATIVO, REG_EXCLUIDO, REG_REPLICADO,' +
        ' REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_SIS_PERFIL'
      'WHERE PER_ID = :PER_ID')
  end
end
