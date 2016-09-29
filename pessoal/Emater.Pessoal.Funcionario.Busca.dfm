inherited FrmPessoalFuncionarioBusca: TFrmPessoalFuncionarioBusca
  Left = 335
  Top = 171
  Hint = 'Busca r'#225'pida de funcion'#225'rio.'
  Caption = 'Busca R'#225'pida de Funcion'#225'rios'
  ClientWidth = 825
  ExplicitWidth = 831
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPesquisa: TcxPageControl
    Width = 809
    Height = 124
    ExplicitWidth = 809
    ExplicitHeight = 124
    ClientRectBottom = 122
    ClientRectRight = 807
    inherited TbShtParametros: TcxTabSheet
      ExplicitWidth = 805
      ExplicitHeight = 94
      inherited LblValor: TLabel
        Width = 102
        Caption = 'Nome do funcion'#225'rio:'
        ExplicitWidth = 102
      end
      inherited LblOpcao: TLabel
        Left = 360
        ExplicitLeft = 360
      end
      object Label1: TLabel [2]
        Left = 536
        Top = 8
        Width = 47
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Matr'#237'cula:'
        Transparent = True
      end
      object Label4: TLabel [3]
        Left = 408
        Top = 48
        Width = 47
        Height = 13
        Caption = 'Munic'#237'pio:'
        Transparent = True
      end
      object Label3: TLabel [4]
        Left = 112
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Escrit'#243'rio:'
        Transparent = True
      end
      object Label2: TLabel [5]
        Left = 8
        Top = 48
        Width = 23
        Height = 13
        Caption = 'CPF:'
        Transparent = True
      end
      inherited ImgCmbBxOpcao: TcxImageComboBox
        Left = 360
        ExplicitLeft = 360
        ExplicitWidth = 167
        Width = 167
      end
      inherited BtnConsultar: TcxButton
        Left = 712
        Top = 24
        Hint = 'Consultar funcion'#225'rios'
        Description = 
          'Realiza a consulta de funcion'#225'rios usando os par'#226'metros informad' +
          'os.'
        TabOrder = 6
        OnClick = BtnConsultarClick
        ExplicitLeft = 712
        ExplicitTop = 24
      end
      inherited BtnLimparParametros: TcxButton
        Left = 712
        Top = 60
        TabOrder = 7
        ExplicitLeft = 712
        ExplicitTop = 60
      end
      inherited EdtValor: TcxTextEdit
        ExplicitWidth = 345
        Width = 345
      end
      object EdtMatricula: TcxTextEdit
        Left = 536
        Top = 24
        Anchors = [akTop, akRight]
        TabOrder = 2
        OnKeyPress = EdtValorKeyPress
        Width = 161
      end
      object LkpCmbBxMunicipio: TcxLookupComboBox
        Left = 408
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        Properties.KeyFieldNames = 'CID_ID'
        Properties.ListColumns = <
          item
            FieldName = 'CID_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtSrcMunicipio
        TabOrder = 5
        Width = 289
      end
      object LkpCmbBxUnidade: TcxLookupComboBox
        Left = 112
        Top = 64
        Properties.KeyFieldNames = 'UND_ID'
        Properties.ListColumns = <
          item
            FieldName = 'UND_NOME_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtmSistemaModulo.DtSrcUnidade
        Properties.OnEditValueChanged = LkpCmbBxUnidadePropertiesEditValueChanged
        TabOrder = 4
        Width = 289
      end
      object EdtCPF: TcxMaskEdit
        Left = 8
        Top = 64
        Properties.AlwaysShowBlanksAndLiterals = True
        Properties.EditMask = '999.999.999-99;0; '
        TabOrder = 3
        Text = '           '
        Width = 97
      end
    end
  end
  inherited GrdConsulta: TcxGrid
    Top = 144
    Width = 809
    Height = 327
    ExplicitTop = 144
    ExplicitWidth = 809
    ExplicitHeight = 327
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'FUN_ID'
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #39'Total de funcion'#225'rios: '#39' ,##0'
          Kind = skCount
          Column = GrdConsultaTblFUN_NOME
        end>
      object GrdConsultaTblFUN_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_DATA'
        Width = 65
      end
      object GrdConsultaTblFUN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_NOME'
        Width = 166
      end
      object GrdConsultaTblFUN_MATRICULA: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_MATRICULA'
        Width = 64
      end
      object GrdConsultaTblFUN_CPF: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_CPF'
        Width = 89
      end
      object GrdConsultaTblFNC_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'FNC_DESCRICAO'
        Width = 147
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 149
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 78
      end
      object GrdConsultaTblUFE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'UFE_ID'
        Width = 23
      end
    end
  end
  inherited BtnSelecionar: TcxButton
    Left = 652
    ExplicitLeft = 652
  end
  inherited BtnFechar: TcxButton
    Left = 743
    ExplicitLeft = 743
  end
  inherited BtnNovo: TcxButton
    Hint = 'Inserir novo funcion'#225'rio'
    Description = 'Cria um novo registro de funcion'#225'rio.'
  end
  inherited BtnEditar: TcxButton
    Hint = 'Editar funcion'#225'rio selecionado'
    Description = 'Edita o funcion'#225'rio atualmente selecionado.'
  end
  inherited BtnVisualizar: TcxButton
    Hint = 'Visualizar funcion'#225'rio '
    Description = 'Visualiza o funcion'#225'rio atualmente selecionado.'
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
      '  a.fun_id,'
      '  a.fun_data, '
      '  a.fun_nome, '
      '  a.fun_matricula, '
      '  a.fun_cpf,'
      '  a.fun_telefone,'
      '  a.fun_celular, '
      '  a.reg_excluido,'
      '  b.cid_nome,'
      '  b.ufe_id,'
      '  c.fnc_descricao,'
      '  (e.unt_descricao || '#39': '#39' || d.und_nome) as und_nome'
      'from'
      
        '  tab_pes_funcionario a left join tab_dne_cidade b on (a.cid_id ' +
        '= b.cid_id) left join'
      '  tab_pes_funcao c on (a.fnc_id = c.fnc_id) left join'
      '  tab_sis_unidade d on (a.und_id = d.und_id) left join'
      '  tab_sis_unidade_tipo e on (d.unt_id = e.unt_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    object QryConsultaFUN_ID: TIntegerField
      FieldName = 'FUN_ID'
      Origin = 'FUN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryConsultaFUN_DATA: TDateField
      DisplayLabel = 'Data de cadastro'
      FieldName = 'FUN_DATA'
      Origin = 'FUN_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryConsultaFUN_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      Size = 100
    end
    object QryConsultaFUN_MATRICULA: TStringField
      DisplayLabel = 'Matr'#237'cula'
      FieldName = 'FUN_MATRICULA'
      Origin = 'FUN_MATRICULA'
    end
    object QryConsultaFUN_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'FUN_CPF'
      Origin = 'FUN_CPF'
      EditMask = '000.000.000-00;0; '
      Size = 11
    end
    object QryConsultaFUN_TELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FUN_TELEFONE'
      Origin = 'FUN_TELEFONE'
    end
    object QryConsultaFUN_CELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'FUN_CELULAR'
      Origin = 'FUN_CELULAR'
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
    object QryConsultaUFE_ID: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QryConsultaFNC_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'FNC_DESCRICAO'
      Origin = 'FNC_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaUND_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'UND_NOME'
      Origin = 'UND_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 152
    end
    object QryConsultaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_PES_FUNCIONARIO'
      '(FUN_ID, FUN_DATA, FUN_NOME, FUN_MATRICULA, '
      '  FUN_CPF, FUN_TELEFONE, FUN_CELULAR, REG_EXCLUIDO)'
      
        'VALUES (:NEW_FUN_ID, :NEW_FUN_DATA, :NEW_FUN_NOME, :NEW_FUN_MATR' +
        'ICULA, '
      
        '  :NEW_FUN_CPF, :NEW_FUN_TELEFONE, :NEW_FUN_CELULAR, :NEW_REG_EX' +
        'CLUIDO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PES_FUNCIONARIO'
      
        'SET FUN_ID = :NEW_FUN_ID, FUN_DATA = :NEW_FUN_DATA, FUN_NOME = :' +
        'NEW_FUN_NOME, '
      '  FUN_MATRICULA = :NEW_FUN_MATRICULA, FUN_CPF = :NEW_FUN_CPF, '
      
        '  FUN_TELEFONE = :NEW_FUN_TELEFONE, FUN_CELULAR = :NEW_FUN_CELUL' +
        'AR, '
      '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO'
      'WHERE FUN_ID = :OLD_FUN_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PES_FUNCIONARIO'
      'WHERE FUN_ID = :OLD_FUN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FUN_ID, FUN_DATA, FUN_NOME, FUN_MATRICULA, FUN_SEXO, FUN_' +
        'NASCIMENTO, '
      
        '  FUN_CPF, FUN_RG_NUMERO, FUN_RG_ORGAO, FUN_RG_DATA, FUN_ENDEREC' +
        'O, '
      
        '  FUN_NUMERO, FUN_COMPLEMENTO, FUN_BAIRRO, FUN_CEP, FUN_TELEFONE' +
        ', '
      '  FUN_CELULAR, FUN_EMAIL, FNC_ID, FST_ID, CRG_ID, USR_ID, '
      '  UND_ID, CID_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PES_FUNCIONARIO'
      'WHERE FUN_ID = :FUN_ID')
  end
  object DtSrcMunicipio: TDataSource
    DataSet = QryMunicipio
    Left = 296
    Top = 256
  end
  object QryMunicipio: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select cid_id, cid_nome from stp_dne_cidade_por_unidade(:unidade' +
        ')')
    Left = 296
    Top = 224
    ParamData = <
      item
        Name = 'UNIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryMunicipioCID_ID: TIntegerField
      FieldName = 'CID_ID'
      Origin = 'CID_ID'
    end
    object QryMunicipioCID_NOME: TStringField
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      Size = 80
    end
  end
end
