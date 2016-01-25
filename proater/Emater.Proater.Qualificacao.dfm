inherited FrmProaterQualificacao: TFrmProaterQualificacao
  Left = 433
  Top = 175
  ActiveControl = DbMemoDescricao
  Caption = 'Necessidade de Qualifica'#231#227'o'
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
        Width = 47
        Height = 13
        Caption = 'Tem'#225'tica:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 208
        Width = 98
        Height = 13
        Caption = 'N'#250'mero de t'#233'cnicos:'
        FocusControl = DbEdtQtdeExistente
        Transparent = True
      end
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 62
        Height = 13
        Caption = 'Metodologia:'
        Transparent = True
      end
      object DbMemoDescricao: TcxDBMemo
        Left = 8
        Top = 88
        DataBinding.DataField = 'QUA_TEMATICA'
        DataBinding.DataSource = DtSrcQualificacao
        Properties.ScrollBars = ssVertical
        TabOrder = 1
        Height = 105
        Width = 425
      end
      object DbEdtQtdeExistente: TcxDBTextEdit
        Left = 168
        Top = 204
        DataBinding.DataField = 'QUA_QTDE_TECNICO'
        DataBinding.DataSource = DtSrcQualificacao
        TabOrder = 2
        Width = 81
      end
      object DbLkpCmbBxMetodologia: TcxDBLookupComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'MET_ID'
        DataBinding.DataSource = DtSrcQualificacao
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
  object DtSrcQualificacao: TDataSource
    DataSet = FrmProaterPrincipal.QryQualificacao
    Left = 216
    Top = 144
  end
end
