inherited FrmProaterVeiculo: TFrmProaterVeiculo
  Left = 433
  Top = 175
  ActiveControl = DbLkpCmbBxVeiculoTipo
  Caption = 'Ve'#237'culos'
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
      object Label1: TLabel
        Left = 8
        Top = 72
        Width = 101
        Height = 13
        Caption = 'Descri'#231#227'o do ve'#237'culo:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 232
        Width = 114
        Height = 13
        Caption = 'Quantidade necess'#225'ria:'
        FocusControl = DbEdtQtdeNecessaria
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 208
        Width = 108
        Height = 13
        Caption = 'Quantidade existente:'
        FocusControl = DbEdtQtdeExistente
        Transparent = True
      end
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 75
        Height = 13
        Caption = 'Tipo de ve'#237'culo:'
        Transparent = True
      end
      object DbMemoDescricao: TcxDBMemo
        Left = 8
        Top = 88
        DataBinding.DataField = 'VEI_DESCRICAO'
        DataBinding.DataSource = DtSrcVeiculo
        Properties.ScrollBars = ssVertical
        TabOrder = 1
        Height = 105
        Width = 425
      end
      object DbEdtQtdeNecessaria: TcxDBTextEdit
        Left = 168
        Top = 228
        DataBinding.DataField = 'VEI_QTDE_NECESSARIA'
        DataBinding.DataSource = DtSrcVeiculo
        TabOrder = 3
        Width = 81
      end
      object DbEdtQtdeExistente: TcxDBTextEdit
        Left = 168
        Top = 204
        DataBinding.DataField = 'VEI_QTDE_EXISTENTE'
        DataBinding.DataSource = DtSrcVeiculo
        TabOrder = 2
        Width = 81
      end
      object DbLkpCmbBxVeiculoTipo: TcxDBLookupComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'VTP_ID'
        DataBinding.DataSource = DtSrcVeiculo
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VTP_ID'
        Properties.ListColumns = <
          item
            FieldName = 'VTP_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtmProaterModulo.DtSrcVeiculoTipo
        Properties.PostPopupValueOnTab = True
        TabOrder = 0
        Width = 425
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
  object DtSrcVeiculo: TDataSource
    DataSet = FrmProaterPrincipal.QryVeiculo
    Left = 216
    Top = 144
  end
end
