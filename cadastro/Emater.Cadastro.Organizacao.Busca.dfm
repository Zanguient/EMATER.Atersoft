inherited FrmCadastroOrganizacaoBusca: TFrmCadastroOrganizacaoBusca
  Left = 324
  Top = 140
  Hint = 'Busca r'#225'pida de organiza'#231#245'es sociais.'
  Caption = 'Busca R'#225'pida de Organiza'#231#227'o Sociais'
  ClientHeight = 476
  ClientWidth = 780
  ExplicitLeft = 324
  ExplicitTop = 140
  ExplicitWidth = 796
  ExplicitHeight = 515
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPesquisa: TcxPageControl
    Width = 764
    Height = 124
    ExplicitWidth = 744
    ExplicitHeight = 124
    ClientRectBottom = 122
    ClientRectRight = 762
    inherited TbShtParametros: TcxTabSheet
      inherited LblValor: TLabel
        Width = 107
        Caption = 'Nome da organiza'#231#227'o:'
        ExplicitWidth = 107
      end
      inherited LblOpcao: TLabel
        Left = 352
        ExplicitLeft = 352
      end
      object Label1: TLabel [2]
        Left = 528
        Top = 8
        Width = 29
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'CNPJ:'
        Transparent = True
      end
      object Label4: TLabel [3]
        Left = 456
        Top = 48
        Width = 107
        Height = 13
        Caption = 'Nome do respons'#225'vel:'
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
      object Label2: TLabel [5]
        Left = 8
        Top = 48
        Width = 100
        Height = 13
        Caption = 'Tipo de organiza'#231#227'o:'
        Transparent = True
      end
      inherited ImgCmbBxOpcao: TcxImageComboBox
        Left = 352
        ExplicitLeft = 352
        ExplicitWidth = 169
        Width = 169
      end
      inherited BtnConsultar: TcxButton
        Left = 668
        Top = 24
        Hint = 'Consultar organiza'#231#245'es'
        Description = 
          'Realiza a consulta de organiza'#231#245'es usando os par'#226'metros informad' +
          'os.'
        TabOrder = 6
        OnClick = BtnConsultarClick
        ExplicitLeft = 648
        ExplicitTop = 24
      end
      inherited BtnLimparParametros: TcxButton
        Left = 668
        Top = 60
        TabOrder = 7
        ExplicitLeft = 648
        ExplicitTop = 60
      end
      inherited EdtValor: TcxTextEdit
        ExplicitWidth = 337
        Width = 337
      end
      object EdtCNPJ: TcxMaskEdit
        Left = 528
        Top = 24
        Anchors = [akTop, akRight]
        Properties.AlwaysShowBlanksAndLiterals = True
        Properties.EditMask = '99.999.999/9999-99;0; '
        TabOrder = 2
        Text = '              '
        Width = 128
      end
      object EdtResponsavel: TcxTextEdit
        Left = 456
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 5
        OnKeyPress = EdtValorKeyPress
        Width = 200
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
      object LkpCmbBxOrganizacaoTipo: TcxLookupComboBox
        Left = 8
        Top = 64
        Properties.KeyFieldNames = 'OTP_ID'
        Properties.ListColumns = <
          item
            FieldName = 'OTP_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 3
        Width = 217
      end
    end
  end
  inherited GrdConsulta: TcxGrid
    Top = 140
    Width = 764
    Height = 295
    ExplicitTop = 140
    ExplicitWidth = 764
    ExplicitHeight = 295
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
        Width = 71
      end
      object GrdConsultaTblORG_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_NOME'
        Width = 220
      end
      object GrdConsultaTblORG_SIGLA: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_SIGLA'
        Width = 47
      end
      object GrdConsultaTblORG_CNPJ: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_CNPJ'
        Width = 107
      end
      object GrdConsultaTblORG_RESPONSAVEL: TcxGridDBColumn
        DataBinding.FieldName = 'ORG_RESPONSAVEL'
        Width = 101
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 88
      end
      object GrdConsultaTblOTP_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'OTP_DESCRICAO'
        Width = 108
      end
    end
  end
  inherited BtnSelecionar: TcxButton
    Left = 607
    Top = 444
    ExplicitLeft = 587
    ExplicitTop = 444
  end
  inherited BtnFechar: TcxButton
    Left = 698
    Top = 444
    ExplicitLeft = 678
    ExplicitTop = 444
  end
  inherited BtnNovo: TcxButton
    Top = 444
    Hint = 'Inserir nova organiza'#231#227'o'
    Description = 'Cria um novo registro de organiza'#231#227'o.'
    ExplicitTop = 435
  end
  inherited BtnEditar: TcxButton
    Top = 444
    Hint = 'Editar organiza'#231#227'o selecionada'
    Description = 'Edita a organiza'#231#227'o atualmente selecionada.'
    ExplicitTop = 435
  end
  inherited BtnVisualizar: TcxButton
    Top = 444
    Hint = 'Visualizar organiza'#231#227'o'
    Description = 'Visualiza o cadastro da organiza'#231#227'o atualmente selecionada.'
    ExplicitTop = 444
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
      '    REG_EXCLUIDO = :REG_EXCLUIDO'
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
      '    REG_EXCLUIDO'
      ')'
      'VALUES('
      '    :ORG_ID,'
      '    :ORG_DATA,'
      '    :ORG_NOME,'
      '    :ORG_SIGLA,'
      '    :ORG_CNPJ,'
      '    :ORG_EMAIL,'
      '    :ORG_RESPONSAVEL,'
      '    :REG_EXCLUIDO'
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
  end
  inherited dxBarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
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
      EditMask = '00.000.000/0000-00;0; '
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
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO'
      '(ORG_ID, ORG_DATA, ORG_NOME, ORG_SIGLA, ORG_CNPJ, '
      '  ORG_EMAIL, ORG_RESPONSAVEL, REG_EXCLUIDO)'
      
        'VALUES (:NEW_ORG_ID, :NEW_ORG_DATA, :NEW_ORG_NOME, :NEW_ORG_SIGL' +
        'A, :NEW_ORG_CNPJ, '
      '  :NEW_ORG_EMAIL, :NEW_ORG_RESPONSAVEL, :NEW_REG_EXCLUIDO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO'
      
        'SET ORG_ID = :NEW_ORG_ID, ORG_DATA = :NEW_ORG_DATA, ORG_NOME = :' +
        'NEW_ORG_NOME, '
      
        '  ORG_SIGLA = :NEW_ORG_SIGLA, ORG_CNPJ = :NEW_ORG_CNPJ, ORG_EMAI' +
        'L = :NEW_ORG_EMAIL, '
      
        '  ORG_RESPONSAVEL = :NEW_ORG_RESPONSAVEL, REG_EXCLUIDO = :NEW_RE' +
        'G_EXCLUIDO'
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
  end
end
