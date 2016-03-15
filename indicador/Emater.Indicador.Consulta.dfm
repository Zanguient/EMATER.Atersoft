inherited FrmIndicadorConsulta: TFrmIndicadorConsulta
  Caption = 'Consulta de Registros de Indicadores'
  ClientWidth = 697
  ExplicitWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited LblTitulo: TLabel
    Width = 697
    ExplicitWidth = 697
  end
  inherited GrdConsulta: TcxGrid
    Top = 150
    Width = 697
    Height = 323
    ExplicitTop = 150
    ExplicitWidth = 697
    ExplicitHeight = 323
    inherited GrdConsultaTbl: TcxGridDBTableView
      DataController.KeyFieldNames = 'REG_ID'
      object GrdConsultaTblREG_DATA: TcxGridDBColumn
        DataBinding.FieldName = 'REG_DATA'
        MinWidth = 75
        Options.HorzSizing = False
        Width = 75
      end
      object GrdConsultaTblIND_DESCRICAO: TcxGridDBColumn
        DataBinding.FieldName = 'IND_DESCRICAO'
        Width = 292
      end
      object GrdConsultaTblIND_CHAVE: TcxGridDBColumn
        DataBinding.FieldName = 'IND_CHAVE'
        Width = 309
      end
      object GrdConsultaTblUND_NOME: TcxGridDBColumn
        DataBinding.FieldName = 'UND_NOME'
        Width = 846
      end
    end
  end
  inherited PnlMain: TPanel
    Width = 697
    Height = 95
    ExplicitLeft = 8
    ExplicitWidth = 697
    ExplicitHeight = 95
    inherited LblValor: TLabel
      Width = 73
      Caption = 'Palavra-chave:'
      ExplicitWidth = 73
    end
    inherited LblOpcao: TLabel
      Left = 162
      Anchors = [akTop, akRight]
      ExplicitLeft = 264
    end
    object Label8: TLabel [2]
      Left = 343
      Top = 8
      Width = 97
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'Data de registro de:'
      Transparent = True
    end
    object Label9: TLabel [3]
      Left = 463
      Top = 8
      Width = 21
      Height = 13
      Anchors = [akTop, akRight]
      Caption = 'At'#233':'
      Transparent = True
      ExplicitLeft = 565
    end
    object Label2: TLabel [4]
      Left = 8
      Top = 48
      Width = 48
      Height = 13
      Caption = 'Escrit'#243'rio:'
      Transparent = True
    end
    object Label1: TLabel [5]
      Left = 264
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Indicador:'
      Transparent = True
    end
    inherited ImgCmbBxOpcao: TcxImageComboBox
      Left = 160
      Anchors = [akTop, akRight]
      EditValue = 2
      ExplicitLeft = 160
    end
    inherited BtnConsultar: TcxButton
      Left = 606
      Top = 28
      Anchors = [akRight, akBottom]
      TabOrder = 6
      OnClick = BtnConsultarClick
      ExplicitLeft = 606
      ExplicitTop = 28
    end
    inherited BtnLimparParametros: TcxButton
      Left = 606
      Top = 60
      Anchors = [akRight, akBottom]
      TabOrder = 7
      ExplicitLeft = 606
      ExplicitTop = 60
    end
    inherited EdtValor: TcxTextEdit
      Anchors = [akLeft, akTop, akRight]
      ExplicitWidth = 147
      Width = 147
    end
    object EdtDataInicio: TcxDateEdit
      Left = 343
      Top = 24
      Anchors = [akTop, akRight]
      TabOrder = 2
      Width = 113
    end
    object EdtDataFim: TcxDateEdit
      Left = 463
      Top = 24
      Anchors = [akTop, akRight]
      TabOrder = 3
      Width = 121
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
      TabOrder = 4
      Width = 249
    end
    object LkpCmbBxIndicador: TcxLookupComboBox
      Left = 264
      Top = 64
      Anchors = [akLeft, akTop, akRight]
      Properties.KeyFieldNames = 'IND_ID'
      Properties.ListColumns = <
        item
          FieldName = 'IND_DESCRICAO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DtSrcIndicador
      TabOrder = 5
      Width = 323
    end
  end
  inherited BarDockControl: TdxBarDockControl
    Width = 697
    ExplicitWidth = 697
  end
  inherited BarManager: TdxBarManager
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BtnExcluir: TdxBarButton
      Hint = 'Excluir'
    end
  end
  inherited QryConsulta: TFDQuery
    SQL.Strings = (
      ''
      'select'
      '  a.reg_id,'
      '  a.reg_data,'
      '  a.ind_id,'
      '  a.und_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.und_nome,'
      '  c.ind_descricao,'
      '  c.ind_chave'
      'from'
      
        '  tab_ind_registro  a join tab_sis_unidade b on (a.und_id = b.un' +
        'd_id) join'
      '  tab_ind_indicador c on (a.ind_id = c.ind_id)'
      'where'
      '  (a.reg_excluido = 0)')
    object QryConsultaREG_ID: TLargeintField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryConsultaREG_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'REG_DATA'
      Origin = 'REG_DATA'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryConsultaIND_ID: TIntegerField
      FieldName = 'IND_ID'
      Origin = 'IND_ID'
      Required = True
    end
    object QryConsultaUND_ID: TIntegerField
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
      Required = True
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
    object QryConsultaUND_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escrit'#243'rio'
      FieldName = 'UND_NOME'
      Origin = 'UND_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryConsultaIND_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Indicador'
      FieldName = 'IND_DESCRICAO'
      Origin = 'IND_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QryConsultaIND_CHAVE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Palavras-chave do indicador'
      FieldName = 'IND_CHAVE'
      Origin = 'IND_CHAVE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
  inherited UpdtConsulta: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_IND_REGISTRO'
      '(REG_ID, REG_DATA, IND_ID, UND_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_REG_ID, :NEW_REG_DATA, :NEW_IND_ID, :NEW_UND_ID, :N' +
        'EW_REG_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_IND_REGISTRO'
      
        'SET REG_ID = :NEW_REG_ID, REG_DATA = :NEW_REG_DATA, IND_ID = :NE' +
        'W_IND_ID, '
      '  UND_ID = :NEW_UND_ID, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE REG_ID = :OLD_REG_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_IND_REGISTRO'
      'WHERE REG_ID = :OLD_REG_ID')
    FetchRowSQL.Strings = (
      
        'SELECT REG_ID, REG_DATA, IND_ID, UND_ID, REG_EXCLUIDO, REG_REPLI' +
        'CADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_IND_REGISTRO'
      'WHERE REG_ID = :REG_ID')
  end
  object QryIndicador: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.ind_id,'
      '  a.ind_descricao'
      'from'
      '  tab_ind_indicador a'
      'order by'
      '  a.ind_descricao')
    Left = 80
    Top = 240
    object QryIndicadorIND_ID: TIntegerField
      FieldName = 'IND_ID'
      Origin = 'IND_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryIndicadorIND_DESCRICAO: TStringField
      FieldName = 'IND_DESCRICAO'
      Origin = 'IND_DESCRICAO'
      Required = True
      Size = 150
    end
  end
  object DtSrcIndicador: TDataSource
    DataSet = QryIndicador
    Left = 112
    Top = 240
  end
end
