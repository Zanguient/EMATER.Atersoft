inherited FrmProaterMobiliario: TFrmProaterMobiliario
  Left = 433
  Top = 175
  ActiveControl = DbMemoDescricao
  Caption = 'Mobili'#225'rio'
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
      object Label1: TLabel
        Left = 8
        Top = 32
        Width = 50
        Height = 13
        Caption = 'Descri'#231#227'o:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 192
        Width = 114
        Height = 13
        Caption = 'Quantidade necess'#225'ria:'
        FocusControl = DbEdtQtdeNecessaria
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 168
        Width = 108
        Height = 13
        Caption = 'Quantidade existente:'
        FocusControl = DbEdtQtdeExistente
        Transparent = True
      end
      object DbMemoDescricao: TcxDBMemo
        Left = 8
        Top = 48
        DataBinding.DataField = 'PRM_DESCRICAO'
        DataBinding.DataSource = DtSrcMobiliario
        Properties.ScrollBars = ssVertical
        TabOrder = 0
        Height = 105
        Width = 425
      end
      object DbEdtQtdeNecessaria: TcxDBTextEdit
        Left = 168
        Top = 188
        DataBinding.DataField = 'PRM_QTDE_NECESSARIA'
        DataBinding.DataSource = DtSrcMobiliario
        TabOrder = 1
        Width = 81
      end
      object DbEdtQtdeExistente: TcxDBTextEdit
        Left = 168
        Top = 164
        DataBinding.DataField = 'PRM_QTDE_EXISTENTE'
        DataBinding.DataSource = DtSrcMobiliario
        TabOrder = 2
        Width = 81
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
  object DtSrcMobiliario: TDataSource
    DataSet = FrmProaterPrincipal.QryMobiliario
    Left = 216
    Top = 144
  end
end
