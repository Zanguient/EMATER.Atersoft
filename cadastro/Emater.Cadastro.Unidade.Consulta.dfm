inherited FrmCadastroUnidadeConsulta: TFrmCadastroUnidadeConsulta
  Hint = 'Cadastros :: UPF :: Consulta'
  ActiveControl = EdtCPF
  Caption = 'Cadastros :: UPF :: Consulta'
  ClientWidth = 790
  ExplicitWidth = 806
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 790
    Caption = '      Consulta de Unidades de Produ'#231#227'o Familiar'
    ExplicitWidth = 669
  end
  object SplitterPrincipal: TSplitter [2]
    Left = 563
    Top = 196
    Width = 5
    Height = 277
    Align = alRight
    Color = clWhite
    ParentColor = False
    ResizeStyle = rsUpdate
    ExplicitLeft = 521
    ExplicitTop = 225
    ExplicitHeight = 248
  end
  inherited GrdConsulta: TcxGrid
    Top = 196
    Width = 563
    Height = 277
    TabOrder = 6
    ExplicitTop = 196
    ExplicitWidth = 563
    ExplicitHeight = 277
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
        Width = 187
      end
      object GrdConsultaTblPRO_LATITUDE: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_LATITUDE'
        Width = 80
      end
      object GrdConsultaTblPRO_LONGITUDE: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_LONGITUDE'
        Width = 83
      end
      object GrdConsultaTblPRO_AREA_LEGAL: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_AREA_LEGAL'
        Width = 81
      end
      object GrdConsultaTblPRO_AREA_REAL: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_AREA_REAL'
        Width = 81
      end
      object GrdConsultaTblPRO_DOCUMENTO_DOMINIO: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_DOCUMENTO_DOMINIO'
        Width = 111
      end
      object GrdConsultaTblPRO_CARACTERIZACAO_DOMINIO: TcxGridDBColumn
        DataBinding.FieldName = 'PRO_CARACTERIZACAO_DOMINIO'
        Width = 92
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 106
      end
      object GrdConsultaTblFUN_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'FUN_NOME'
        Width = 134
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 208
      end
    end
  end
  inherited PnlMain: TPanel
    Width = 790
    Height = 141
    BevelEdges = [beTop]
    BevelKind = bkTile
    ExplicitWidth = 790
    ExplicitHeight = 141
    DesignSize = (
      790
      139)
    inherited LblValor: TLabel
      Left = 120
      Width = 224
      Caption = 'Denomina'#231#227'o da unidade de produ'#231#227'o familiar:'
      ExplicitLeft = 120
      ExplicitWidth = 224
    end
    inherited LblOpcao: TLabel
      Left = 400
      ExplicitLeft = 400
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
      Left = 576
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
      Left = 200
      Top = 118
      Width = 61
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'ou derivado:'
      Transparent = True
    end
    object Label8: TLabel [8]
      Left = 504
      Top = 118
      Width = 50
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'ou outros:'
      Transparent = True
    end
    object Label9: TLabel [9]
      Left = 344
      Top = 48
      Width = 63
      Height = 13
      Caption = 'Comunidade:'
      Transparent = True
    end
    object Label10: TLabel [10]
      Left = 616
      Top = 48
      Width = 58
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Possui CAR:'
      Transparent = True
    end
    inherited ImgCmbBxOpcao: TcxImageComboBox
      Left = 400
      TabOrder = 2
      ExplicitLeft = 400
      ExplicitWidth = 169
      Width = 169
    end
    inherited BtnConsultar: TcxButton
      Left = 696
      Top = 72
      Hint = 'Consultar unidades de produ'#231#227'o'
      Anchors = [akTop, akRight]
      Description = 
        'Realiza a consulta de unidades de produ'#231#227'o usando os par'#226'metros ' +
        'informados.'
      TabOrder = 11
      OnClick = BtnConsultarClick
      ExplicitLeft = 696
      ExplicitTop = 72
    end
    inherited BtnLimparParametros: TcxButton
      Left = 696
      Top = 104
      Anchors = [akTop, akRight]
      TabOrder = 12
      ExplicitLeft = 696
      ExplicitTop = 104
    end
    inherited EdtValor: TcxTextEdit
      Left = 120
      TabOrder = 1
      ExplicitLeft = 120
      ExplicitWidth = 273
      Width = 273
    end
    object LkpCmbBxUnidade: TcxLookupComboBox
      Left = 8
      Top = 64
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'UND_ID'
      Properties.ListColumns = <
        item
          FieldName = 'UND_NOME_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtmSistemaModulo.DtSrcUnidade
      Properties.OnEditValueChanged = LkpCmbBxUnidadePropertiesEditValueChanged
      TabOrder = 4
      Width = 329
    end
    object LkpCmbBxTecnico: TcxLookupComboBox
      Left = 576
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
      Width = 105
    end
    object EdtCPF: TcxMaskEdit
      Left = 8
      Top = 24
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
      Width = 65
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
      Width = 553
    end
    object LkpCmbBxDerivado: TcxLookupComboBox
      Left = 264
      Top = 114
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
      Properties.ListSource = DtSrcDerivado
      Properties.PostPopupValueOnTab = True
      TabOrder = 9
      Width = 233
    end
    object EdtOutros: TcxTextEdit
      Left = 560
      Top = 114
      Anchors = [akTop, akRight]
      TabOrder = 10
      OnKeyPress = EdtValorKeyPress
      Width = 121
    end
    object LkpCmbBxComunidade: TcxLookupComboBox
      Left = 344
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
      Width = 265
    end
    object ImgCmbBxCAR: TcxImageComboBox
      Left = 616
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
  inherited BarDockControl: TdxBarDockControl
    Width = 790
    ExplicitWidth = 790
  end
  object PnlAtributos: TPanel [6]
    Left = 568
    Top = 196
    Width = 222
    Height = 277
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 7
    object GrdBen: TcxGrid
      Left = 0
      Top = 0
      Width = 222
      Height = 277
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
      object GrdBenTbl: TcxGridDBTableView
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
        DataController.DataSource = DtSrcBeneficiario
        DataController.KeyFieldNames = 'BEN_ID'
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
        object GrdBenTblBEN_CPF: TcxGridDBColumn
          DataBinding.FieldName = 'BEN_CPF'
          Width = 85
        end
        object GrdBenTblBEN_NOME: TcxGridDBColumn
          DataBinding.FieldName = 'BEN_NOME'
          Width = 135
        end
      end
      object GrdBenLvl: TcxGridLevel
        GridView = GrdBenTbl
      end
    end
  end
  inherited DtSrcConsulta: TDataSource
    Left = 232
    Top = 272
  end
  inherited BarManager: TdxBarManager
    Left = 296
    Top = 272
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BtnNovo: TdxBarButton
      Description = 'Criar nova UPF.'
      Hint = '01. Novo'
    end
    inherited BtnEditar: TdxBarButton
      Description = 'Editar UPF selecionada.'
      Hint = '02. Editar'
    end
    inherited BtnVisualizar: TdxBarButton
      Description = 'Visualizar UPF selecionada.'
      Hint = '03. Visualizar'
    end
    inherited BtnExcluir: TdxBarButton
      Description = 'Excluir UPF selecionada.'
      Hint = '04. Excluir'
    end
  end
  inherited PopupMenuConsulta: TdxBarPopupMenu
    Left = 264
    Top = 272
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
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
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
    Left = 168
    Top = 272
    object QryConsultaPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaPRO_DENOMINACAO: TStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'PRO_DENOMINACAO'
      Origin = 'PRO_DENOMINACAO'
      Required = True
      Size = 100
    end
    object QryConsultaPRO_LATITUDE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Latitude'
      FieldName = 'PRO_LATITUDE'
      Origin = 'PRO_LATITUDE'
      ProviderFlags = []
      ReadOnly = True
      Size = 23
    end
    object QryConsultaPRO_LONGITUDE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Longitude'
      FieldName = 'PRO_LONGITUDE'
      Origin = 'PRO_LONGITUDE'
      ProviderFlags = []
      ReadOnly = True
      Size = 23
    end
    object QryConsultaPRO_AREA_LEGAL: TCurrencyField
      DisplayLabel = #193'rea legal (ha)'
      FieldName = 'PRO_AREA_LEGAL'
      Origin = 'PRO_AREA_LEGAL'
    end
    object QryConsultaPRO_AREA_REAL: TCurrencyField
      DisplayLabel = #193'rea real (ha)'
      FieldName = 'PRO_AREA_REAL'
      Origin = 'PRO_AREA_REAL'
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
    object QryConsultaCID_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
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
    object QryConsultaPRO_DOCUMENTO_DOMINIO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Processo de transi'#231#227'o agroecol'#243'gica'
      FieldName = 'PRO_DOCUMENTO_DOMINIO'
      Origin = 'DCT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryConsultaPRO_CARACTERIZACAO_DOMINIO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Caracteriza'#231#227'o de dom'#237'nio'
      FieldName = 'PRO_CARACTERIZACAO_DOMINIO'
      Origin = 'OCT_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
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
    object QryConsultaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryConsultaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUCAO_FAMILIAR'
      '(PRO_ID, PRO_DENOMINACAO, PRO_AREA_LEGAL, PRO_AREA_REAL, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_PRO_ID, :NEW_PRO_DENOMINACAO, :NEW_PRO_AREA_LEGAL, ' +
        ':NEW_PRO_AREA_REAL, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUCAO_FAMILIAR'
      
        'SET PRO_ID = :NEW_PRO_ID, PRO_DENOMINACAO = :NEW_PRO_DENOMINACAO' +
        ', '
      
        '  PRO_AREA_LEGAL = :NEW_PRO_AREA_LEGAL, PRO_AREA_REAL = :NEW_PRO' +
        '_AREA_REAL, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
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
    Left = 200
    Top = 272
  end
  object DtSrcBeneficiario: TDataSource
    DataSet = QryBeneficiario
    Left = 232
    Top = 304
  end
  object DtSrcProduto: TDataSource
    DataSet = DtmCadastroModulo.DtStProduto
    Left = 232
    Top = 368
  end
  object DtSrcDerivado: TDataSource
    DataSet = DtmCadastroModulo.DtStDerivado
    Left = 232
    Top = 400
  end
  object DtSrcComunidade: TDataSource
    DataSet = QryComunidade
    Left = 232
    Top = 336
  end
  object QryComunidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select com_id, com_nome from stp_cad_comunidade_por_cidade(:cida' +
        'de)')
    Left = 200
    Top = 336
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
  object QryBeneficiario: TFDQuery
    MasterSource = DtSrcConsulta
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.ben_id,'
      '  a.pro_id,'
      '  b.ben_nome,'
      '  b.ben_cpf'
      'from'
      
        '  tab_cad_beneficiario_producao a join tab_cad_beneficiario b on' +
        ' (a.ben_id = b.ben_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.ben_nome')
    Left = 200
    Top = 304
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryBeneficiarioBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
      Required = True
    end
    object QryBeneficiarioPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryBeneficiarioBEN_CPF: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'BEN_CPF'
      Origin = 'BEN_CPF'
      ProviderFlags = []
      ReadOnly = True
      EditMask = '000.000.000\-00;0; '
      Size = 11
    end
    object QryBeneficiarioBEN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do benefici'#225'rio'
      FieldName = 'BEN_NOME'
      Origin = 'BEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
  end
end
