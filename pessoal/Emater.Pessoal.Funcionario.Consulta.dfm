inherited FrmPessoalFuncionarioConsulta: TFrmPessoalFuncionarioConsulta
  Left = 387
  Top = 153
  Hint = 'Consulta de funcion'#225'rios.'
  Caption = 'Consulta de Funcion'#225'rios'
  ClientHeight = 491
  ClientWidth = 816
  ExplicitWidth = 832
  ExplicitHeight = 530
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 816
    Caption = '      Consulta de Funcion'#225'rios'
    ExplicitWidth = 692
  end
  inherited GrdConsulta: TcxGrid
    Top = 152
    Width = 816
    Height = 339
    ExplicitTop = 152
    ExplicitWidth = 816
    ExplicitHeight = 339
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
        Width = 73
      end
      object GrdConsultaTblFUN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_NOME'
        Width = 309
      end
      object GrdConsultaTblFUN_MATRICULA: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_MATRICULA'
        Width = 70
      end
      object GrdConsultaTblFUN_CPF: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_CPF'
        Width = 106
      end
      object GrdConsultaTblFUN_TELEFONE: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_TELEFONE'
        Width = 92
      end
      object GrdConsultaTblFUN_CELULAR: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_CELULAR'
        Width = 86
      end
      object GrdConsultaTblFNC_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'FNC_DESCRICAO'
        Width = 152
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 248
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 190
      end
      object GrdConsultaTblUFE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'UFE_ID'
        Width = 38
      end
    end
  end
  inherited PnlMain: TPanel
    Width = 816
    Height = 97
    BevelEdges = [beTop]
    BevelKind = bkTile
    ExplicitWidth = 816
    ExplicitHeight = 97
    inherited LblValor: TLabel
      Width = 102
      Caption = 'Nome do funcion'#225'rio:'
      ExplicitWidth = 102
    end
    inherited LblOpcao: TLabel
      Left = 385
      Anchors = [akTop, akRight]
      ExplicitLeft = 261
    end
    object Label1: TLabel [2]
      Left = 556
      Top = 8
      Width = 47
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Matr'#237'cula:'
      Transparent = True
      ExplicitLeft = 432
    end
    object Label2: TLabel [3]
      Left = 8
      Top = 48
      Width = 23
      Height = 13
      Caption = 'CPF:'
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
    object Label4: TLabel [5]
      Left = 432
      Top = 48
      Width = 47
      Height = 13
      Caption = 'Munic'#237'pio:'
      Transparent = True
    end
    inherited ImgCmbBxOpcao: TcxImageComboBox
      Left = 385
      Anchors = [akTop, akRight]
      ExplicitLeft = 385
      ExplicitWidth = 164
      Width = 164
    end
    inherited BtnConsultar: TcxButton
      Left = 723
      Top = 24
      Hint = 'Consultar funcion'#225'rios'
      Anchors = [akTop, akRight]
      Description = 
        'Realiza a consulta de funcion'#225'rios usando os par'#226'metros informad' +
        'os.'
      TabOrder = 6
      OnClick = BtnConsultarClick
      ExplicitLeft = 723
      ExplicitTop = 24
    end
    inherited BtnLimparParametros: TcxButton
      Left = 723
      Top = 60
      Anchors = [akTop, akRight]
      TabOrder = 7
      ExplicitLeft = 723
      ExplicitTop = 60
    end
    inherited EdtValor: TcxTextEdit
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 373
      Width = 373
    end
    object EdtMatricula: TcxTextEdit
      Left = 556
      Top = 24
      Anchors = [akTop, akRight]
      TabOrder = 2
      OnKeyPress = EdtValorKeyPress
      Width = 153
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
      Width = 313
    end
    object LkpCmbBxMunicipio: TcxLookupComboBox
      Left = 432
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
      Width = 277
    end
  end
  inherited BarDockControl: TdxBarDockControl
    Width = 816
    ExplicitWidth = 816
  end
  inherited DtSrcConsulta: TDataSource
    Top = 248
  end
  inherited BarManager: TdxBarManager
    Top = 248
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BtnNovo: TdxBarButton
      Description = 'Cria um novo registro de funcion'#225'rio.'
      Hint = 'Inserir novo funcion'#225'rio'
    end
    inherited BtnEditar: TdxBarButton
      Description = 'Edita o funcion'#225'rio atualmente selecionado.'
      Hint = 'Editar funcion'#225'rio selecionado.'
    end
    inherited BtnVisualizar: TdxBarButton
      Description = 'Visualiza o funcion'#225'rio atualmente selecionado.'
    end
    inherited BtnExcluir: TdxBarButton
      Description = 'Exclui o funcion'#225'rio atualmente selecionado.'
      Hint = 'Excluir funcion'#225'rio selecionado.'
    end
  end
  inherited PopupMenuConsulta: TdxBarPopupMenu
    Top = 248
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
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
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
    Top = 248
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
    object QryConsultaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryConsultaREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
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
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_PES_FUNCIONARIO'
      '(FUN_ID, FUN_DATA, FUN_NOME, FUN_MATRICULA, '
      '  FUN_CPF, FUN_TELEFONE, FUN_CELULAR, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FUN_ID, :NEW_FUN_DATA, :NEW_FUN_NOME, :NEW_FUN_MATR' +
        'ICULA, '
      
        '  :NEW_FUN_CPF, :NEW_FUN_TELEFONE, :NEW_FUN_CELULAR, :NEW_REG_EX' +
        'CLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PES_FUNCIONARIO'
      
        'SET FUN_ID = :NEW_FUN_ID, FUN_DATA = :NEW_FUN_DATA, FUN_NOME = :' +
        'NEW_FUN_NOME, '
      '  FUN_MATRICULA = :NEW_FUN_MATRICULA, FUN_CPF = :NEW_FUN_CPF, '
      
        '  FUN_TELEFONE = :NEW_FUN_TELEFONE, FUN_CELULAR = :NEW_FUN_CELUL' +
        'AR, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
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
    Top = 248
  end
  object DtSrcMunicipio: TDataSource
    DataSet = QryMunicipio
    Left = 144
    Top = 336
  end
  object QryMunicipio: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select cid_id, cid_nome from stp_dne_cidade_por_unidade(:unidade' +
        ')')
    Left = 112
    Top = 336
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
