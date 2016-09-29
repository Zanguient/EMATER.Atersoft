inherited FrmCadastroComunidadeBusca: TFrmCadastroComunidadeBusca
  Left = 328
  Top = 176
  Hint = 'Busca r'#225'pida de comunidades.'
  Caption = 'Busca R'#225'pida de Comunidades'
  ClientHeight = 441
  ClientWidth = 744
  ExplicitWidth = 750
  ExplicitHeight = 470
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPesquisa: TcxPageControl
    Width = 728
    Height = 125
    ExplicitWidth = 728
    ExplicitHeight = 125
    ClientRectBottom = 123
    ClientRectRight = 726
    inherited TbShtParametros: TcxTabSheet
      ExplicitWidth = 724
      ExplicitHeight = 95
      inherited LblValor: TLabel
        Width = 106
        Caption = 'Nome da comunidade:'
        ExplicitWidth = 106
      end
      inherited LblOpcao: TLabel
        Left = 445
        ExplicitLeft = 408
      end
      object Label3: TLabel [2]
        Left = 8
        Top = 48
        Width = 47
        Height = 13
        Caption = 'Munic'#237'pio:'
        Transparent = True
      end
      inherited ImgCmbBxOpcao: TcxImageComboBox
        Left = 445
        ExplicitLeft = 445
        ExplicitWidth = 169
        Width = 169
      end
      inherited BtnConsultar: TcxButton
        Left = 630
        Top = 24
        Hint = 'Consultar comunidades'
        Description = 
          'Realiza a consulta de comunidades usando os par'#226'metros informado' +
          's'
        TabOrder = 3
        OnClick = BtnConsultarClick
        ExplicitLeft = 630
        ExplicitTop = 24
      end
      inherited BtnLimparParametros: TcxButton
        Left = 630
        Top = 60
        TabOrder = 4
        ExplicitLeft = 630
        ExplicitTop = 60
      end
      inherited EdtValor: TcxTextEdit
        ExplicitWidth = 430
        Width = 430
      end
      object LkpCmbBxMunicipio: TcxLookupComboBox
        Left = 8
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        Properties.KeyFieldNames = 'CID_ID'
        Properties.ListColumns = <
          item
            FieldName = 'CID_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtmDneModulo.DtSrcCidade
        TabOrder = 2
        Width = 606
      end
    end
  end
  inherited GrdConsulta: TcxGrid
    Top = 141
    Width = 728
    Height = 260
    ExplicitTop = 141
    ExplicitWidth = 728
    ExplicitHeight = 260
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'COM_ID'
      object GrdConsultaTblCOM_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'COM_NOME'
        Width = 255
      end
      object GrdConsultaTblCOM_LOCALIZACAO: TcxGridDBColumn
        DataBinding.FieldName = 'COM_LOCALIZACAO'
        Width = 231
      end
      object GrdConsultaTblCID_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'CID_NOME'
        Width = 172
      end
      object GrdConsultaTblUFE_ID: TcxGridDBColumn
        DataBinding.FieldName = 'UFE_ID'
        Width = 31
      end
    end
  end
  inherited BtnSelecionar: TcxButton
    Left = 571
    Top = 408
    ExplicitLeft = 571
    ExplicitTop = 408
  end
  inherited BtnFechar: TcxButton
    Left = 662
    Top = 408
    ExplicitLeft = 662
    ExplicitTop = 408
  end
  inherited BtnNovo: TcxButton
    Top = 408
    Hint = 'Inserir nova comunidade'
    Description = 'Cria um novo registro de comunidade.'
    ExplicitTop = 408
  end
  inherited BtnEditar: TcxButton
    Top = 408
    Hint = 'Editar comunidade selecionada'
    Description = 'Edita a comunidade atualmente selecionada.'
    Visible = False
    ExplicitTop = 408
  end
  inherited BtnVisualizar: TcxButton
    Top = 408
    Hint = 'Visualizar comunidade'
    Description = 'Visualiza a tabela de comunidades.'
    ExplicitTop = 408
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
      '  a.com_id,'
      '  a.com_nome,'
      '  a.com_localizacao,'
      '  a.reg_excluido,'
      '  a.cid_id,'
      '  b.cid_nome,'
      '  b.ufe_id'
      'from'
      
        '  tab_cad_comunidade a left join tab_dne_cidade b on (a.cid_id =' +
        ' b.cid_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))')
    object QryConsultaCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaCOM_NOME: TStringField
      DisplayLabel = 'Nome da comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      Required = True
      Size = 100
    end
    object QryConsultaCOM_LOCALIZACAO: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'COM_LOCALIZACAO'
      Origin = 'COM_LOCALIZACAO'
      Size = 100
    end
    object QryConsultaREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryConsultaCID_ID: TIntegerField
      FieldName = 'CID_ID'
      Origin = 'CID_ID'
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
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_COMUNIDADE'
      '(COM_ID, COM_NOME, COM_LOCALIZACAO, CID_ID, '
      '  REG_EXCLUIDO)'
      
        'VALUES (:NEW_COM_ID, :NEW_COM_NOME, :NEW_COM_LOCALIZACAO, :NEW_C' +
        'ID_ID, '
      '  :NEW_REG_EXCLUIDO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_COMUNIDADE'
      
        'SET COM_ID = :NEW_COM_ID, COM_NOME = :NEW_COM_NOME, COM_LOCALIZA' +
        'CAO = :NEW_COM_LOCALIZACAO, '
      '  CID_ID = :NEW_CID_ID, REG_EXCLUIDO = :NEW_REG_EXCLUIDO'
      'WHERE COM_ID = :OLD_COM_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_COMUNIDADE'
      'WHERE COM_ID = :OLD_COM_ID')
    FetchRowSQL.Strings = (
      
        'SELECT COM_ID, COM_NOME, COM_LOCALIZACAO, CID_ID, REG_EXCLUIDO, ' +
        'REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_COMUNIDADE'
      'WHERE COM_ID = :COM_ID')
  end
end
