inherited FrmCreditoConsulta: TFrmCreditoConsulta
  Left = 319
  Top = 127
  Hint = 'Cr'#233'dito Rural :: Consulta'
  Caption = 'Cr'#233'dito Rural :: Consulta'
  ClientWidth = 782
  ExplicitWidth = 798
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 782
    Caption = '      Consulta de Projetos de Cr'#233'dito Rural'
    ExplicitWidth = 782
  end
  inherited GrdConsulta: TcxGrid
    Top = 191
    Width = 782
    Height = 282
    ExplicitTop = 191
    ExplicitWidth = 782
    ExplicitHeight = 282
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'CRD_ID'
      object GrdConsultaTblCRD_TITULO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_TITULO'
        Width = 161
      end
      object GrdConsultaTblCRD_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_SITUACAO'
        Width = 81
      end
      object GrdConsultaTblCRD_DATA_ELABORACAO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_DATA_ELABORACAO'
        Width = 58
      end
      object GrdConsultaTblCRD_DATA_CONTRATACAO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_DATA_CONTRATACAO'
        Width = 58
      end
      object GrdConsultaTblCRD_AGENTE_FINANCEIRO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_AGENTE_FINANCEIRO'
        Width = 81
      end
      object GrdConsultaTblCRD_LINHA_CREDITO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_LINHA_CREDITO'
        Width = 82
      end
      object GrdConsultaTblCRD_TIPO_CREDITO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_TIPO_CREDITO'
        Width = 81
      end
      object GrdConsultaTblCRD_PUBLICO_BENEFICIARIO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_PUBLICO_BENEFICIARIO'
        Width = 81
      end
      object GrdConsultaTblCRD_ESCRITORIO: TcxGridDBColumn
        DataBinding.FieldName = 'CRD_ESCRITORIO'
        Width = 85
      end
    end
  end
  inherited PnlMain: TPanel
    Width = 782
    Height = 136
    BevelEdges = [beTop]
    BevelKind = bkTile
    ExplicitWidth = 782
    ExplicitHeight = 136
    inherited LblValor: TLabel
      Width = 83
      Caption = 'T'#237'tulo do projeto:'
      ExplicitWidth = 83
    end
    inherited LblOpcao: TLabel
      Left = 337
      Width = 140
      Anchors = [akTop, akRight]
      Caption = 'Op'#231#245'es de consulta do t'#237'tulo:'
      ExplicitLeft = 337
      ExplicitWidth = 140
    end
    object Label2: TLabel [2]
      Left = 513
      Top = 8
      Width = 98
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Situa'#231#227'o do projeto:'
      Transparent = True
      ExplicitLeft = 440
    end
    object Label1: TLabel [3]
      Left = 8
      Top = 48
      Width = 89
      Height = 13
      Caption = 'Agente financeiro:'
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 176
      Top = 48
      Width = 80
      Height = 13
      Caption = 'Linha de cr'#233'dito:'
      Transparent = True
    end
    object Label4: TLabel [5]
      Left = 344
      Top = 48
      Width = 75
      Height = 13
      Caption = 'Tipo de cr'#233'dito:'
      Transparent = True
    end
    object Label5: TLabel [6]
      Left = 512
      Top = 48
      Width = 95
      Height = 13
      Caption = 'P'#250'blico benefici'#225'rio:'
      Transparent = True
    end
    object Label6: TLabel [7]
      Left = 512
      Top = 88
      Width = 48
      Height = 13
      Caption = 'Escrit'#243'rio:'
      Transparent = True
    end
    object Label8: TLabel [8]
      Left = 11
      Top = 88
      Width = 113
      Height = 13
      Caption = 'Data de elabora'#231#227'o de:'
      Transparent = True
    end
    object Label9: TLabel [9]
      Left = 131
      Top = 88
      Width = 21
      Height = 13
      Caption = 'At'#233':'
      Transparent = True
    end
    object Label7: TLabel [10]
      Left = 395
      Top = 88
      Width = 21
      Height = 13
      Caption = 'At'#233':'
      Transparent = True
    end
    object Label10: TLabel [11]
      Left = 259
      Top = 88
      Width = 118
      Height = 13
      Caption = 'Data de contrata'#231#227'o de:'
      Transparent = True
    end
    inherited ImgCmbBxOpcao: TcxImageComboBox
      Left = 337
      Anchors = [akTop, akRight]
      ExplicitLeft = 337
      ExplicitWidth = 169
      Width = 169
    end
    inherited BtnConsultar: TcxButton
      Left = 689
      Top = 55
      Anchors = [akRight, akBottom]
      TabOrder = 12
      OnClick = BtnConsultarClick
      ExplicitLeft = 689
      ExplicitTop = 55
    end
    inherited BtnLimparParametros: TcxButton
      Left = 689
      Top = 87
      Anchors = [akRight, akBottom]
      TabOrder = 13
      ExplicitLeft = 689
      ExplicitTop = 87
    end
    inherited EdtValor: TcxTextEdit
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 322
      Width = 322
    end
    object LkpCmbBxSituacao: TcxLookupComboBox
      Left = 513
      Top = 24
      Anchors = [akTop, akRight]
      Properties.KeyFieldNames = 'SIT_ID'
      Properties.ListColumns = <
        item
          FieldName = 'SIT_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 2
      Width = 153
    end
    object LkpCmbBxAgente: TcxLookupComboBox
      Left = 8
      Top = 64
      Properties.KeyFieldNames = 'FIN_ID'
      Properties.ListColumns = <
        item
          FieldName = 'FIN_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 3
      Width = 161
    end
    object LkpCmbBxLinha: TcxLookupComboBox
      Left = 176
      Top = 64
      Properties.KeyFieldNames = 'LIN_ID'
      Properties.ListColumns = <
        item
          FieldName = 'LIN_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 4
      Width = 161
    end
    object LkpCmbBxTipo: TcxLookupComboBox
      Left = 344
      Top = 64
      Properties.KeyFieldNames = 'TIP_ID'
      Properties.ListColumns = <
        item
          FieldName = 'TIP_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 5
      Width = 161
    end
    object LkpCmbBxPublico: TcxLookupComboBox
      Left = 512
      Top = 64
      Anchors = [akLeft, akTop, akRight]
      Properties.KeyFieldNames = 'PUB_ID'
      Properties.ListColumns = <
        item
          FieldName = 'PUB_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      TabOrder = 6
      Width = 154
    end
    object LkpCmbBxEscritorio: TcxLookupComboBox
      Left = 512
      Top = 104
      Anchors = [akLeft, akTop, akRight]
      Properties.KeyFieldNames = 'UND_ID'
      Properties.ListColumns = <
        item
          FieldName = 'UND_NOME_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtmSistemaModulo.DtSrcUnidade
      TabOrder = 11
      Width = 154
    end
    object EdtElaboracaoDataInicio: TcxDateEdit
      Left = 11
      Top = 104
      TabOrder = 7
      Width = 113
    end
    object EdtElaboracaoDataFim: TcxDateEdit
      Left = 131
      Top = 104
      TabOrder = 8
      Width = 121
    end
    object EdtContratacaoDataFim: TcxDateEdit
      Left = 392
      Top = 104
      TabOrder = 10
      Width = 113
    end
    object EdtContratacaoDataInicio: TcxDateEdit
      Left = 259
      Top = 104
      TabOrder = 9
      Width = 126
    end
  end
  inherited BarDockControl: TdxBarDockControl
    Width = 782
    ExplicitWidth = 782
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
      Description = 'Criar novo projeto de cr'#233'dito rural.'
      Hint = '01. Novo'
    end
    inherited BtnEditar: TdxBarButton
      Description = 'Editar projeto de cr'#233'dito rural selecionado.'
      Hint = '02. Editar'
    end
    inherited BtnVisualizar: TdxBarButton
      Description = 'Visualizar projeto de cr'#233'dito rural selecionado.'
      Hint = '03. Visualizar'
    end
    inherited BtnExcluir: TdxBarButton
      Description = 'Excluir projeto de cr'#233'dito rural selecionado.'
      Hint = '04. Excluir'
    end
  end
  inherited PopupMenuConsulta: TdxBarPopupMenu
    Top = 248
  end
  inherited QryConsulta: TFDQuery
    SQL.Strings = (
      'select'
      '  a.crd_id,'
      '  a.crd_titulo,'
      '  b.sit_descricao as crd_situacao,'
      '  c.fin_descricao as crd_agente_financeiro,'
      '  d.lin_descricao as crd_linha_credito,'
      '  e.tip_descricao as crd_tipo_credito,'
      '  f.pub_descricao as crd_publico_beneficiario,'
      '  g.und_nome as crd_escritorio,'
      '  a.crd_data_elaboracao,'
      '  a.crd_data_contratacao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado'
      'from'
      
        '  tab_crd_credito_rural a left join tab_crd_situacao b on (a.sit' +
        '_id = b.sit_id) left join'
      '  tab_crd_financeira c on (a.fin_id = c.fin_id) left join'
      '  tab_crd_linha d on (a.lin_id = d.lin_id) left join'
      '  tab_crd_tipo e on (a.tip_id = e.tip_id) left join'
      '  tab_crd_publico f on (a.pub_id = f.pub_id) left join'
      '  tab_sis_unidade g on (a.und_id = g.und_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    Top = 248
    object QryConsultaCRD_ID: TLargeintField
      DisplayLabel = 'Identificador'
      FieldName = 'CRD_ID'
      Origin = 'CRD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaCRD_TITULO: TStringField
      DisplayLabel = 'T'#237'tulo do projeto'
      FieldName = 'CRD_TITULO'
      Origin = 'CRD_TITULO'
      Size = 100
    end
    object QryConsultaCRD_SITUACAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'CRD_SITUACAO'
      Origin = 'SIT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaCRD_AGENTE_FINANCEIRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Agente financeiro'
      FieldName = 'CRD_AGENTE_FINANCEIRO'
      Origin = 'FIN_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaCRD_LINHA_CREDITO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Linha de cr'#233'dito'
      FieldName = 'CRD_LINHA_CREDITO'
      Origin = 'LIN_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaCRD_TIPO_CREDITO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo de cr'#233'dito'
      FieldName = 'CRD_TIPO_CREDITO'
      Origin = 'TIP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaCRD_PUBLICO_BENEFICIARIO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'P'#250'blico benefici'#225'rio'
      FieldName = 'CRD_PUBLICO_BENEFICIARIO'
      Origin = 'PUB_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaCRD_ESCRITORIO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'CRD_ESCRITORIO'
      Origin = 'UND_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaCRD_DATA_ELABORACAO: TDateField
      DisplayLabel = 'Data de elabora'#231#227'o'
      FieldName = 'CRD_DATA_ELABORACAO'
      Origin = 'CRD_DATA_ELABORACAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryConsultaCRD_DATA_CONTRATACAO: TDateField
      DisplayLabel = 'Data de contrata'#231#227'o'
      FieldName = 'CRD_DATA_CONTRATACAO'
      Origin = 'CRD_DATA_CONTRATACAO'
      DisplayFormat = 'dd/mm/yyyy'
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
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_CREDITO_RURAL'
      '(CRD_ID, CRD_TITULO, CRD_DATA_ELABORACAO, CRD_DATA_CONTRATACAO, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_CRD_ID, :NEW_CRD_TITULO, :NEW_CRD_DATA_ELABORACAO, ' +
        ':NEW_CRD_DATA_CONTRATACAO, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_CREDITO_RURAL'
      
        'SET CRD_ID = :NEW_CRD_ID, CRD_TITULO = :NEW_CRD_TITULO, CRD_DATA' +
        '_ELABORACAO = :NEW_CRD_DATA_ELABORACAO, '
      
        '  CRD_DATA_CONTRATACAO = :NEW_CRD_DATA_CONTRATACAO, REG_EXCLUIDO' +
        ' = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE CRD_ID = :OLD_CRD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_CREDITO_RURAL'
      'WHERE CRD_ID = :OLD_CRD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT CRD_ID, CRD_TITULO, CRD_DESCRICAO, CRD_DATA_ELABORACAO, C' +
        'RD_DATA_INTERNALIZACAO, '
      
        '  CRD_DATA_CONTRATACAO, CRD_DATA_ENCERRAMENTO, CRD_DATA_HORA_REG' +
        'ISTRO, '
      '  CRD_VALOR_ELABORADO, CRD_VALOR_CONTRATADO, FUN_ID_CAMPO, '
      '  FUN_ID_ELABORADOR, UND_ID, FIN_ID, LIN_ID, TIP_ID, PUB_ID, '
      '  COM_ID, SIT_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_CREDITO_RURAL'
      'WHERE CRD_ID = :CRD_ID')
    Top = 248
  end
end
