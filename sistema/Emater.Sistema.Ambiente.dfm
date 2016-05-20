inherited FrmSistemaAmbiente: TFrmSistemaAmbiente
  Left = 381
  Top = 158
  ActiveControl = DbLkpCmbBxUnidade
  Caption = 'Configura'#231#245'es do Ambiente'
  ClientWidth = 372
  OnShow = FormShow
  ExplicitLeft = 381
  ExplicitTop = 158
  ExplicitWidth = 388
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 356
    ExplicitWidth = 356
    ClientRectRight = 354
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Ambiente'
      object Label5: TLabel
        Left = 8
        Top = 24
        Width = 191
        Height = 13
        Caption = 'Escrit'#243'rio local/regional deste ambiente:'
        Transparent = True
      end
      object DbLkpCmbBxUnidade: TcxDBLookupComboBox
        Left = 8
        Top = 40
        DataBinding.DataField = 'PAR_VALOR'
        DataBinding.DataSource = DtSrcParametro
        Properties.DropDownRows = 16
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'UND_ID'
        Properties.ListColumns = <
          item
            FieldName = 'UND_NOME_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtSrcUnidade
        Properties.PostPopupValueOnTab = True
        TabOrder = 0
        Width = 337
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 208
    ModalResult = 0
    OnClick = BtnOKClick
    ExplicitLeft = 208
  end
  inherited BtnCancelar: TcxButton
    Left = 289
    ModalResult = 0
    OnClick = BtnCancelarClick
    ExplicitLeft = 289
  end
  object DtSrcUnidade: TDataSource
    DataSet = QryUnidade
    Left = 177
    Top = 208
  end
  object DtSrcParametro: TDataSource
    Left = 177
    Top = 176
  end
  object QryUnidade: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  cast(a.und_id as varchar(10)) as und_id,'
      
        '  (a.und_nome || '#39' ('#39' || b.unt_descricao || '#39')'#39' ) as und_nome_de' +
        'scricao'
      'from'
      
        '  tab_sis_unidade a left join tab_sis_unidade_tipo b on (a.unt_i' +
        'd = b.unt_id)'
      'order by'
      '  b.unt_id, und_nome_descricao')
    Left = 144
    Top = 208
    object QryUnidadeUND_ID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
      Size = 10
    end
    object QryUnidadeUND_NOME_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UND_NOME_DESCRICAO'
      Origin = 'UND_NOME_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 153
    end
  end
  object QryParametro: TFDQuery
    Active = True
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtParametro
    SQL.Strings = (
      'select a.par_id, a.par_descricao, a.par_nome, a.par_valor'
      'from tab_sis_parametro a'
      'where (a.par_nome = '#39'UNIDADE_LOCAL'#39')')
    Left = 112
    Top = 176
    object QryParametroPAR_ID: TIntegerField
      FieldName = 'PAR_ID'
      Origin = 'PAR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryParametroPAR_DESCRICAO: TStringField
      FieldName = 'PAR_DESCRICAO'
      Origin = 'PAR_DESCRICAO'
      Size = 100
    end
    object QryParametroPAR_NOME: TStringField
      FieldName = 'PAR_NOME'
      Origin = 'PAR_NOME'
      Required = True
      Size = 50
    end
    object QryParametroPAR_VALOR: TStringField
      FieldName = 'PAR_VALOR'
      Origin = 'PAR_VALOR'
      Size = 500
    end
  end
  object UpdtParametro: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_SIS_PARAMETRO'
      '(PAR_ID, PAR_DESCRICAO, PAR_NOME, PAR_VALOR)'
      
        'VALUES (:NEW_PAR_ID, :NEW_PAR_DESCRICAO, :NEW_PAR_NOME, :NEW_PAR' +
        '_VALOR)')
    ModifySQL.Strings = (
      'UPDATE TAB_SIS_PARAMETRO'
      
        'SET PAR_ID = :NEW_PAR_ID, PAR_DESCRICAO = :NEW_PAR_DESCRICAO, PA' +
        'R_NOME = :NEW_PAR_NOME, '
      '  PAR_VALOR = :NEW_PAR_VALOR'
      'WHERE PAR_ID = :OLD_PAR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_SIS_PARAMETRO'
      'WHERE PAR_ID = :OLD_PAR_ID')
    FetchRowSQL.Strings = (
      'SELECT PAR_ID, PAR_DESCRICAO, PAR_NOME, PAR_VALOR'
      'FROM TAB_SIS_PARAMETRO'
      'WHERE PAR_ID = :PAR_ID')
    Left = 144
    Top = 176
  end
end
