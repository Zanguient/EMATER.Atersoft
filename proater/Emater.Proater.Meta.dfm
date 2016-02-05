inherited FrmProaterMeta: TFrmProaterMeta
  Left = 597
  Top = 190
  ActiveControl = DbMemoDescricao
  Caption = 'Metas do Subprojeto'
  ClientHeight = 422
  ClientWidth = 437
  OnShow = FormShow
  ExplicitLeft = 597
  ExplicitTop = 190
  ExplicitWidth = 453
  ExplicitHeight = 461
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 421
    Height = 376
    ExplicitWidth = 421
    ExplicitHeight = 376
    ClientRectBottom = 374
    ClientRectRight = 419
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      ExplicitWidth = 417
      ExplicitHeight = 346
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 92
        Height = 13
        Caption = 'Descri'#231#227'o da meta:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 164
        Width = 60
        Height = 13
        Caption = 'Quantidade:'
        FocusControl = DbEdtQtde
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 188
        Width = 95
        Height = 13
        Caption = 'Unidade de medida:'
        FocusControl = DbEdtUnidade
        Transparent = True
      end
      object DbEdtQtde: TcxDBTextEdit
        Left = 144
        Top = 160
        DataBinding.DataField = 'MET_QUANTIDADE'
        DataBinding.DataSource = DtSrcSubMeta
        TabOrder = 1
        Width = 81
      end
      object DbMemoDescricao: TcxDBMemo
        Left = 8
        Top = 48
        DataBinding.DataField = 'MET_DESCRICAO'
        DataBinding.DataSource = DtSrcSubMeta
        Properties.ScrollBars = ssVertical
        TabOrder = 0
        Height = 105
        Width = 401
      end
      object DbEdtUnidade: TcxDBTextEdit
        Left = 144
        Top = 184
        DataBinding.DataField = 'MET_UNIDADE'
        DataBinding.DataSource = DtSrcSubMeta
        TabOrder = 2
        Width = 81
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 273
    Top = 390
    ExplicitLeft = 273
    ExplicitTop = 390
  end
  inherited BtnCancelar: TcxButton
    Left = 354
    Top = 390
    ExplicitLeft = 354
    ExplicitTop = 390
  end
  object DtSrcSubMeta: TDataSource
    DataSet = FrmProaterPrincipal.QrySubMeta
    Left = 96
    Top = 144
  end
end
