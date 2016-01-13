inherited FrmProaterDemanda: TFrmProaterDemanda
  ActiveControl = DbLkpCmbBxCargo
  Caption = 'Demanda de Pessoal'
  ClientHeight = 312
  ClientWidth = 304
  OnShow = FormShow
  ExplicitWidth = 320
  ExplicitHeight = 351
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 288
    Height = 266
    ExplicitWidth = 288
    ExplicitHeight = 266
    ClientRectBottom = 264
    ClientRectRight = 286
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      ExplicitLeft = 0
      ExplicitTop = 24
      ExplicitWidth = 345
      ExplicitHeight = 330
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Cargo:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 81
        Width = 114
        Height = 13
        Caption = 'Quantidade necess'#225'ria:'
        FocusControl = DbEdtQtdeBeneficiario
        Transparent = True
      end
      object DbLkpCmbBxCargo: TcxDBLookupComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'CRG_ID'
        DataBinding.DataSource = DtSrcCargo
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CRG_ID'
        Properties.ListColumns = <
          item
            FieldName = 'CRG_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.PostPopupValueOnTab = True
        TabOrder = 0
        Width = 265
      end
      object DbEdtQtdeBeneficiario: TcxDBTextEdit
        Left = 192
        Top = 77
        DataBinding.DataField = 'DEM_QUANTIDADE'
        DataBinding.DataSource = DtSrcCargo
        TabOrder = 1
        Width = 81
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 140
    Top = 280
    ExplicitLeft = 140
    ExplicitTop = 280
  end
  inherited BtnCancelar: TcxButton
    Left = 221
    Top = 280
    ExplicitLeft = 221
    ExplicitTop = 280
  end
  object DtSrcCargo: TDataSource
    DataSet = FrmProaterPrincipal.QryDemanda
    Left = 48
    Top = 176
  end
end
