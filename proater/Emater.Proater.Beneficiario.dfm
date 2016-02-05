inherited FrmProaterBeneficiario: TFrmProaterBeneficiario
  ActiveControl = DbLkpCmbBxComunidade
  Caption = 'Benefici'#225'rios de ATER'
  ClientHeight = 312
  ClientWidth = 365
  OnShow = FormShow
  ExplicitWidth = 381
  ExplicitHeight = 351
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 349
    Height = 266
    ExplicitWidth = 288
    ExplicitHeight = 266
    ClientRectBottom = 264
    ClientRectRight = 347
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      ExplicitLeft = 0
      ExplicitTop = 24
      ExplicitWidth = 345
      ExplicitHeight = 330
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 63
        Height = 13
        Caption = 'Comunidade:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 185
        Width = 138
        Height = 13
        Caption = 'Quantidade de benefici'#225'rios:'
        FocusControl = DbEdtQtde
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 161
        Width = 23
        Height = 13
        Caption = 'Ano:'
        FocusControl = DbEdtAno
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 72
        Width = 51
        Height = 13
        Caption = 'Categoria:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 8
        Top = 112
        Width = 98
        Height = 13
        Caption = 'Atividade produtiva:'
        Transparent = True
      end
      object DbLkpCmbBxComunidade: TcxDBLookupComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'COM_ID'
        DataBinding.DataSource = DtSrcSubComunidade
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'COM_ID'
        Properties.ListColumns = <
          item
            FieldName = 'COM_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.PostPopupValueOnTab = True
        TabOrder = 0
        Width = 329
      end
      object DbEdtQtde: TcxDBTextEdit
        Left = 160
        Top = 181
        DataBinding.DataField = 'PLC_QUANTIDADE'
        DataBinding.DataSource = DtSrcSubComunidade
        TabOrder = 4
        Width = 81
      end
      object DbEdtAno: TcxDBTextEdit
        Left = 160
        Top = 157
        DataBinding.DataField = 'PLC_ANO'
        DataBinding.DataSource = DtSrcSubComunidade
        TabOrder = 3
        Width = 81
      end
      object DbLkpCmbBxCategoria: TcxDBLookupComboBox
        Left = 7
        Top = 88
        DataBinding.DataField = 'CAT_ID'
        DataBinding.DataSource = DtSrcSubComunidade
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CAT_ID'
        Properties.ListColumns = <
          item
            FieldName = 'CAT_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.PostPopupValueOnTab = True
        TabOrder = 1
        Width = 330
      end
      object DbLkpCmbBxProduto: TcxDBLookupComboBox
        Left = 7
        Top = 128
        DataBinding.DataField = 'PRD_ID'
        DataBinding.DataSource = DtSrcSubComunidade
        Properties.DropDownRows = 16
        Properties.DropDownWidth = 500
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'PRD_ID'
        Properties.ListColumns = <
          item
            FieldName = 'PRD_DESCRICAO'
          end
          item
            FieldName = 'DIV_DESCRICAO'
          end
          item
            FieldName = 'GRP_DESCRICAO'
          end
          item
            FieldName = 'CLS_DESCRICAO'
          end
          item
            FieldName = 'UNI_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.PostPopupValueOnTab = True
        TabOrder = 2
        Width = 330
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 201
    Top = 280
    ExplicitLeft = 140
    ExplicitTop = 280
  end
  inherited BtnCancelar: TcxButton
    Left = 282
    Top = 280
    ExplicitLeft = 221
    ExplicitTop = 280
  end
  object DtSrcSubComunidade: TDataSource
    DataSet = FrmProaterPrincipal.QrySubComunidade
    Left = 48
    Top = 176
  end
end
