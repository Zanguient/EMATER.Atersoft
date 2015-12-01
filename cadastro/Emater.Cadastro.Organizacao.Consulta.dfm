inherited FrmCadastroOrganizacaoConsulta: TFrmCadastroOrganizacaoConsulta
  Left = 379
  Top = 195
  Hint = 'Consulta de organiza'#231#245'es.'
  Caption = 'Consulta de Organiza'#231#245'es Sociais'
  ClientWidth = 728
  ExplicitLeft = 379
  ExplicitTop = 195
  ExplicitWidth = 744
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 728
    Caption = '      Consulta de Organiza'#231#245'es Sociais'
    ExplicitWidth = 728
  end
  object SplitterPrincipal: TSplitter [2]
    Left = 527
    Top = 151
    Width = 5
    Height = 322
    Align = alRight
    Color = clWhite
    ParentColor = False
    ResizeStyle = rsUpdate
    ExplicitLeft = 521
    ExplicitTop = 225
    ExplicitHeight = 248
  end
  inherited GrdConsulta: TcxGrid
    Top = 151
    Width = 527
    Height = 322
    ExplicitTop = 156
    ExplicitWidth = 728
    ExplicitHeight = 317
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'ORG_ID'
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #39'Total de organiza'#231#245'es: '#39' ,##0'
          Kind = skCount
          Column = GrdConsultaTblORG_NOME
        end>
      object GrdConsultaTblORG_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_DATA'
        MinWidth = 65
        Options.HorzSizing = False
        Width = 65
      end
      object GrdConsultaTblORG_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_NOME'
        Width = 181
      end
      object GrdConsultaTblORG_SIGLA: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_SIGLA'
        Width = 53
      end
      object GrdConsultaTblORG_CNPJ: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_CNPJ'
        MinWidth = 110
        Options.HorzSizing = False
        Width = 110
      end
      object GrdConsultaTblORG_EMAIL: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_EMAIL'
        Width = 50
      end
      object GrdConsultaTblORG_RESPONSAVEL: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_RESPONSAVEL'
        Width = 94
      end
      object GrdConsultaTblOTP_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'OTP_DESCRICAO'
        Width = 95
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 78
      end
    end
  end
  inherited PnlMain: TPanel
    Width = 728
    Height = 96
    BevelEdges = [beTop]
    BevelKind = bkTile
    ExplicitWidth = 728
    ExplicitHeight = 96
    inherited LblValor: TLabel
      Width = 136
      Caption = 'Nome da organiza'#231#227'o social:'
      ExplicitWidth = 136
    end
    inherited LblOpcao: TLabel
      Left = 312
      Anchors = [akTop, akRight]
      ExplicitLeft = 312
    end
    object Label1: TLabel [2]
      Left = 488
      Top = 8
      Width = 29
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'CNPJ:'
      Transparent = True
    end
    object Label2: TLabel [3]
      Left = 8
      Top = 48
      Width = 100
      Height = 13
      Caption = 'Tipo de organiza'#231#227'o:'
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 232
      Top = 48
      Width = 47
      Height = 13
      Caption = 'Munic'#237'pio:'
      Transparent = True
    end
    object Label4: TLabel [5]
      Left = 456
      Top = 48
      Width = 107
      Height = 13
      Caption = 'Nome do respons'#225'vel:'
      Transparent = True
    end
    inherited ImgCmbBxOpcao: TcxImageComboBox
      Left = 312
      Anchors = [akTop, akRight]
      ExplicitLeft = 312
      ExplicitWidth = 169
      Width = 169
    end
    inherited BtnConsultar: TcxButton
      Left = 632
      Top = 24
      Hint = 'Consultar organiza'#231#245'es'
      Anchors = [akTop, akRight]
      Description = 
        'Realiza a consulta de organiza'#231#245'es usando os par'#226'metros informad' +
        'os.'
      TabOrder = 6
      OnClick = BtnConsultarClick
      ExplicitLeft = 632
      ExplicitTop = 24
    end
    inherited BtnLimparParametros: TcxButton
      Left = 632
      Top = 56
      Anchors = [akTop, akRight]
      TabOrder = 7
      ExplicitLeft = 632
      ExplicitTop = 56
    end
    inherited EdtValor: TcxTextEdit
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 297
      Width = 297
    end
    object EdtCNPJ: TcxMaskEdit
      Left = 488
      Top = 24
      Anchors = [akTop, akRight]
      Properties.AlwaysShowBlanksAndLiterals = True
      Properties.EditMask = '99.999.999/9999-99;0; '
      TabOrder = 2
      Text = '              '
      Width = 121
    end
    object LkpCmbBxOrganizacaoTipo: TcxLookupComboBox
      Left = 8
      Top = 64
      Properties.KeyFieldNames = 'OTP_ID'
      Properties.ListColumns = <
        item
          FieldName = 'OTP_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtmCadastroModulo.DtSrcOrganizacaoTipo
      TabOrder = 3
      Width = 217
    end
    object LkpCmbBxMunicipio: TcxLookupComboBox
      Left = 232
      Top = 64
      Properties.KeyFieldNames = 'CID_ID'
      Properties.ListColumns = <
        item
          FieldName = 'CID_NOME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtmDneModulo.DtSrcCidade
      TabOrder = 4
      Width = 217
    end
    object EdtResponsavel: TcxTextEdit
      Left = 456
      Top = 64
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      OnKeyPress = EdtValorKeyPress
      Width = 153
    end
  end
  inherited BarDockControl: TdxBarDockControl
    Width = 728
    ExplicitWidth = 728
  end
  object PnlAtributos: TPanel [6]
    Left = 532
    Top = 151
    Width = 196
    Height = 322
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 7
    object GrdFiliacao: TcxGrid
      Left = 0
      Top = 0
      Width = 196
      Height = 322
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      object GrdFiliacaoTbl: TcxGridDBTableView
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
        DataController.DataSource = DtSrcFiliacao
        DataController.KeyFieldNames = 'OFI_ID'
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
        OptionsSelection.HideSelection = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GridLines = glNone
        OptionsView.GroupByBox = False
        OptionsView.HeaderEndEllipsis = True
        OptionsView.HeaderHeight = 21
        Styles.Selection = DtmRecursoModulo.cxStyleSelection
        object GrdFiliacaoTbPUB_MARCADO: TcxGridDBColumn
          Caption = '#'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Images = DtmRecursoModulo.ImgLstPequenas
          Properties.Items = <
            item
              ImageIndex = 140
            end>
          HeaderAlignmentHorz = taCenter
          MinWidth = 25
          Options.Editing = False
          Options.HorzSizing = False
          Options.Sorting = False
          Width = 25
        end
        object GrdFiliacaoTblPUB_DESCRICAO: TcxGridDBColumn
          DataBinding.FieldName = 'PUB_DESCRICAO'
          Width = 169
        end
      end
      object GrdFiliacaoLvl: TcxGridLevel
        GridView = GrdFiliacaoTbl
      end
    end
  end
  inherited DtSrcConsulta: TDataSource
    Left = 104
    Top = 240
  end
  inherited DtStConsulta: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO'
      'SET '
      '    ORG_DATA = :ORG_DATA,'
      '    ORG_NOME = :ORG_NOME,'
      '    ORG_SIGLA = :ORG_SIGLA,'
      '    ORG_CNPJ = :ORG_CNPJ,'
      '    ORG_EMAIL = :ORG_EMAIL,'
      '    ORG_RESPONSAVEL = :ORG_RESPONSAVEL,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    ORG_ID = :OLD_ORG_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_CAD_ORGANIZACAO'
      'WHERE'
      '        ORG_ID = :OLD_ORG_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO('
      '    ORG_ID,'
      '    ORG_DATA,'
      '    ORG_NOME,'
      '    ORG_SIGLA,'
      '    ORG_CNPJ,'
      '    ORG_EMAIL,'
      '    ORG_RESPONSAVEL,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :ORG_ID,'
      '    :ORG_DATA,'
      '    :ORG_NOME,'
      '    :ORG_SIGLA,'
      '    :ORG_CNPJ,'
      '    :ORG_EMAIL,'
      '    :ORG_RESPONSAVEL,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.org_id,'
      '  a.org_data,'
      '  a.org_nome,'
      '  a.org_sigla,'
      '  a.org_cnpj,'
      '  a.org_email,'
      '  a.org_responsavel,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.cid_nome,'
      '  c.otp_descricao'
      'from'
      
        '  tab_cad_organizacao a left join tab_dne_cidade b on (a.cid_id ' +
        '= b.cid_id) left join'
      '  tab_cad_organizacao_tipo c on (a.otp_id = c.otp_id)'
      'where( '
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))'
      '     ) and (     A.ORG_ID = :OLD_ORG_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.org_id,'
      '  a.org_data,'
      '  a.org_nome,'
      '  a.org_sigla,'
      '  a.org_cnpj,'
      '  a.org_email,'
      '  a.org_responsavel,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.cid_nome,'
      '  c.otp_descricao'
      'from'
      
        '  tab_cad_organizacao a left join tab_dne_cidade b on (a.cid_id ' +
        '= b.cid_id) left join'
      '  tab_cad_organizacao_tipo c on (a.otp_id = c.otp_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))')
    Left = 32
    Top = 184
  end
  inherited BarManager: TdxBarManager
    Left = 168
    Top = 240
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BtnNovo: TdxBarButton
      Description = 'Cria um novo registro de organiza'#231#227'o.'
      Hint = 'Inserir nova organiza'#231#227'o'
    end
    inherited BtnEditar: TdxBarButton
      Description = 'Edita a organiza'#231#227'o atualmente selecionada.'
      Hint = 'Editar organiza'#231#227'o selecionada'
    end
    inherited BtnVisualizar: TdxBarButton
      Description = 'Visualiza o cadastro da organiza'#231#227'o atualmente selecionada.'
      Hint = 'Visualizar organiza'#231#227'o'
    end
    inherited BtnExcluir: TdxBarButton
      Description = 'Exclui a organiza'#231#227'o atualmente selecionada.'
      Hint = 'Excluir organiza'#231#227'o selecionada.'
    end
  end
  inherited PopupMenuConsulta: TdxBarPopupMenu
    Left = 136
    Top = 240
  end
  inherited QryConsulta: TFDQuery
    SQL.Strings = (
      'select'
      '  a.org_id,'
      '  a.org_data,'
      '  a.org_nome,'
      '  a.org_sigla,'
      '  a.org_cnpj,'
      '  a.org_email,'
      '  a.org_responsavel,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.cid_nome,'
      '  c.otp_descricao'
      'from'
      
        '  tab_cad_organizacao a left join tab_dne_cidade b on (a.cid_id ' +
        '= b.cid_id) left join'
      '  tab_cad_organizacao_tipo c on (a.otp_id = c.otp_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))')
    Left = 40
    Top = 240
    object QryConsultaORG_ID: TIntegerField
      FieldName = 'ORG_ID'
      Origin = 'ORG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaORG_DATA: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'ORG_DATA'
      Origin = 'ORG_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryConsultaORG_NOME: TStringField
      DisplayLabel = 'Nome da organiza'#231#227'o social'
      FieldName = 'ORG_NOME'
      Origin = 'ORG_NOME'
      Required = True
      Size = 100
    end
    object QryConsultaORG_SIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'ORG_SIGLA'
      Origin = 'ORG_SIGLA'
    end
    object QryConsultaORG_CNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ORG_CNPJ'
      Origin = 'ORG_CNPJ'
      EditMask = '99.999.999/9999-99;0; '
      Size = 14
    end
    object QryConsultaORG_EMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'ORG_EMAIL'
      Origin = 'ORG_EMAIL'
      Size = 50
    end
    object QryConsultaORG_RESPONSAVEL: TStringField
      DisplayLabel = 'Respons'#225'vel'
      FieldName = 'ORG_RESPONSAVEL'
      Origin = 'ORG_RESPONSAVEL'
      Size = 100
    end
    object QryConsultaCID_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QryConsultaOTP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de organiza'#231#227'o'
      FieldName = 'OTP_DESCRICAO'
      Origin = 'OTP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryConsultaREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryConsultaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryConsultaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO'
      '(ORG_ID, ORG_DATA, ORG_NOME, ORG_SIGLA, ORG_CNPJ, '
      '  ORG_EMAIL, ORG_RESPONSAVEL, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_ORG_ID, :NEW_ORG_DATA, :NEW_ORG_NOME, :NEW_ORG_SIGL' +
        'A, :NEW_ORG_CNPJ, '
      '  :NEW_ORG_EMAIL, :NEW_ORG_RESPONSAVEL, :NEW_REG_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO'
      
        'SET ORG_ID = :NEW_ORG_ID, ORG_DATA = :NEW_ORG_DATA, ORG_NOME = :' +
        'NEW_ORG_NOME, '
      
        '  ORG_SIGLA = :NEW_ORG_SIGLA, ORG_CNPJ = :NEW_ORG_CNPJ, ORG_EMAI' +
        'L = :NEW_ORG_EMAIL, '
      
        '  ORG_RESPONSAVEL = :NEW_ORG_RESPONSAVEL, REG_EXCLUIDO = :NEW_RE' +
        'G_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE ORG_ID = :OLD_ORG_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_ORGANIZACAO'
      'WHERE ORG_ID = :OLD_ORG_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ORG_ID, ORG_DATA, ORG_NOME, ORG_SIGLA, ORG_CNPJ, ORG_ENDE' +
        'RECO, '
      
        '  ORG_NUMERO, ORG_COMPLEMENTO, ORG_BAIRRO, ORG_CEP, ORG_TELEFONE' +
        '_1, '
      '  ORG_TELEFONE_2, ORG_EMAIL, ORG_RESPONSAVEL, ORG_FILIADOS, '
      '  CID_ID, OTP_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_ORGANIZACAO'
      'WHERE ORG_ID = :ORG_ID')
    Left = 72
    Top = 240
  end
  object DtSrcFiliacao: TDataSource
    DataSet = QryFiliacao
    Left = 104
    Top = 272
  end
  object QryFiliacao: TFDQuery
    MasterSource = DtSrcConsulta
    MasterFields = 'ORG_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.ofi_id,'
      '  a.org_id,'
      '  a.pub_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.pub_descricao'
      'from'
      
        '  tab_cad_organizacao_filiacao a join tab_cad_organizacao_public' +
        'o b on (a.pub_id = b.pub_id)'
      'where'
      '  (a.org_id = :org_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.pub_descricao')
    Left = 40
    Top = 272
    ParamData = <
      item
        Name = 'ORG_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryFiliacaoOFI_ID: TLargeintField
      FieldName = 'OFI_ID'
      Origin = 'OFI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFiliacaoORG_ID: TIntegerField
      FieldName = 'ORG_ID'
      Origin = 'ORG_ID'
      Required = True
    end
    object QryFiliacaoPUB_ID: TIntegerField
      FieldName = 'PUB_ID'
      Origin = 'PUB_ID'
      Required = True
    end
    object QryFiliacaoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryFiliacaoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryFiliacaoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryFiliacaoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryFiliacaoPUB_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'P'#250'blico afiliado/associado'
      FieldName = 'PUB_DESCRICAO'
      Origin = 'PUB_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
