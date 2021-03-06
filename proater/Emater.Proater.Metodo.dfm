inherited FrmProaterMetodo: TFrmProaterMetodo
  ActiveControl = DbLkpCmbBxMetodo
  Caption = 'Metodologia de ATER'
  ClientHeight = 328
  ClientWidth = 387
  OnShow = FormShow
  ExplicitLeft = 8
  ExplicitTop = 8
  ExplicitWidth = 393
  ExplicitHeight = 357
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 371
    Height = 282
    ExplicitWidth = 371
    ExplicitHeight = 282
    ClientRectBottom = 280
    ClientRectRight = 369
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 367
      ExplicitHeight = 252
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 78
        Height = 13
        Caption = 'M'#233'todo/t'#233'cnica:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 129
        Width = 60
        Height = 13
        Caption = 'Quantidade:'
        FocusControl = DbEdtQtde
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 81
        Width = 23
        Height = 13
        Caption = 'Ano:'
        FocusControl = DbEdtAno
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 105
        Width = 23
        Height = 13
        Caption = 'M'#234's:'
        FocusControl = DbEdtAno
        Transparent = True
      end
      object DbLkpCmbBxMetodo: TcxDBLookupComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'MET_ID'
        DataBinding.DataSource = DtSrcSubMetodo
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'MET_ID'
        Properties.ListColumns = <
          item
            FieldName = 'MET_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtmProaterModulo.DtSrcMetodologia
        Properties.PostPopupValueOnTab = True
        TabOrder = 0
        Width = 353
      end
      object DbEdtQtde: TcxDBTextEdit
        Left = 88
        Top = 125
        DataBinding.DataField = 'MET_QUANTIDADE'
        DataBinding.DataSource = DtSrcSubMetodo
        TabOrder = 3
        Width = 121
      end
      object DbEdtAno: TcxDBTextEdit
        Left = 88
        Top = 77
        DataBinding.DataField = 'MET_ANO'
        DataBinding.DataSource = DtSrcSubMetodo
        TabOrder = 1
        Width = 121
      end
      object DbCmbBxMes: TcxDBComboBox
        Left = 88
        Top = 101
        DataBinding.DataField = 'MET_MES'
        DataBinding.DataSource = DtSrcSubMetodo
        Properties.Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
        TabOrder = 2
        Width = 121
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 223
    Top = 296
    ExplicitLeft = 223
    ExplicitTop = 296
  end
  inherited BtnCancelar: TcxButton
    Left = 304
    Top = 296
    ExplicitLeft = 304
    ExplicitTop = 296
  end
  object DtSrcSubMetodo: TDataSource
    DataSet = FrmProaterPrincipal.QrySubMetodo
    Left = 48
    Top = 176
  end
end
