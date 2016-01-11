inherited FrmProaterPotencial: TFrmProaterPotencial
  Left = 419
  Top = 221
  Caption = 'Problemas e Potencialidades'
  ClientHeight = 455
  ClientWidth = 471
  OnShow = FormShow
  ExplicitLeft = 419
  ExplicitTop = 221
  ExplicitWidth = 487
  ExplicitHeight = 494
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 455
    Height = 409
    ClientRectBottom = 407
    ClientRectRight = 453
    inherited TbShtPrincipal: TcxTabSheet
      object Label22: TLabel
        Left = 8
        Top = 32
        Width = 49
        Height = 13
        Caption = 'Contexto:'
        Transparent = True
      end
      object Label1: TLabel
        Left = 8
        Top = 72
        Width = 78
        Height = 13
        Caption = 'Potencialidades:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 224
        Width = 53
        Height = 13
        Caption = 'Problemas:'
        Transparent = True
      end
      object DbLkpCmbBxContexto: TcxDBLookupComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'CTX_ID'
        DataBinding.DataSource = DtSrcPotencial
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'CTX_ID'
        Properties.ListColumns = <
          item
            FieldName = 'CTX_TIPO_CONTEXTO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtmProaterModulo.DtSrcContexto
        Properties.PostPopupValueOnTab = True
        TabOrder = 0
        Width = 433
      end
      object DbMemoPotencialidade: TcxDBMemo
        Left = 8
        Top = 88
        DataBinding.DataField = 'PRP_POTENCIALIDADE'
        DataBinding.DataSource = DtSrcPotencial
        Properties.ScrollBars = ssVertical
        TabOrder = 1
        Height = 129
        Width = 433
      end
      object DbMemoProblema: TcxDBMemo
        Left = 8
        Top = 240
        DataBinding.DataField = 'PRP_PROBLEMA'
        DataBinding.DataSource = DtSrcPotencial
        Properties.ScrollBars = ssVertical
        TabOrder = 2
        Height = 129
        Width = 433
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 307
    Top = 423
  end
  inherited BtnCancelar: TcxButton
    Left = 388
    Top = 423
  end
  object DtSrcPotencial: TDataSource
    DataSet = FrmProaterPrincipal.QryPotencial
    Left = 208
    Top = 160
  end
end
