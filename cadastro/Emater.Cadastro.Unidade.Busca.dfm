inherited FrmCadastroUnidadeBusca: TFrmCadastroUnidadeBusca
  Left = 305
  Top = 152
  Hint = 'Busca r'#225'pida de unidades de produ'#231#227'o familiar.'
  ActiveControl = EdtCPF
  Caption = 'Busca R'#225'pida de Unidade de Produ'#231#227'o Familiar'
  ClientWidth = 861
  ExplicitLeft = 305
  ExplicitTop = 152
  ExplicitWidth = 877
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPesquisa: TcxPageControl
    Width = 845
    Height = 193
    ExplicitWidth = 845
    ExplicitHeight = 193
    ClientRectBottom = 191
    ClientRectRight = 843
    inherited TbShtParametros: TcxTabSheet
      ExplicitWidth = 841
      ExplicitHeight = 179
      DesignSize = (
        841
        163)
      inherited LblValor: TLabel
        Left = 120
        Width = 224
        Caption = 'Denomina'#231#227'o da unidade de produ'#231#227'o familiar:'
        ExplicitLeft = 120
        ExplicitWidth = 224
      end
      inherited LblOpcao: TLabel
        Left = 360
        ExplicitLeft = 360
      end
      object Label2: TLabel [2]
        Left = 8
        Top = 48
        Width = 48
        Height = 13
        Caption = 'Escrit'#243'rio:'
        Transparent = True
      end
      object Label7: TLabel [3]
        Left = 536
        Top = 8
        Width = 101
        Height = 13
        Caption = 'T'#233'cnico respons'#225'vel:'
        Transparent = True
      end
      object Label1: TLabel [4]
        Left = 8
        Top = 8
        Width = 96
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'CPF do benefici'#225'rio:'
        Transparent = True
      end
      object Label4: TLabel [5]
        Left = 8
        Top = 94
        Width = 115
        Height = 13
        Caption = 'Cultura/cria'#231#227'o/servi'#231'o:'
        Transparent = True
      end
      object Label5: TLabel [6]
        Left = 8
        Top = 118
        Width = 114
        Height = 13
        Caption = 'Produto comercializado:'
        Transparent = True
      end
      object Label6: TLabel [7]
        Left = 61
        Top = 142
        Width = 61
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'ou derivado:'
        Transparent = True
      end
      object Label8: TLabel [8]
        Left = 480
        Top = 142
        Width = 50
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'ou outros:'
        Transparent = True
      end
      object Label9: TLabel [9]
        Left = 328
        Top = 48
        Width = 63
        Height = 13
        Caption = 'Comunidade:'
        Transparent = True
      end
      object Label10: TLabel [10]
        Left = 672
        Top = 48
        Width = 58
        Height = 13
        Anchors = [akTop, akRight]
        Caption = 'Possui CAR:'
      end
      inherited ImgCmbBxOpcao: TcxImageComboBox
        Left = 360
        TabOrder = 2
        ExplicitLeft = 360
        ExplicitWidth = 169
        Width = 169
      end
      inherited BtnConsultar: TcxButton
        Left = 750
        Top = 99
        Hint = 'Consultar unidade de produ'#231#227'o'
        Description = 
          'Realiza a consulta de unidades de produ'#231#227'o familiar usando os pa' +
          'r'#226'metros informados.'
        TabOrder = 11
        OnClick = BtnConsultarClick
        ExplicitLeft = 750
        ExplicitTop = 99
      end
      inherited BtnLimparParametros: TcxButton
        Left = 750
        Top = 131
        TabOrder = 12
        ExplicitLeft = 750
        ExplicitTop = 131
      end
      inherited EdtValor: TcxTextEdit
        Left = 120
        TabOrder = 1
        ExplicitLeft = 120
        ExplicitWidth = 233
        Width = 233
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
        Width = 313
      end
      object LkpCmbBxTecnico: TcxLookupComboBox
        Left = 536
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
        TabOrder = 3
        Width = 201
      end
      object EdtCPF: TcxMaskEdit
        Left = 8
        Top = 24
        Anchors = [akTop, akRight]
        Properties.AlwaysShowBlanksAndLiterals = True
        Properties.EditMask = '999.999.999-99;0; '
        TabOrder = 0
        Text = '           '
        OnKeyPress = EdtCPFKeyPress
        Width = 105
      end
      object LkpCmbBxComercio: TcxLookupComboBox
        Left = 128
        Top = 114
        Anchors = [akLeft, akTop, akRight]
        Properties.DropDownRows = 16
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PRD_ID'
        Properties.ListColumns = <
          item
            FieldName = 'PRD_DESCRICAO'
          end
          item
            FieldName = 'DIV_DESCRICAO'
          end
          item
            FieldName = 'GRP_DESCRICAO'
          end
          item
            FieldName = 'CLS_DESCRICAO'
          end
          item
            FieldName = 'UNI_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtSrcProduto
        Properties.PostPopupValueOnTab = True
        TabOrder = 8
        Width = 609
      end
      object LkpCmbBxProduto: TcxLookupComboBox
        Left = 128
        Top = 90
        Anchors = [akLeft, akTop, akRight]
        Properties.DropDownRows = 16
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PRD_ID'
        Properties.ListColumns = <
          item
            FieldName = 'PRD_DESCRICAO'
          end
          item
            FieldName = 'DIV_DESCRICAO'
          end
          item
            FieldName = 'GRP_DESCRICAO'
          end
          item
            FieldName = 'CLS_DESCRICAO'
          end
          item
            FieldName = 'UNI_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtSrcProduto
        Properties.PostPopupValueOnTab = True
        TabOrder = 7
        Width = 609
      end
      object LkpCmbBxDerivado: TcxLookupComboBox
        Left = 128
        Top = 138
        Anchors = [akTop, akRight]
        Properties.DropDownRows = 16
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'DEV_ID'
        Properties.ListColumns = <
          item
            FieldName = 'DEV_DESCRICAO'
          end
          item
            MinWidth = 55
            Width = 55
            FieldName = 'UNI_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.PostPopupValueOnTab = True
        TabOrder = 9
        Width = 345
      end
      object EdtOutros: TcxTextEdit
        Left = 536
        Top = 138
        Anchors = [akTop, akRight]
        TabOrder = 10
        OnKeyPress = EdtValorKeyPress
        Width = 201
      end
      object LkpCmbBxComunidade: TcxLookupComboBox
        Left = 328
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        Properties.KeyFieldNames = 'COM_ID'
        Properties.ListColumns = <
          item
            FieldName = 'COM_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtSrcComunidade
        TabOrder = 5
        Width = 337
      end
      object ImgCmbBxCAR: TcxImageComboBox
        Left = 672
        Top = 64
        Anchors = [akTop, akRight]
        Properties.ClearKey = 46
        Properties.Images = DtmRecursoModulo.ImgLstPequenas
        Properties.Items = <
          item
            Description = 'Sim'
            ImageIndex = 48
            Value = 1
          end
          item
            Description = 'N'#227'o'
            ImageIndex = 47
            Value = 0
          end>
        TabOrder = 6
        Width = 65
      end
    end
  end
  inherited GrdConsulta: TcxGrid
    Top = 208
    Width = 845
    Height = 263
    ExplicitTop = 208
    ExplicitWidth = 845
    ExplicitHeight = 263
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'PRO_ID'
      DataController.Summary.FooterSummaryItems = <
        item
          Format = #39'Total de unidades: '#39' ,##0'
          Kind = skCount
          Column = GrdConsultaTblPRO_DENOMINACAO
        end>
      object GrdConsultaTblPRO_DENOMINACAO: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_DENOMINACAO'
        Width = 174
      end
      object GrdConsultaTblPRO_LATITUDE: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_LATITUDE'
        Width = 85
      end
      object GrdConsultaTblPRO_LONGITUDE: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_LONGITUDE'
        Width = 87
      end
      object GrdConsultaTblPRO_AREA_LEGAL: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_AREA_LEGAL'
        Width = 77
      end
      object GrdConsultaTblPRO_AREA_REAL: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_AREA_REAL'
        Width = 75
      end
      object GrdConsultaTblPRO_DOCUMENTO_DOMINIO: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_DOCUMENTO_DOMINIO'
        Width = 59
      end
      object GrdConsultaTblPRO_CARACTERIZACAO_DOMINIO: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_CARACTERIZACAO_DOMINIO'
        Width = 49
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 58
      end
      object GrdConsultaTblFUN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_NOME'
        Width = 70
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 112
      end
    end
  end
  inherited BtnSelecionar: TcxButton
    Left = 688
    ExplicitLeft = 688
  end
  inherited BtnFechar: TcxButton
    Left = 779
    ExplicitLeft = 647
  end
  inherited BtnNovo: TcxButton
    Hint = 'Inserir nova unidade de produ'#231#227'o'
    Description = 'Cria um novo registro de unidade de produ'#231#227'o familiar.'
  end
  inherited BtnEditar: TcxButton
    Hint = 'Editar unidade de produ'#231#227'o selecionada'
    Description = 'Edita a unidade de produ'#231#227'o familiar atualmente selecionada.'
  end
  inherited BtnVisualizar: TcxButton
    Hint = 'Visualizar unidade de produ'#231#227'o familiar'
    Description = 
      'Visualiza o cadastro da unidade de produ'#231#227'o familiar atualmente ' +
      'selecionada.'
  end
  inherited DtSrcConsulta: TDataSource
    Top = 296
  end
  inherited DtStConsulta: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_CAD_PRODUCAO_FAMILIAR'
      'SET '
      '    PRO_DENOMINACAO = :PRO_DENOMINACAO,'
      '    PRO_AREA_LEGAL = :PRO_AREA_LEGAL,'
      '    PRO_AREA_REAL = :PRO_AREA_REAL,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO'
      'WHERE'
      '    PRO_ID = :OLD_PRO_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_CAD_PRODUCAO_FAMILIAR'
      'WHERE'
      '        PRO_ID = :OLD_PRO_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUCAO_FAMILIAR('
      '    PRO_ID,'
      '    PRO_DENOMINACAO,'
      '    PRO_AREA_LEGAL,'
      '    PRO_AREA_REAL,'
      '    REG_EXCLUIDO'
      ')'
      'VALUES('
      '    :PRO_ID,'
      '    :PRO_DENOMINACAO,'
      '    :PRO_AREA_LEGAL,'
      '    :PRO_AREA_REAL,'
      '    :REG_EXCLUIDO'
      ')')
    RefreshSQL.Strings = (
      'select '
      '  a.pro_id, '
      '  a.pro_denominacao, '
      ''
      
        '  cast(coalesce(trunc(a.pro_latitude_graus), 0) as varchar(5)) |' +
        '| '#39#176' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_latitude_minutos), 0) as varchar(5))' +
        ' || '#39#39#39' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_latitude_segundos), 0) as varchar(5)' +
        ') || '#39#39#39#39#39' '#39' ||'
      '  coalesce(a.pro_latitude_hemisferio, '#39'?'#39') as pro_latitude,'
      ''
      
        '  cast(coalesce(trunc(a.pro_longitude_graus), 0) as varchar(5)) ' +
        '|| '#39#176' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_longitude_minutos), 0) as varchar(5)' +
        ') || '#39#39#39' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_longitude_segundos), 0) as varchar(5' +
        ')) || '#39#39#39#39#39' '#39' ||'
      '  coalesce(a.pro_longitude_hemisferio, '#39'?'#39') as pro_longitude,'
      ''
      '  a.pro_area_legal,'
      '  a.pro_area_real, '
      '  a.reg_excluido,'
      ''
      '  (e.unt_descricao || '#39': '#39' || d.und_nome) as und_nome,'
      '  b.cid_nome,'
      '  c.fun_nome,'
      '  f.dct_descricao as pro_documento_dominio,'
      '  g.oct_descricao as pro_caracterizacao_dominio'
      'from '
      
        '  tab_cad_producao_familiar a left join tab_dne_cidade b on (a.c' +
        'id_id = b.cid_id) left join'
      
        '  tab_pes_funcionario c on (a.fun_id = c.fun_id and c.reg_exclui' +
        'do = 0) left join'
      '  tab_sis_unidade d on (a.und_id = d.und_id) left join'
      '  tab_sis_unidade_tipo e on (d.unt_id = e.unt_id) left join'
      '  tab_cad_documento_tipo f on (f.dct_id = a.dct_id) left join'
      '  tab_cad_ocupacao_tipo g on (g.oct_id = a.oct_id)'
      'where( '
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))'
      '     ) and (     A.PRO_ID = :OLD_PRO_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select '
      '  a.pro_id, '
      '  a.pro_denominacao, '
      ''
      
        '  cast(coalesce(trunc(a.pro_latitude_graus), 0) as varchar(5)) |' +
        '| '#39#176' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_latitude_minutos), 0) as varchar(5))' +
        ' || '#39#39#39' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_latitude_segundos), 0) as varchar(5)' +
        ') || '#39#39#39#39#39' '#39' ||'
      '  coalesce(a.pro_latitude_hemisferio, '#39'?'#39') as pro_latitude,'
      ''
      
        '  cast(coalesce(trunc(a.pro_longitude_graus), 0) as varchar(5)) ' +
        '|| '#39#176' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_longitude_minutos), 0) as varchar(5)' +
        ') || '#39#39#39' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_longitude_segundos), 0) as varchar(5' +
        ')) || '#39#39#39#39#39' '#39' ||'
      '  coalesce(a.pro_longitude_hemisferio, '#39'?'#39') as pro_longitude,'
      ''
      '  a.pro_area_legal,'
      '  a.pro_area_real, '
      '  a.reg_excluido,'
      ''
      '  (e.unt_descricao || '#39': '#39' || d.und_nome) as und_nome,'
      '  b.cid_nome,'
      '  c.fun_nome,'
      '  f.dct_descricao as pro_documento_dominio,'
      '  g.oct_descricao as pro_caracterizacao_dominio'
      'from '
      
        '  tab_cad_producao_familiar a left join tab_dne_cidade b on (a.c' +
        'id_id = b.cid_id) left join'
      
        '  tab_pes_funcionario c on (a.fun_id = c.fun_id and c.reg_exclui' +
        'do = 0) left join'
      '  tab_sis_unidade d on (a.und_id = d.und_id) left join'
      '  tab_sis_unidade_tipo e on (d.unt_id = e.unt_id) left join'
      '  tab_cad_documento_tipo f on (f.dct_id = a.dct_id) left join'
      '  tab_cad_ocupacao_tipo g on (g.oct_id = a.oct_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    Left = 32
    Top = 272
    oAutoFormatFields = False
    object DtStConsultaPRO_ID: TFIBIntegerField
      FieldName = 'PRO_ID'
    end
    object DtStConsultaPRO_DENOMINACAO: TFIBStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'PRO_DENOMINACAO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaPRO_LATITUDE: TFIBStringField
      DisplayLabel = 'Latitude'
      FieldName = 'PRO_LATITUDE'
      Size = 23
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaPRO_LONGITUDE: TFIBStringField
      DisplayLabel = 'Longitude'
      FieldName = 'PRO_LONGITUDE'
      Size = 23
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaPRO_AREA_LEGAL: TFIBFloatField
      DisplayLabel = #193'rea legal (ha)'
      FieldName = 'PRO_AREA_LEGAL'
    end
    object DtStConsultaPRO_AREA_REAL: TFIBFloatField
      DisplayLabel = #193'rea real (ha)'
      FieldName = 'PRO_AREA_REAL'
    end
    object DtStConsultaUND_NOME: TFIBStringField
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'UND_NOME'
      Size = 152
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
    object DtStConsultaFUN_NOME: TFIBStringField
      DisplayLabel = 'T'#233'cnico respons'#225'vel'
      FieldName = 'FUN_NOME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaPRO_DOCUMENTO_DOMINIO: TFIBStringField
      DisplayLabel = 'Processo de transi'#231#227'o agroecol'#243'gica'
      FieldName = 'PRO_DOCUMENTO_DOMINIO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaPRO_CARACTERIZACAO_DOMINIO: TFIBStringField
      DisplayLabel = 'Caracteriza'#231#227'o de dom'#237'nio'
      FieldName = 'PRO_CARACTERIZACAO_DOMINIO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStConsultaREG_EXCLUIDO: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'REG_EXCLUIDO'
    end
  end
  inherited dxBarManager: TdxBarManager
    Top = 296
    DockControlHeights = (
      0
      0
      0
      0)
  end
  inherited PopupMenuBusca: TdxBarPopupMenu
    Top = 296
  end
  inherited QryConsulta: TFDQuery
    SQL.Strings = (
      'select '
      '  a.pro_id, '
      '  a.pro_denominacao, '
      ''
      
        '  cast(coalesce(trunc(a.pro_latitude_graus), 0) as varchar(5)) |' +
        '| '#39#176' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_latitude_minutos), 0) as varchar(5))' +
        ' || '#39#39#39' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_latitude_segundos), 0) as varchar(5)' +
        ') || '#39#39#39#39#39' '#39' ||'
      '  coalesce(a.pro_latitude_hemisferio, '#39'?'#39') as pro_latitude,'
      ''
      
        '  cast(coalesce(trunc(a.pro_longitude_graus), 0) as varchar(5)) ' +
        '|| '#39#176' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_longitude_minutos), 0) as varchar(5)' +
        ') || '#39#39#39' '#39' ||'
      
        '  cast(coalesce(trunc(a.pro_longitude_segundos), 0) as varchar(5' +
        ')) || '#39#39#39#39#39' '#39' ||'
      '  coalesce(a.pro_longitude_hemisferio, '#39'?'#39') as pro_longitude,'
      ''
      '  a.pro_area_legal,'
      '  a.pro_area_real, '
      '  a.reg_excluido,'
      ''
      '  (e.unt_descricao || '#39': '#39' || d.und_nome) as und_nome,'
      '  b.cid_nome,'
      '  c.fun_nome,'
      '  f.dct_descricao as pro_documento_dominio,'
      '  g.oct_descricao as pro_caracterizacao_dominio'
      'from '
      
        '  tab_cad_producao_familiar a left join tab_dne_cidade b on (a.c' +
        'id_id = b.cid_id) left join'
      
        '  tab_pes_funcionario c on (a.fun_id = c.fun_id and c.reg_exclui' +
        'do = 0) left join'
      '  tab_sis_unidade d on (a.und_id = d.und_id) left join'
      '  tab_sis_unidade_tipo e on (d.unt_id = e.unt_id) left join'
      '  tab_cad_documento_tipo f on (f.dct_id = a.dct_id) left join'
      '  tab_cad_ocupacao_tipo g on (g.oct_id = a.oct_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local))')
    Top = 296
    object QryConsultaPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Required = True
    end
    object QryConsultaPRO_DENOMINACAO: TStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'PRO_DENOMINACAO'
      Required = True
      Size = 100
    end
    object QryConsultaPRO_LATITUDE: TStringField
      DisplayLabel = 'Latitude'
      FieldName = 'PRO_LATITUDE'
      ReadOnly = True
      Size = 23
    end
    object QryConsultaPRO_LONGITUDE: TStringField
      DisplayLabel = 'Longitude'
      FieldName = 'PRO_LONGITUDE'
      ReadOnly = True
      Size = 23
    end
    object QryConsultaPRO_AREA_LEGAL: TCurrencyField
      DisplayLabel = #193'rea legal (ha)'
      FieldName = 'PRO_AREA_LEGAL'
    end
    object QryConsultaPRO_AREA_REAL: TCurrencyField
      DisplayLabel = #193'rea real (ha)'
      FieldName = 'PRO_AREA_REAL'
    end
    object QryConsultaUND_NOME: TStringField
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'UND_NOME'
      ReadOnly = True
      Size = 152
    end
    object QryConsultaCID_NOME: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      ReadOnly = True
      Size = 80
    end
    object QryConsultaFUN_NOME: TStringField
      DisplayLabel = 'T'#233'cnico respons'#225'vel'
      FieldName = 'FUN_NOME'
      ReadOnly = True
      Size = 100
    end
    object QryConsultaPRO_DOCUMENTO_DOMINIO: TStringField
      DisplayLabel = 'Processo de transi'#231#227'o agroecol'#243'gica'
      FieldName = 'PRO_DOCUMENTO_DOMINIO'
      ReadOnly = True
      Size = 50
    end
    object QryConsultaPRO_CARACTERIZACAO_DOMINIO: TStringField
      DisplayLabel = 'Caracteriza'#231#227'o de dom'#237'nio'
      FieldName = 'PRO_CARACTERIZACAO_DOMINIO'
      ReadOnly = True
      Size = 50
    end
    object QryConsultaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Required = True
    end
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUCAO_FAMILIAR'
      '(PRO_ID, PRO_DENOMINACAO, PRO_AREA_LEGAL, PRO_AREA_REAL, '
      '  REG_EXCLUIDO)'
      
        'VALUES (:NEW_PRO_ID, :NEW_PRO_DENOMINACAO, :NEW_PRO_AREA_LEGAL, ' +
        ':NEW_PRO_AREA_REAL, '
      '  :NEW_REG_EXCLUIDO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUCAO_FAMILIAR'
      
        'SET PRO_ID = :NEW_PRO_ID, PRO_DENOMINACAO = :NEW_PRO_DENOMINACAO' +
        ', '
      
        '  PRO_AREA_LEGAL = :NEW_PRO_AREA_LEGAL, PRO_AREA_REAL = :NEW_PRO' +
        '_AREA_REAL, '
      '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO'
      'WHERE PRO_ID = :OLD_PRO_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUCAO_FAMILIAR'
      'WHERE PRO_ID = :OLD_PRO_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRO_ID, PRO_DATA, PRO_DENOMINACAO, PRO_ENDERECO, PRO_NUME' +
        'RO, '
      
        '  PRO_COMPLEMENTO, PRO_BAIRRO, PRO_CEP, PRO_ACESSO, PRO_ENERGIA_' +
        'SITUACAO, '
      
        '  PRO_ENERGIA_CONCESSIONARIA, PRO_ENERGIA_OUTRAS, PRO_AGUA_SITUA' +
        'CAO, '
      
        '  PRO_AGUA_CONCESSIONARIA, PRO_AGUA_POCO_ARTESIANO, PRO_AGUA_POC' +
        'O_AMAZONICO, '
      '  PRO_AGUA_RIO, PRO_AGUA_OUTRAS, PRO_CAR, PRO_CAR_NUMERO, '
      
        '  PRO_CAR_DATA, PRO_RECEITA_ANUAL, PRO_LATITUDE_GRAUS, PRO_LATIT' +
        'UDE_MINUTOS, '
      
        '  PRO_LATITUDE_SEGUNDOS, PRO_LATITUDE_HEMISFERIO, PRO_LONGITUDE_' +
        'GRAUS, '
      
        '  PRO_LONGITUDE_MINUTOS, PRO_LONGITUDE_SEGUNDOS, PRO_LONGITUDE_H' +
        'EMISFERIO, '
      
        '  PRO_AREA_LEGAL, PRO_AREA_REAL, PRO_AREA_NUA, PRO_AREA_PASTAGEM' +
        ', '
      '  PRO_AREA_PERMANENTE, PRO_AREA_TEMPORARIA, PRO_AREA_RESERVA, '
      '  PRO_AREA_OUTROS, CID_ID, COM_ID, FUN_ID, UND_ID, DCT_ID, '
      
        '  OCT_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_CAD_PRODUCAO_FAMILIAR'
      'WHERE PRO_ID = :PRO_ID')
    Top = 296
  end
  object DtSrcProduto: TDataSource
    DataSet = DtmCadastroModulo.DtStProduto
    Left = 144
    Top = 328
  end
  object DtSrcComunidade: TDataSource
    DataSet = QryComunidade
    Left = 144
    Top = 360
  end
  object QryComunidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select com_id, com_nome from stp_cad_comunidade_por_cidade(:cida' +
        'de)')
    Left = 112
    Top = 361
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
