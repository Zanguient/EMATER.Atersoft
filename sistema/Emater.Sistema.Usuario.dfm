inherited FrmSistemaUsuario: TFrmSistemaUsuario
  Tag = 1
  Left = 301
  Top = 82
  Hint = 'Tabela de usu'#225'rios do sistema.'
  Caption = 'Usu'#225'rios'
  ClientHeight = 602
  ClientWidth = 616
  Scaled = False
  ExplicitLeft = 301
  ExplicitTop = 82
  ExplicitWidth = 632
  ExplicitHeight = 641
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 454
    Top = 570
    ExplicitLeft = 454
    ExplicitTop = 570
  end
  inherited PgCntrlMain: TcxPageControl
    Width = 601
    Height = 556
    ExplicitWidth = 601
    ExplicitHeight = 556
    ClientRectBottom = 554
    ClientRectRight = 599
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitWidth = 601
      ExplicitHeight = 532
      object Label2: TLabel
        Left = 8
        Top = 268
        Width = 57
        Height = 13
        Caption = 'Filtrar login:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 230
        Top = 268
        Width = 132
        Height = 13
        Caption = 'Filtrar nome do funcion'#225'rio:'
        Transparent = True
      end
      object GrpBxUsuario: TcxGroupBox
        Left = 8
        Top = 0
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es principais'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          580
          250)
        Height = 257
        Width = 580
        object Label1: TLabel
          Left = 8
          Top = 20
          Width = 87
          Height = 13
          Caption = 'Data de cadastro:'
          Enabled = False
          FocusControl = DbEdtData
          Transparent = True
        end
        object LblLogin: TLabel
          Left = 8
          Top = 44
          Width = 29
          Height = 13
          Caption = 'Login:'
          Enabled = False
          FocusControl = DbEdtLogin
          Transparent = True
        end
        object LblSenha: TLabel
          Left = 8
          Top = 68
          Width = 34
          Height = 13
          Caption = 'Senha:'
          FocusControl = DbEdtSenha
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 176
          Width = 67
          Height = 13
          Caption = 'Observa'#231#245'es:'
          FocusControl = DmMemoObs
          Transparent = True
        end
        object Label5: TLabel
          Left = 8
          Top = 116
          Width = 28
          Height = 13
          Caption = 'Perfil:'
          Transparent = True
        end
        object LblSenhaRepetir: TLabel
          Left = 8
          Top = 92
          Width = 71
          Height = 13
          Caption = 'Repetir senha:'
          FocusControl = DbEdtSenha
          Transparent = True
        end
        object DbEdtData: TcxDBDateEdit
          Left = 112
          Top = 16
          DataBinding.DataField = 'USR_DATA'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 0
          Width = 105
        end
        object DbEdtLogin: TcxDBTextEdit
          Left = 112
          Top = 40
          DataBinding.DataField = 'USR_LOGIN'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          OnKeyPress = DbEdtLoginKeyPress
          Width = 201
        end
        object DbEdtSenha: TcxDBTextEdit
          Left = 112
          Top = 64
          DataBinding.DataField = 'USR_SENHA'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          Properties.ReadOnly = False
          TabOrder = 2
          Width = 201
        end
        object DbChckBxAtivo: TcxDBCheckBox
          Left = 112
          Top = 154
          Caption = 'O usu'#225'rio est'#225' ativo.'
          DataBinding.DataField = 'USR_ATIVO'
          DataBinding.DataSource = DtSrcPrincipal
          ParentColor = False
          Properties.ImmediatePost = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Style.StyleController = DtmRecursoModulo.cxEditStyleController
          TabOrder = 6
          Transparent = True
          Width = 153
        end
        object DbChckBxExpirada: TcxDBCheckBox
          Left = 112
          Top = 135
          Caption = 'A senha est'#225' expirada.'
          DataBinding.DataField = 'USR_EXPIRADA'
          DataBinding.DataSource = DtSrcPrincipal
          ParentColor = False
          Properties.ImmediatePost = True
          Properties.ValueChecked = '1'
          Properties.ValueUnchecked = '0'
          Style.StyleController = DtmRecursoModulo.cxEditStyleController
          TabOrder = 5
          Transparent = True
          Width = 161
        end
        object DmMemoObs: TcxDBMemo
          Left = 112
          Top = 176
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'USR_OBSERVACAO'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ScrollBars = ssVertical
          TabOrder = 7
          Height = 65
          Width = 460
        end
        object DbLkpCmbBxPerfil: TcxDBLookupComboBox
          Left = 112
          Top = 112
          DataBinding.DataField = 'PER_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PER_ID'
          Properties.ListColumns = <
            item
              FieldName = 'PER_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtmSistemaModulo.DtSrcPerfil
          Properties.PostPopupValueOnTab = True
          TabOrder = 4
          Width = 201
        end
        object EdtSenhaRepetir: TcxTextEdit
          Left = 112
          Top = 88
          Properties.EchoMode = eemPassword
          Properties.MaxLength = 80
          TabOrder = 3
          Width = 201
        end
      end
      object GrdPrincipal: TcxGrid
        Left = 8
        Top = 291
        Width = 580
        Height = 227
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
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
          DataController.KeyFieldNames = 'USR_ID'
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
          object GrdPrincipalTblUSR_LOGIN: TcxGridDBColumn
            DataBinding.FieldName = 'USR_LOGIN'
            Width = 78
          end
          object GrdPrincipalTblFUN_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'FUN_NOME'
            Width = 261
          end
          object GrdPrincipalTblPER_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'PER_NOME'
            Width = 126
          end
          object GrdPrincipalTblUSR_EXPIRADA: TcxGridDBColumn
            Caption = 'Senha expirada'
            DataBinding.FieldName = 'USR_EXPIRADA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object GrdPrincipalTblUSR_ATIVO: TcxGridDBColumn
            Caption = 'Ativo'
            DataBinding.FieldName = 'USR_ATIVO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            HeaderAlignmentHorz = taCenter
            Width = 33
          end
        end
        object GrdPrincipalLvl: TcxGridLevel
          GridView = GrdPrincipalTbl
        end
      end
      object EdtFiltrarLogin: TcxTextEdit
        Left = 72
        Top = 264
        Properties.OnChange = EdtFiltrarLoginPropertiesChange
        TabOrder = 1
        Width = 153
      end
      object EdtFiltrarNome: TcxTextEdit
        Left = 365
        Top = 264
        Anchors = [akLeft, akTop, akRight]
        Properties.CharCase = ecUpperCase
        Properties.OnChange = EdtFiltrarNomePropertiesChange
        TabOrder = 2
        Width = 223
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 570
    Hint = 'Inserir novo usu'#225'rio'
    Description = 'Cria um novo registro de usu'#225'rio.'
    ExplicitTop = 570
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 570
    Hint = 'Salvar altera'#231#245'es no usu'#225'rio'
    Description = 'Salva as altera'#231#245'es realizadas no usu'#225'rio.'
    ExplicitTop = 570
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 570
    Hint = 'Cancelar altera'#231#245'es no usu'#225'rio'
    Description = 'Cancela as altera'#231#245'es realizadas no usu'#225'rio.'
    ExplicitTop = 570
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 570
    Hint = 'Excluir usu'#225'rio'
    Description = 'Exclui o usu'#225'rio atualmente selecionado.'
    ExplicitTop = 570
  end
  inherited BtnFechar: TcxButton
    Left = 534
    Top = 570
    ExplicitLeft = 534
    ExplicitTop = 570
  end
  inherited BtnRelatorio: TcxButton
    Top = 570
    ExplicitTop = 570
  end
  inherited DtStPrincipal: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_SIS_USUARIO'
      'SET '
      '    USR_DATA = :USR_DATA,'
      '    USR_LOGIN = :USR_LOGIN,'
      '    USR_SENHA = :USR_SENHA,'
      '    USR_EXPIRADA = :USR_EXPIRADA,'
      '    USR_ATIVO = :USR_ATIVO,'
      '    USR_OBSERVACAO = :USR_OBSERVACAO,'
      '    PER_ID = :PER_ID,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    USR_ID = :OLD_USR_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_SIS_USUARIO'
      'WHERE'
      '        USR_ID = :OLD_USR_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_SIS_USUARIO('
      '    USR_ID,'
      '    USR_DATA,'
      '    USR_LOGIN,'
      '    USR_SENHA,'
      '    USR_EXPIRADA,'
      '    USR_ATIVO,'
      '    USR_OBSERVACAO,'
      '    PER_ID,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :USR_ID,'
      '    :USR_DATA,'
      '    :USR_LOGIN,'
      '    :USR_SENHA,'
      '    :USR_EXPIRADA,'
      '    :USR_ATIVO,'
      '    :USR_OBSERVACAO,'
      '    :PER_ID,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.usr_id,'
      '  a.usr_data, '
      '  a.usr_login, '
      '  a.usr_senha, '
      '  a.usr_expirada, '
      '  a.usr_ativo, '
      '  a.usr_observacao, '
      '  a.per_id,'
      '  a.reg_excluido, '
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.per_nome,'
      '  upper(c.fun_nome) as fun_nome'
      'from'
      
        '  tab_sis_usuario a join tab_sis_perfil b on (a.per_id = b.per_i' +
        'd) left join'
      '  tab_pes_funcionario c on (a.usr_id = c.usr_id)'
      'where( '
      '  (a.reg_excluido = 0)'
      '     ) and (     A.USR_ID = :OLD_USR_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.usr_id,'
      '  a.usr_data, '
      '  a.usr_login, '
      '  a.usr_senha, '
      '  a.usr_expirada, '
      '  a.usr_ativo, '
      '  a.usr_observacao, '
      '  a.per_id,'
      '  a.reg_excluido, '
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.per_nome,'
      '  upper(c.fun_nome) as fun_nome'
      'from'
      
        '  tab_sis_usuario a join tab_sis_perfil b on (a.per_id = b.per_i' +
        'd) left join'
      '  tab_pes_funcionario c on (a.usr_id = c.usr_id)'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.usr_login')
    FilterOptions = [foCaseInsensitive]
    AutoUpdateOptions.UpdateTableName = 'TAB_SIS_USUARIO'
    AutoUpdateOptions.KeyFields = 'USR_ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    AutoUpdateOptions.UpdateOnlyModifiedFields = True
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    Left = 368
    object DtStPrincipalUSR_ID: TFIBIntegerField
      FieldName = 'USR_ID'
    end
    object DtStPrincipalUSR_DATA: TFIBDateField
      DisplayLabel = 'Data de cadastro:'
      FieldName = 'USR_DATA'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DtStPrincipalUSR_LOGIN: TFIBStringField
      DisplayLabel = 'Login'
      FieldName = 'USR_LOGIN'
      Required = True
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalUSR_SENHA: TFIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'USR_SENHA'
      Required = True
      OnGetText = DtStPrincipalUSR_SENHAGetText
      Size = 80
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalUSR_EXPIRADA: TFIBBooleanField
      DefaultExpression = 'True'
      DisplayLabel = 'A senha est'#225' expirada'
      FieldName = 'USR_EXPIRADA'
      Required = True
    end
    object DtStPrincipalUSR_ATIVO: TFIBBooleanField
      DefaultExpression = 'True'
      DisplayLabel = 'O usu'#225'rio est'#225' ativo'
      FieldName = 'USR_ATIVO'
      Required = True
    end
    object DtStPrincipalUSR_OBSERVACAO: TFIBMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'USR_OBSERVACAO'
      BlobType = ftMemo
      Size = 8
    end
    object DtStPrincipalPER_ID: TFIBIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Perfil'
      FieldName = 'PER_ID'
      Required = True
    end
    object DtStPrincipalPER_NOME: TFIBStringField
      DisplayLabel = 'Perfil'
      FieldName = 'PER_NOME'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalFUN_NOME: TFIBStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUN_NOME'
      Size = 100
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
  inherited QryPrincipal: TFDQuery
    AfterPost = QryPrincipalAfterPost
    AfterScroll = QryPrincipalAfterScroll
    SQL.Strings = (
      'select'
      '  a.usr_id,'
      '  a.usr_data, '
      '  a.usr_login, '
      '  a.usr_senha, '
      '  a.usr_expirada, '
      '  a.usr_ativo, '
      '  a.usr_observacao, '
      '  a.per_id,'
      '  a.reg_excluido, '
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.per_nome,'
      '  upper(c.fun_nome) as fun_nome'
      'from'
      
        '  tab_sis_usuario a join tab_sis_perfil b on (a.per_id = b.per_i' +
        'd) left join'
      '  tab_pes_funcionario c on (a.usr_id = c.usr_id)'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.usr_login')
    object QryPrincipalUSR_ID: TIntegerField
      FieldName = 'USR_ID'
      Origin = 'USR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalUSR_DATA: TDateField
      DisplayLabel = 'Data de cadastro:'
      FieldName = 'USR_DATA'
      Origin = 'USR_DATA'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalUSR_LOGIN: TStringField
      DisplayLabel = 'Login'
      FieldName = 'USR_LOGIN'
      Origin = 'USR_LOGIN'
      Required = True
      Size = 50
    end
    object QryPrincipalUSR_SENHA: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'USR_SENHA'
      Origin = 'USR_SENHA'
      Required = True
      Size = 80
    end
    object QryPrincipalUSR_EXPIRADA: TSmallintField
      Alignment = taLeftJustify
      DefaultExpression = '1'
      DisplayLabel = 'A senha est'#225' expirada'
      FieldName = 'USR_EXPIRADA'
      Origin = 'USR_EXPIRADA'
      Required = True
    end
    object QryPrincipalUSR_ATIVO: TSmallintField
      Alignment = taLeftJustify
      DefaultExpression = '1'
      DisplayLabel = 'O usu'#225'rio est'#225' ativo'
      FieldName = 'USR_ATIVO'
      Origin = 'USR_ATIVO'
      Required = True
    end
    object QryPrincipalUSR_OBSERVACAO: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'USR_OBSERVACAO'
      Origin = 'USR_OBSERVACAO'
      BlobType = ftMemo
    end
    object QryPrincipalPER_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Perfil'
      FieldName = 'PER_ID'
      Origin = 'PER_ID'
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
    object QryPrincipalPER_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Perfil'
      FieldName = 'PER_NOME'
      Origin = 'PER_NOME'
      ProviderFlags = []
      Size = 50
    end
    object QryPrincipalFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
  end
  object DtSrcPerfil: TDataSource
    DataSet = DtmSistemaModulo.DtStPerfil
    OnStateChange = DtSrcPrincipalStateChange
    Left = 280
    Top = 120
  end
end
