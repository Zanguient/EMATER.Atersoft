inherited FrmProaterComunidade: TFrmProaterComunidade
  Left = 434
  Top = 260
  ActiveControl = DbLkpCmbBxComunidade
  Caption = 'Benefici'#225'rios e UPF por Comunidade'
  ClientHeight = 355
  ClientWidth = 496
  OnShow = FormShow
  ExplicitLeft = 434
  ExplicitTop = 260
  ExplicitWidth = 512
  ExplicitHeight = 394
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 480
    Height = 309
    ExplicitWidth = 480
    ExplicitHeight = 309
    ClientRectBottom = 307
    ClientRectRight = 478
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      ExplicitLeft = 34
      ExplicitTop = -20
      ExplicitWidth = 557
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 63
        Height = 13
        Caption = 'Comunidade:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 72
        Width = 58
        Height = 13
        Caption = 'Localiza'#231#227'o:'
        FocusControl = DbEdtLocalizacao
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 152
        Width = 97
        Height = 13
        Caption = 'Quantidade de UPF:'
        FocusControl = DbEdtQtdeBeneficiario
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 129
        Width = 138
        Height = 13
        Caption = 'Quantidade de benefici'#225'rios:'
        FocusControl = DbEdtQtdeBeneficiario
        Transparent = True
      end
      object DbLkpCmbBxComunidade: TcxDBLookupComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'COM_ID'
        DataBinding.DataSource = DtSrcComunidade
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'COM_ID'
        Properties.ListColumns = <
          item
            FieldName = 'COM_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.PostPopupValueOnTab = True
        Properties.OnEditValueChanged = DbLkpCmbBxComunidadePropertiesEditValueChanged
        TabOrder = 0
        Width = 457
      end
      object DbEdtLocalizacao: TcxDBTextEdit
        Left = 8
        Top = 88
        DataBinding.DataField = 'PRC_LOCALIZACAO'
        DataBinding.DataSource = DtSrcComunidade
        TabOrder = 1
        Width = 457
      end
      object DbEdtQtdeBeneficiario: TcxDBTextEdit
        Left = 168
        Top = 125
        DataBinding.DataField = 'PRC_QTDE_BENEFICIARIO'
        DataBinding.DataSource = DtSrcComunidade
        TabOrder = 2
        Width = 97
      end
      object DbEdtQtdeUPF: TcxDBTextEdit
        Left = 168
        Top = 149
        DataBinding.DataField = 'PRC_QTDE_UPF'
        DataBinding.DataSource = DtSrcComunidade
        TabOrder = 3
        Width = 97
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 332
    Top = 323
    TabOrder = 2
    ExplicitLeft = 332
    ExplicitTop = 323
  end
  inherited BtnCancelar: TcxButton
    Left = 413
    Top = 323
    TabOrder = 3
    ExplicitLeft = 413
    ExplicitTop = 323
  end
  object BtnPesquisar: TcxButton
    Left = 8
    Top = 323
    Width = 137
    Height = 25
    Caption = '&Pesquisar comunidade...'
    TabOrder = 1
    OnClick = BtnPesquisarClick
  end
  object DtSrcComunidade: TDataSource
    Left = 216
    Top = 224
  end
end
