inherited FrmProaterCusto: TFrmProaterCusto
  Left = 433
  Top = 175
  ActiveControl = DbLkpCmbBxCustoTipo
  Caption = 'Despesas de Custeio'
  ClientHeight = 420
  ClientWidth = 461
  OnShow = FormShow
  ExplicitLeft = 433
  ExplicitTop = 175
  ExplicitWidth = 477
  ExplicitHeight = 459
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 445
    Height = 374
    ExplicitWidth = 445
    ExplicitHeight = 374
    ClientRectBottom = 372
    ClientRectRight = 443
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      ExplicitWidth = 441
      ExplicitHeight = 344
      object Label3: TLabel
        Left = 8
        Top = 88
        Width = 222
        Height = 13
        Caption = 'Valor mensal (R$) (M'#233'dia do 3'#186' quadrimestre):'
        Transparent = True
      end
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 82
        Height = 13
        Caption = 'Tipo de despesa:'
        Transparent = True
      end
      object DbLkpCmbBxCustoTipo: TcxDBLookupComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'PCT_ID'
        DataBinding.DataSource = DtSrcCusto
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PCT_ID'
        Properties.ListColumns = <
          item
            FieldName = 'PCT_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.PostPopupValueOnTab = True
        TabOrder = 0
        Width = 425
      end
      object DbEdtValor: TcxDBCurrencyEdit
        Left = 240
        Top = 84
        DataBinding.DataField = 'PRC_CUSTO'
        DataBinding.DataSource = DtSrcCusto
        TabOrder = 1
        Width = 105
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 297
    Top = 388
    ExplicitLeft = 297
    ExplicitTop = 388
  end
  inherited BtnCancelar: TcxButton
    Left = 378
    Top = 388
    ExplicitLeft = 378
    ExplicitTop = 388
  end
  object DtSrcCusto: TDataSource
    DataSet = FrmProaterPrincipal.QryCusto
    Left = 136
    Top = 176
  end
end
