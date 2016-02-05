inherited FrmProaterOrcamento: TFrmProaterOrcamento
  Left = 597
  Top = 190
  ActiveControl = DbEdtFonte
  Caption = 'Previs'#227'o Or'#231'ament'#225'ria'
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
        Width = 123
        Height = 13
        Caption = 'Fonte (0101/0260/0261):'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 124
        Width = 23
        Height = 13
        Caption = 'Ano:'
        FocusControl = DbEdtAno
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 148
        Width = 123
        Height = 13
        Caption = 'Previs'#227'o or'#231'amento (R$):'
        FocusControl = DbEdtValor
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 72
        Width = 216
        Height = 13
        Caption = 'Elemento de despesa (MC/PASS/STPF/STPJ):'
        Transparent = True
      end
      object DbEdtAno: TcxDBTextEdit
        Left = 144
        Top = 120
        DataBinding.DataField = 'ORC_ANO'
        DataBinding.DataSource = DtSrcSubOrcamento
        TabOrder = 2
        Width = 81
      end
      object DbEdtValor: TcxDBTextEdit
        Left = 144
        Top = 144
        DataBinding.DataField = 'ORC_VALOR'
        DataBinding.DataSource = DtSrcSubOrcamento
        TabOrder = 3
        Width = 81
      end
      object DbEdtFonte: TcxDBTextEdit
        Left = 8
        Top = 48
        DataBinding.DataField = 'ORC_FONTE'
        DataBinding.DataSource = DtSrcSubOrcamento
        Properties.AutoSelect = False
        TabOrder = 0
        Width = 401
      end
      object DbEdtElemento: TcxDBTextEdit
        Left = 8
        Top = 88
        DataBinding.DataField = 'ORC_ELEMENTO'
        DataBinding.DataSource = DtSrcSubOrcamento
        Properties.AutoSelect = False
        TabOrder = 1
        Width = 401
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
  object DtSrcSubOrcamento: TDataSource
    DataSet = FrmProaterPrincipal.QrySubOrcamento
    Left = 192
    Top = 232
  end
end
