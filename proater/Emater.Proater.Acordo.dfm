inherited FrmProaterAcordo: TFrmProaterAcordo
  ActiveControl = DbImgCmbBxTipo
  Caption = 'Acordos, Conv'#234'nios e Parcerias'
  ClientHeight = 558
  ClientWidth = 469
  OnShow = FormShow
  ExplicitLeft = 8
  ExplicitTop = 8
  ExplicitWidth = 475
  ExplicitHeight = 587
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 453
    Height = 512
    ExplicitWidth = 453
    ExplicitHeight = 512
    ClientRectBottom = 510
    ClientRectRight = 451
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 8
        Top = 72
        Width = 50
        Height = 13
        Caption = 'Descri'#231#227'o:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 208
        Width = 45
        Height = 13
        Caption = 'Objetivo:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 32
        Width = 24
        Height = 13
        Caption = 'Tipo:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 176
        Top = 32
        Width = 45
        Height = 13
        Caption = 'Situa'#231#227'o:'
        Transparent = True
      end
      object Label5: TLabel
        Left = 8
        Top = 344
        Width = 28
        Height = 13
        Caption = 'A'#231#227'o:'
        Transparent = True
      end
      object DbMemoDescricao: TcxDBMemo
        Left = 8
        Top = 88
        DataBinding.DataField = 'PRA_DESCRICAO'
        DataBinding.DataSource = DtSrcAcordo
        Properties.ScrollBars = ssVertical
        TabOrder = 2
        Height = 113
        Width = 433
      end
      object DbMemoObjetivo: TcxDBMemo
        Left = 8
        Top = 224
        DataBinding.DataField = 'PRA_OBJETIVO'
        DataBinding.DataSource = DtSrcAcordo
        Properties.ScrollBars = ssVertical
        TabOrder = 3
        Height = 113
        Width = 433
      end
      object DbImgCmbBxTipo: TcxDBImageComboBox
        Left = 8
        Top = 48
        DataBinding.DataField = 'PRA_TIPO'
        DataBinding.DataSource = DtSrcAcordo
        Properties.Items = <
          item
            Description = 'Acordo'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Conv'#234'nio'
            Value = 2
          end
          item
            Description = 'Parceria'
            Value = 3
          end>
        TabOrder = 0
        Width = 161
      end
      object DbImgCmbBxSituacao: TcxDBImageComboBox
        Left = 176
        Top = 48
        DataBinding.DataField = 'PRA_SITUACAO'
        DataBinding.DataSource = DtSrcAcordo
        Properties.Items = <
          item
            Description = 'Previsto'
            ImageIndex = 0
            Value = 1
          end
          item
            Description = 'Em andamento'
            Value = 2
          end>
        TabOrder = 1
        Width = 161
      end
      object DbMemoAcao: TcxDBMemo
        Left = 8
        Top = 360
        DataBinding.DataField = 'PRA_ACAO'
        DataBinding.DataSource = DtSrcAcordo
        Properties.ScrollBars = ssVertical
        TabOrder = 4
        Height = 113
        Width = 433
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 305
    Top = 526
    ExplicitLeft = 305
    ExplicitTop = 526
  end
  inherited BtnCancelar: TcxButton
    Left = 386
    Top = 526
    ExplicitLeft = 386
    ExplicitTop = 526
  end
  object DtSrcAcordo: TDataSource
    DataSet = FrmProaterPrincipal.QryAcordo
    Left = 208
    Top = 160
  end
end
