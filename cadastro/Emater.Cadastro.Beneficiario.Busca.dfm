inherited FrmCadastroBeneficiarioBusca: TFrmCadastroBeneficiarioBusca
  Left = 280
  Top = 148
  Hint = 'Busca r'#225'pida de benefici'#225'rios de ATER.'
  Caption = 'Busca R'#225'pida de Benefici'#225'rios de ATER'
  ClientWidth = 861
  ExplicitWidth = 867
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPesquisa: TcxPageControl
    Width = 845
    Height = 163
    ExplicitWidth = 845
    ExplicitHeight = 163
    ClientRectBottom = 161
    ClientRectRight = 843
    inherited TbShtParametros: TcxTabSheet
      ExplicitWidth = 841
      ExplicitHeight = 133
      inherited LblValor: TLabel
        Width = 104
        Caption = 'Nome do benefici'#225'rio:'
        ExplicitWidth = 104
      end
      inherited LblOpcao: TLabel
        Left = 272
        ExplicitLeft = 272
      end
      object Label1: TLabel [2]
        Left = 448
        Top = 8
        Width = 23
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'CPF:'
        Transparent = True
      end
      object Label8: TLabel [3]
        Left = 540
        Top = 8
        Width = 87
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Data cadastro de:'
        Transparent = True
      end
      object Label9: TLabel [4]
        Left = 640
        Top = 8
        Width = 21
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'At'#233':'
        Transparent = True
      end
      object Label2: TLabel [5]
        Left = 8
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Escrit'#243'rio:'
        Transparent = True
      end
      object Label4: TLabel [6]
        Left = 272
        Top = 48
        Width = 63
        Height = 13
        Caption = 'Comunidade:'
        Transparent = True
      end
      object Label5: TLabel [7]
        Left = 8
        Top = 88
        Width = 56
        Height = 13
        Caption = 'Categorias:'
        Transparent = True
      end
      object Label6: TLabel [8]
        Left = 272
        Top = 88
        Width = 108
        Height = 13
        Caption = 'Atividades produtivas:'
        Transparent = True
      end
      object Label7: TLabel [9]
        Left = 512
        Top = 88
        Width = 101
        Height = 13
        Caption = 'T'#233'cnico respons'#225'vel:'
        Transparent = True
      end
      object Label10: TLabel [10]
        Left = 152
        Top = 8
        Width = 39
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Apelido:'
        Transparent = True
      end
      inherited ImgCmbBxOpcao: TcxImageComboBox
        Left = 272
        TabOrder = 2
        ExplicitLeft = 272
        ExplicitWidth = 167
        Width = 167
      end
      inherited BtnConsultar: TcxButton
        Left = 748
        Top = 64
        Hint = 'Consultar benefici'#225'rio'
        Description = 
          'Realiza a consulta de benefici'#225'rios com os par'#226'metros informados' +
          '.'
        TabOrder = 11
        OnClick = BtnConsultarClick
        ExplicitLeft = 748
        ExplicitTop = 64
      end
      inherited BtnLimparParametros: TcxButton
        Left = 748
        Top = 100
        TabOrder = 12
        ExplicitLeft = 748
        ExplicitTop = 100
      end
      inherited EdtValor: TcxTextEdit
        ExplicitWidth = 137
        Width = 137
      end
      object EdtCPF: TcxMaskEdit
        Left = 448
        Top = 24
        Anchors = [akTop, akRight]
        Properties.AlwaysShowBlanksAndLiterals = True
        Properties.EditMask = '999.999.999-99;0; '
        TabOrder = 3
        Text = '           '
        Width = 85
      end
      object EdtDataInicio: TcxDateEdit
        Left = 540
        Top = 24
        Anchors = [akTop, akRight]
        TabOrder = 4
        Width = 93
      end
      object EdtDataFim: TcxDateEdit
        Left = 640
        Top = 24
        Anchors = [akTop, akRight]
        TabOrder = 5
        Width = 93
      end
      object LkpCmbBxUnidade: TcxLookupComboBox
        Left = 8
        Top = 64
        Properties.KeyFieldNames = 'UND_ID'
        Properties.ListColumns = <
          item
            FieldName = 'UND_NOME_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtmSistemaModulo.DtSrcUnidade
        Properties.OnEditValueChanged = LkpCmbBxUnidadePropertiesEditValueChanged
        TabOrder = 6
        Width = 257
      end
      object LkpCmbBxComunidade: TcxLookupComboBox
        Left = 272
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        Properties.KeyFieldNames = 'COM_ID'
        Properties.ListColumns = <
          item
            FieldName = 'COM_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtmCadastroModulo.DtSrcComunidade
        TabOrder = 7
        Width = 461
      end
      object ChckCmbBxCategoria: TcxCheckComboBox
        Left = 8
        Top = 104
        Properties.ShowEmptyText = False
        Properties.Items = <>
        TabOrder = 8
        Width = 257
      end
      object ChckCmbBxAtividade: TcxCheckComboBox
        Left = 272
        Top = 104
        Properties.ShowEmptyText = False
        Properties.Items = <>
        TabOrder = 9
        Width = 233
      end
      object LkpCmbBxTecnico: TcxLookupComboBox
        Left = 512
        Top = 104
        Anchors = [akLeft, akTop, akRight]
        Properties.KeyFieldNames = 'FUN_ID'
        Properties.ListColumns = <
          item
            FieldName = 'FUN_NOME'
          end
          item
            FieldName = 'FUN_MATRICULA'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 10
        Width = 221
      end
      object EdtApelido: TcxTextEdit
        Left = 152
        Top = 24
        Anchors = [akTop, akRight]
        TabOrder = 1
        OnKeyPress = EdtApelidoKeyPress
        Width = 113
      end
    end
  end
  inherited GrdConsulta: TcxGrid
    Top = 178
    Width = 845
    Height = 293
    ExplicitTop = 178
    ExplicitWidth = 845
    ExplicitHeight = 293
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'BEN_ID'
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #39'Total de benefici'#225'rios: '#39' ,##0'
          Kind = skCount
          Column = GrdConsultaTblBEN_NOME
        end>
      object GrdConsultaTblBEN_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_DATA'
        Width = 65
      end
      object GrdConsultaTblBEN_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_SITUACAO'
        Width = 113
      end
      object GrdConsultaTblBEN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_NOME'
        Width = 238
      end
      object GrdConsultaTblBEN_CPF: TcxGridDBColumn
        DataBinding.FieldName = 'BEN_CPF'
        Width = 86
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 65
      end
      object GrdConsultaTblCOM_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'COM_NOME'
        Width = 82
      end
      object GrdConsultaTblFUN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_NOME'
        Width = 83
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Visible = False
        Width = 124
      end
    end
  end
  inherited BtnSelecionar: TcxButton
    Left = 688
    ExplicitLeft = 688
  end
  inherited BtnFechar: TcxButton
    Left = 779
    ExplicitLeft = 779
  end
  inherited BtnNovo: TcxButton
    Hint = 'Inserir novo benefici'#225'rio'
    Description = 'Abre a janela de benefici'#225'rio e cria um novo registro.'
  end
  inherited BtnEditar: TcxButton
    Hint = 'Editar benefici'#225'rio'
    Description = 'Edita o benefici'#225'rio atualmente selecionado.'
  end
  inherited BtnVisualizar: TcxButton
    Hint = 'Visualizar benefici'#225'rio'
    Description = 'Visualiza o cadastro do benefici'#225'rio.'
  end
  object DtSrcComunidade: TDataSource [7]
    DataSet = QryComunidade
    Left = 168
    Top = 416
  end
  inherited DtSrcConsulta: TDataSource
    Left = 168
    Top = 384
  end
  inherited dxBarManager: TdxBarManager
    Left = 232
    Top = 384
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited PopupMenuBusca: TdxBarPopupMenu
    Left = 200
    Top = 384
  end
  inherited QryConsulta: TFDQuery
    SQL.Strings = (
      'select'
      '  a.ben_id,'
      '  a.ben_data,'
      '  case a.ben_situacao'
      '    when 1 then '#39'Ativo e atualizado'#39
      '    when 2 then '#39'Ativo e desatualizado'#39
      '    when 3 then '#39'Inativo'#39
      '  end as ben_situacao,'
      '  a.ben_nome,'
      '  a.ben_cpf,'
      '  a.reg_excluido,'
      '  b.cid_nome,'
      '  c.com_nome,'
      '  d.fun_nome,'
      '  (f.unt_descricao || '#39': '#39' || e.und_nome) as und_nome'
      'from'
      
        '  tab_cad_beneficiario a left join tab_dne_cidade b on (a.cid_id' +
        '_endereco = b.cid_id) left join'
      
        '  tab_cad_comunidade c on (a.com_id = c.com_id and c.reg_excluid' +
        'o = 0) left join'
      
        '  tab_pes_funcionario d on (a.fun_id = d.fun_id and d.reg_exclui' +
        'do = 0) left join'
      '  tab_sis_unidade e on (a.und_id = e.und_id) left join'
      '  tab_sis_unidade_tipo f on (e.unt_id = f.unt_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    Left = 104
    Top = 384
    object QryConsultaBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaBEN_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'BEN_DATA'
      Origin = 'BEN_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryConsultaBEN_SITUACAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'BEN_SITUACAO'
      Origin = 'BEN_SITUACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 21
    end
    object QryConsultaBEN_NOME: TStringField
      DisplayLabel = 'Nome do benefici'#225'rio'
      FieldName = 'BEN_NOME'
      Origin = 'BEN_NOME'
      Size = 150
    end
    object QryConsultaBEN_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'BEN_CPF'
      Origin = 'BEN_CPF'
      EditMask = '000.000.000-00;0; '
      Size = 11
    end
    object QryConsultaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
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
    object QryConsultaCOM_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'T'#233'cnico respons'#225'vel'
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
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
      'INSERT INTO TAB_CAD_BENEFICIARIO'
      '(BEN_ID, BEN_DATA, BEN_NOME, BEN_CPF, REG_EXCLUIDO)'
      
        'VALUES (:NEW_BEN_ID, :NEW_BEN_DATA, :NEW_BEN_NOME, :NEW_BEN_CPF,' +
        ' :NEW_REG_EXCLUIDO)'
      'RETURNING BEN_SITUACAO')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_BENEFICIARIO'
      
        'SET BEN_ID = :NEW_BEN_ID, BEN_DATA = :NEW_BEN_DATA, BEN_NOME = :' +
        'NEW_BEN_NOME, '
      '  BEN_CPF = :NEW_BEN_CPF, REG_EXCLUIDO = :NEW_REG_EXCLUIDO'
      'WHERE BEN_ID = :OLD_BEN_ID'
      'RETURNING BEN_SITUACAO')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_BENEFICIARIO'
      'WHERE BEN_ID = :OLD_BEN_ID')
    FetchRowSQL.Strings = (
      
        'SELECT BEN_ID, BEN_DATA, BEN_SITUACAO, BEN_NOME, BEN_NOME_MAE, B' +
        'EN_APELIDO, '
      '  BEN_MEMBROS, BEN_SEXO, BEN_NASCIMENTO, BEN_NACIONALIDADE, '
      
        '  BEN_CPF, BEN_RG_NUMERO, BEN_RG_ORGAO, BEN_RG_DATA, BEN_RIBEIRI' +
        'NHO, '
      
        '  BEN_ENDERECO, BEN_NUMERO, BEN_COMPLEMENTO, BEN_BAIRRO, BEN_CEP' +
        ', '
      '  BEN_TELEFONE, BEN_CELULAR, BEN_EMAIL, CID_ID_NATURALIDADE, '
      '  CID_ID_ENDERECO, ECV_ID, ESC_ID, COM_ID, ORG_ID, FUN_ID, '
      '  UND_ID, MOT_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_BENEFICIARIO'
      'WHERE BEN_ID = :BEN_ID')
    Left = 136
    Top = 384
  end
  object QryComunidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select com_id, com_nome from stp_cad_comunidade_por_cidade(:cida' +
        'de)')
    Left = 136
    Top = 416
    ParamData = <
      item
        Name = 'CIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryComunidadeCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
    end
    object QryComunidadeCOM_NOME: TStringField
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      Size = 100
    end
  end
end
