inherited FrmProdutividadeFaterConsulta: TFrmProdutividadeFaterConsulta
  Left = 302
  Top = 121
  Hint = 'Consultas de FATER.'
  ActiveControl = nil
  Caption = 'Consulta de FATER'
  ClientWidth = 816
  ExplicitLeft = 302
  ExplicitTop = 121
  ExplicitWidth = 832
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 816
    Caption = '      Consulta de FATER'
    ExplicitWidth = 717
  end
  inherited GrdConsulta: TcxGrid
    Top = 236
    Width = 816
    Height = 237
    ExplicitLeft = 16
    ExplicitTop = 228
    ExplicitWidth = 816
    ExplicitHeight = 237
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'FAT_ID'
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #39'Total de FATER: '#39' ,##0'
          Kind = skCount
          Column = GrdConsultaTblPRJ_NOME
        end>
      object GrdConsultaTblFAT_DATA_ACAO: TcxGridDBColumn
        DataBinding.FieldName = 'FAT_DATA_ACAO'
        Width = 66
      end
      object GrdConsultaTblFAT_SITUACAO: TcxGridDBColumn
        DataBinding.FieldName = 'FAT_SITUACAO'
        Width = 125
      end
      object GrdConsultaTblFUN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_NOME'
        Width = 188
      end
      object GrdConsultaTblPRJ_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'PRJ_NOME'
        Width = 211
      end
      object GrdConsultaTblMET_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'MET_DESCRICAO'
        Width = 163
      end
      object GrdConsultaTblFIN_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'FIN_DESCRICAO'
        Width = 231
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 206
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 149
      end
      object GrdConsultaTblUFE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'UFE_ID'
        Width = 25
      end
    end
  end
  inherited PnlMain: TPanel
    Width = 816
    Height = 181
    BevelEdges = [beTop]
    BevelKind = bkTile
    ExplicitWidth = 816
    ExplicitHeight = 181
    DesignSize = (
      816
      179)
    inherited LblValor: TLabel
      Left = 440
      Top = 128
      Width = 47
      Caption = 'Tem'#225'tica:'
      ExplicitLeft = 440
      ExplicitTop = 128
      ExplicitWidth = 47
    end
    inherited LblOpcao: TLabel
      Left = 323
      Top = 29
      Enabled = False
      Visible = False
      ExplicitLeft = 323
      ExplicitTop = 29
    end
    object Label8: TLabel [2]
      Left = 8
      Top = 8
      Width = 68
      Height = 13
      Caption = 'Data a'#231#227'o de:'
      Transparent = True
    end
    object Label9: TLabel [3]
      Left = 104
      Top = 8
      Width = 21
      Height = 13
      Caption = 'At'#233':'
      Transparent = True
    end
    object Label2: TLabel [4]
      Left = 8
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Escrit'#243'rio:'
      Transparent = True
    end
    object Label3: TLabel [5]
      Left = 280
      Top = 48
      Width = 47
      Height = 13
      Caption = 'Munic'#237'pio:'
      Transparent = True
    end
    object Label5: TLabel [6]
      Left = 488
      Top = 88
      Width = 68
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'M'#233'todo inicial:'
    end
    object Label6: TLabel [7]
      Left = 8
      Top = 128
      Width = 52
      Height = 13
      Caption = 'Finalidade:'
    end
    object Label7: TLabel [8]
      Left = 200
      Top = 8
      Width = 101
      Height = 13
      Caption = 'T'#233'cnico respons'#225'vel:'
      Transparent = True
    end
    object Label1: TLabel [9]
      Left = 584
      Top = 8
      Width = 96
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'CPF do benefici'#225'rio:'
      Transparent = True
    end
    object Label10: TLabel [10]
      Left = 216
      Top = 128
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label11: TLabel [11]
      Left = 488
      Top = 48
      Width = 63
      Height = 13
      Caption = 'Comunidade:'
      Transparent = True
    end
    object Label12: TLabel [12]
      Left = 8
      Top = 88
      Width = 39
      Height = 13
      Caption = 'Projeto:'
    end
    inherited ImgCmbBxOpcao: TcxImageComboBox
      Left = 339
      Enabled = False
      TabOrder = 14
      Visible = False
      ExplicitLeft = 339
      ExplicitWidth = 163
      Width = 163
    end
    inherited EdtValor: TcxTextEdit [14]
      Left = 440
      Top = 144
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 11
      ExplicitLeft = 440
      ExplicitTop = 144
      ExplicitWidth = 265
      Width = 265
    end
    inherited BtnConsultar: TcxButton [15]
      Left = 723
      Top = 104
      Hint = 'Consultar FATER'
      Anchors = [akTop, akRight]
      Description = 'Realiza a consulta de FATER usando os par'#226'metros informados.'
      TabOrder = 12
      OnClick = BtnConsultarClick
      ExplicitLeft = 723
      ExplicitTop = 104
    end
    inherited BtnLimparParametros: TcxButton [16]
      Left = 723
      Top = 140
      Anchors = [akTop, akRight]
      TabOrder = 13
      ExplicitLeft = 723
      ExplicitTop = 140
    end
    object EdtDataInicio: TcxDateEdit
      Left = 8
      Top = 24
      TabOrder = 0
      OnKeyPress = EdtDataInicioKeyPress
      Width = 89
    end
    object EdtDataFim: TcxDateEdit
      Left = 104
      Top = 24
      TabOrder = 1
      Width = 89
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
      TabOrder = 4
      Width = 265
    end
    object LkpCmbBxMunicipio: TcxLookupComboBox
      Left = 280
      Top = 64
      Properties.KeyFieldNames = 'CID_ID'
      Properties.ListColumns = <
        item
          FieldName = 'CID_NOME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtSrcMunicipio
      Properties.OnEditValueChanged = LkpCmbBxMunicipioPropertiesEditValueChanged
      TabOrder = 5
      Width = 201
    end
    object LkpCmbBxTecnico: TcxLookupComboBox
      Left = 200
      Top = 24
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
      TabOrder = 2
      Width = 377
    end
    object LkpCmbBxMetodo: TcxLookupComboBox
      Left = 488
      Top = 104
      Anchors = [akTop, akRight]
      Properties.DropDownRows = 16
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'MET_ID'
      Properties.ListColumns = <
        item
          FieldName = 'MET_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtSrcMetodo
      Properties.PostPopupValueOnTab = True
      TabOrder = 8
      Width = 217
    end
    object LkpCmbBxFinalidade: TcxLookupComboBox
      Left = 8
      Top = 144
      Properties.DropDownRows = 16
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'FIN_ID'
      Properties.ListColumns = <
        item
          FieldName = 'FIN_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtSrcFinalidade
      Properties.PostPopupValueOnTab = True
      TabOrder = 9
      Width = 201
    end
    object EdtCPF: TcxMaskEdit
      Left = 584
      Top = 24
      Anchors = [akTop, akRight]
      Properties.AlwaysShowBlanksAndLiterals = True
      Properties.EditMask = '999.999.999-99;0; '
      TabOrder = 3
      Text = '           '
      Width = 121
    end
    object ImgCmbBxSituacao: TcxImageComboBox
      Left = 216
      Top = 144
      Properties.ClearKey = 46
      Properties.Images = DtmRecursoModulo.ImgLstPequenas
      Properties.Items = <
        item
          Description = 'Ativa e validada pela chefia'
          ImageIndex = 48
          Value = 2
        end
        item
          Description = 'Ativa e n'#227'o validada pela chefia'
          ImageIndex = 108
          Value = 1
        end
        item
          Description = 'Inativa'
          ImageIndex = 47
          Value = 3
        end>
      TabOrder = 10
      Width = 217
    end
    object LkpCmbBxComunidade: TcxLookupComboBox
      Left = 488
      Top = 64
      Anchors = [akLeft, akTop, akRight]
      Properties.KeyFieldNames = 'COM_ID'
      Properties.ListColumns = <
        item
          FieldName = 'COM_NOME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtSrcComunidade
      TabOrder = 6
      Width = 217
    end
    object LkpCmbBxProjeto: TcxLookupComboBox
      Left = 8
      Top = 104
      Anchors = [akLeft, akTop, akRight]
      Properties.DropDownRows = 16
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'PRJ_ID'
      Properties.ListColumns = <
        item
          FieldName = 'PRJ_NOME'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtSrcProjeto
      Properties.PostPopupValueOnTab = True
      TabOrder = 7
      Width = 473
    end
  end
  inherited BarDockControl: TdxBarDockControl
    Width = 816
    ExplicitWidth = 816
  end
  inherited DtSrcConsulta: TDataSource
    Left = 136
    Top = 272
  end
  inherited DtStConsulta: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_PRD_FATER'
      'SET '
      '    FAT_DATA_ACAO = :FAT_DATA_ACAO,'
      '    FAT_DATA_VISITA = :FAT_DATA_VISITA,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO'
      'WHERE'
      '    FAT_ID = :OLD_FAT_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_PRD_FATER'
      'WHERE'
      '        FAT_ID = :OLD_FAT_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER('
      '    FAT_ID,'
      '    FAT_DATA_ACAO,'
      '    FAT_DATA_VISITA,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO'
      ')'
      'VALUES('
      '    :FAT_ID,'
      '    :FAT_DATA_ACAO,'
      '    :FAT_DATA_VISITA,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.fat_id,'
      '  a.fat_data_acao,'
      '  a.fat_data_visita,'
      '  case a.fat_situacao'
      '    when 1 then '#39'Ativa e n'#227'o validada pela chefia'#39
      '    when 2 then '#39'Ativa e validada pela chefia'#39
      '    when 3 then '#39'Inativa'#39
      '  end as fat_situacao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.und_nome,'
      '  c.fin_descricao,'
      '  d.met_descricao,'
      '  e.cid_nome,'
      '  e.ufe_id,'
      '  f.prj_nome,'
      '  g.fun_nome'
      'from'
      
        '  tab_prd_fater a left join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) left join'
      '  tab_prd_finalidade c on (a.fin_id = c.fin_id) left join'
      '  tab_prd_metodo d on (a.met_id_inicial = d.met_id) left join'
      '  tab_dne_cidade e on (a.cid_id = e.cid_id) left join'
      '  tab_prd_projeto f on (a.prj_id = f.prj_id) left join'
      '  tab_pes_funcionario g on (a.fun_id = g.fun_id)'
      'where( '
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))'
      '     ) and (     A.FAT_ID = :OLD_FAT_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.fat_id,'
      '  a.fat_data_acao,'
      '  a.fat_data_visita,'
      '  case a.fat_situacao'
      '    when 1 then '#39'Ativa e n'#227'o validada pela chefia'#39
      '    when 2 then '#39'Ativa e validada pela chefia'#39
      '    when 3 then '#39'Inativa'#39
      '  end as fat_situacao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.und_nome,'
      '  c.fin_descricao,'
      '  d.met_descricao,'
      '  e.cid_nome,'
      '  e.ufe_id,'
      '  f.prj_nome,'
      '  g.fun_nome'
      'from'
      
        '  tab_prd_fater a left join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) left join'
      '  tab_prd_finalidade c on (a.fin_id = c.fin_id) left join'
      '  tab_prd_metodo d on (a.met_id_inicial = d.met_id) left join'
      '  tab_dne_cidade e on (a.cid_id = e.cid_id) left join'
      '  tab_prd_projeto f on (a.prj_id = f.prj_id) left join'
      '  tab_pes_funcionario g on (a.fun_id = g.fun_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    Left = 104
    Top = 112
    object DtStConsultaFAT_ID: TFIBBCDField
      FieldName = 'FAT_ID'
      Size = 0
    end
    object DtStConsultaFAT_DATA_ACAO: TFIBDateField
      DisplayLabel = 'Data a'#231#227'o'
      FieldName = 'FAT_DATA_ACAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DtStConsultaFAT_DATA_VISITA: TFIBDateField
      DisplayLabel = 'Data visita'
      FieldName = 'FAT_DATA_VISITA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DtStConsultaFAT_SITUACAO: TFIBStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'FAT_SITUACAO'
      Size = 32
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaUND_NOME: TFIBStringField
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'UND_NOME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaFIN_DESCRICAO: TFIBStringField
      DisplayLabel = 'Finalidade'
      FieldName = 'FIN_DESCRICAO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaMET_DESCRICAO: TFIBStringField
      DisplayLabel = 'M'#233'todo'
      FieldName = 'MET_DESCRICAO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaCID_NOME: TFIBStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Size = 80
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaUFE_ID: TFIBStringField
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaFUN_NOME: TFIBStringField
      DisplayLabel = 'T'#233'cnico respons'#225'vel'
      FieldName = 'FUN_NOME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaREG_EXCLUIDO: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'REG_EXCLUIDO'
    end
    object DtStConsultaREG_REPLICADO: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'REG_REPLICADO'
    end
    object DtStConsultaREG_USUARIO: TFIBStringField
      FieldName = 'REG_USUARIO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaREG_MODIFICADO: TFIBDateTimeField
      FieldName = 'REG_MODIFICADO'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
    object DtStConsultaPRJ_NOME: TFIBStringField
      DisplayLabel = 'Projeto'
      FieldName = 'PRJ_NOME'
      Size = 500
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  inherited BarManager: TdxBarManager
    Left = 200
    Top = 272
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BtnNovo: TdxBarButton
      Description = 'Cria um novo registro de FATER.'
      Hint = 'Inserir nova FATER'
    end
    inherited BtnEditar: TdxBarButton
      Description = 'Edita a FATER atualmente selecionada.'
      Hint = 'Editar FATER selecionada'
    end
    inherited BtnVisualizar: TdxBarButton
      Description = 'Visualiza a FATER atualmente selecionada.'
    end
    inherited BtnExcluir: TdxBarButton
      Description = 'Exclui a FATER atualmente selecionada.'
      Hint = 'Excluir FATER selecionada'
    end
  end
  inherited PopupMenuConsulta: TdxBarPopupMenu
    Left = 168
    Top = 272
  end
  inherited QryConsulta: TFDQuery
    SQL.Strings = (
      'select'
      '  a.fat_id,'
      '  a.fat_data_acao,'
      '  a.fat_data_visita,'
      '  case a.fat_situacao'
      '    when 1 then '#39'Ativa e n'#227'o validada pela chefia'#39
      '    when 2 then '#39'Ativa e validada pela chefia'#39
      '    when 3 then '#39'Inativa'#39
      '  end as fat_situacao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.und_nome,'
      '  c.fin_descricao,'
      '  d.met_descricao,'
      '  e.cid_nome,'
      '  e.ufe_id,'
      '  f.prj_nome,'
      '  g.fun_nome'
      'from'
      
        '  tab_prd_fater a left join tab_sis_unidade b on (a.und_id = b.u' +
        'nd_id) left join'
      '  tab_prd_finalidade c on (a.fin_id = c.fin_id) left join'
      '  tab_prd_metodo d on (a.met_id_inicial = d.met_id) left join'
      '  tab_dne_cidade e on (a.cid_id = e.cid_id) left join'
      '  tab_prd_projeto f on (a.prj_id = f.prj_id) left join'
      '  tab_pes_funcionario g on (a.fun_id = g.fun_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    Left = 72
    Top = 272
    object QryConsultaFAT_ID: TLargeintField
      FieldName = 'FAT_ID'
      Origin = 'FAT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaFAT_DATA_ACAO: TDateField
      DisplayLabel = 'Data a'#231#227'o'
      FieldName = 'FAT_DATA_ACAO'
      Origin = 'FAT_DATA_ACAO'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryConsultaFAT_DATA_VISITA: TDateField
      FieldName = 'FAT_DATA_VISITA'
      Origin = 'FAT_DATA_VISITA'
    end
    object QryConsultaFAT_SITUACAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'FAT_SITUACAO'
      Origin = 'FAT_SITUACAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 32
    end
    object QryConsultaUND_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'UND_NOME'
      Origin = 'UND_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaFIN_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Finalidade'
      FieldName = 'FIN_DESCRICAO'
      Origin = 'FIN_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaMET_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Met'#243'do'
      FieldName = 'MET_DESCRICAO'
      Origin = 'MET_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
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
    object QryConsultaFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'T'#233'cnico respons'#225'vel'
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
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
    object QryConsultaPRJ_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Projeto'
      FieldName = 'PRJ_NOME'
      Origin = 'PRJ_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_FATER'
      '(FAT_ID, FAT_DATA_ACAO, FAT_DATA_VISITA, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_FAT_ID, :NEW_FAT_DATA_ACAO, :NEW_FAT_DATA_VISITA, :' +
        'NEW_REG_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)'
      'RETURNING FAT_SITUACAO')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_FATER'
      
        'SET FAT_ID = :NEW_FAT_ID, FAT_DATA_ACAO = :NEW_FAT_DATA_ACAO, FA' +
        'T_DATA_VISITA = :NEW_FAT_DATA_VISITA, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE FAT_ID = :OLD_FAT_ID'
      'RETURNING FAT_SITUACAO')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_FATER'
      'WHERE FAT_ID = :OLD_FAT_ID')
    FetchRowSQL.Strings = (
      
        'SELECT FAT_ID, FAT_DATA_ACAO, FAT_DATA_VISITA, FAT_SITUACAO, FAT' +
        '_TEMATICA, '
      '  FAT_ORIENTACAO, FAT_RESUMO, FAT_PARCERIA, FAT_TECNOLOGIA_USO, '
      '  FAT_TECNOLOGIA, FAT_BOA_PRATICA_USO, FAT_BOA_PRATICA, UND_ID, '
      '  FIN_ID, MET_ID_INICIAL, MET_ID_FINAL, CID_ID, FUN_ID, REC_ID, '
      
        '  PRJ_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_PRD_FATER'
      'WHERE FAT_ID = :FAT_ID')
    Left = 104
    Top = 272
  end
  object DtSrcMetodo: TDataSource
    DataSet = DtmProdutividadeModulo.DtStMetodo
    Left = 136
    Top = 304
  end
  object DtSrcFinalidade: TDataSource
    DataSet = DtmProdutividadeModulo.DtStFinalidade
    Left = 136
    Top = 336
  end
  object DtSrcProjeto: TDataSource
    DataSet = QryProjeto
    Left = 136
    Top = 432
  end
  object DtSrcMunicipio: TDataSource
    DataSet = QryMunicipio
    Left = 136
    Top = 400
  end
  object DtSrcComunidade: TDataSource
    DataSet = QryComunidade
    Left = 136
    Top = 368
  end
  object QryComunidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select com_id, com_nome from stp_cad_comunidade_por_cidade(:cida' +
        'de)')
    Left = 104
    Top = 368
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
  object QryMunicipio: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select cid_id, cid_nome from stp_dne_cidade_por_unidade(:unidade' +
        ')')
    Left = 104
    Top = 400
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
  object QryProjeto: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select * from stp_prd_projeto_por_cidade (:cidade)')
    Left = 104
    Top = 432
    ParamData = <
      item
        Name = 'CIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryProjetoPRJ_ID: TIntegerField
      FieldName = 'PRJ_ID'
      Origin = 'PRJ_ID'
    end
    object QryProjetoPRJ_NOME: TStringField
      FieldName = 'PRJ_NOME'
      Origin = 'PRJ_NOME'
      Size = 500
    end
  end
end
