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
  object DtStUnidade: TpFIBDataSet
    RefreshSQL.Strings = (
      'select'
      '  cast(a.und_id as varchar(10)) as und_id,'
      '  (b.unt_descricao || '#39': '#39' || a.und_nome) as und_nome_descricao'
      'from'
      
        '  tab_sis_unidade a left join tab_sis_unidade_tipo b on (a.unt_i' +
        'd = b.unt_id)')
    SelectSQL.Strings = (
      'select'
      '  cast(a.und_id as varchar(10)) as und_id,'
      '  (b.unt_descricao || '#39': '#39' || a.und_nome) as und_nome_descricao'
      'from'
      
        '  tab_sis_unidade a left join tab_sis_unidade_tipo b on (a.unt_i' +
        'd = b.unt_id)'
      'order by'
      '  und_nome_descricao')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 144
    Top = 208
    object DtStUnidadeUND_ID: TFIBStringField
      FieldName = 'UND_ID'
      Size = 10
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStUnidadeUND_NOME_DESCRICAO: TFIBStringField
      FieldName = 'UND_NOME_DESCRICAO'
      Size = 152
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object DtSrcUnidade: TDataSource
    DataSet = DtStUnidade
    Left = 177
    Top = 208
  end
  object DtStParametro: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_SIS_PARAMETRO'
      'SET '
      '    PAR_VALOR = :PAR_VALOR'
      'WHERE'
      '    PAR_ID = :OLD_PAR_ID'
      '    ')
    SelectSQL.Strings = (
      'select a.par_id, a.par_descricao, a.par_nome, a.par_valor'
      'from tab_sis_parametro a'
      'where (a.par_nome = '#39'UNIDADE_LOCAL'#39')')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 144
    Top = 176
    object DtStParametroPAR_ID: TFIBIntegerField
      FieldName = 'PAR_ID'
    end
    object DtStParametroPAR_DESCRICAO: TFIBStringField
      FieldName = 'PAR_DESCRICAO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStParametroPAR_NOME: TFIBStringField
      FieldName = 'PAR_NOME'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStParametroPAR_VALOR: TFIBStringField
      FieldName = 'PAR_VALOR'
      Size = 500
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object DtSrcParametro: TDataSource
    DataSet = DtStParametro
    Left = 177
    Top = 176
  end
end
