inherited FrmProaterSubprojeto: TFrmProaterSubprojeto
  Left = 482
  Top = 143
  Caption = 'Subprojeto'
  ClientHeight = 494
  ClientWidth = 565
  OnShow = FormShow
  ExplicitLeft = 482
  ExplicitTop = 143
  ExplicitWidth = 581
  ExplicitHeight = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 549
    Height = 448
    ExplicitWidth = 549
    ExplicitHeight = 448
    ClientRectBottom = 446
    ClientRectRight = 547
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      ExplicitWidth = 545
      ExplicitHeight = 418
      object Label12: TLabel
        Tag = 2
        Left = 8
        Top = 16
        Width = 87
        Height = 13
        Caption = 'Data de cadastro:'
        FocusControl = DbDtEdtSubProjeto
        Transparent = True
      end
      object LblPeriodoPlantio: TLabel
        Left = 120
        Top = 16
        Width = 87
        Height = 13
        Caption = 'Ano/m'#234's de in'#237'cio:'
        Transparent = True
      end
      object LblPeriodoColheita: TLabel
        Left = 232
        Top = 16
        Width = 100
        Height = 13
        Caption = 'Ano/m'#234's de t'#233'rmino:'
        Transparent = True
      end
      object Label1: TLabel
        Tag = 2
        Left = 8
        Top = 96
        Width = 101
        Height = 13
        Caption = 'Nome do subprojeto:'
        Transparent = True
      end
      object Label2: TLabel
        Left = 8
        Top = 56
        Width = 39
        Height = 13
        Caption = 'Projeto:'
        Transparent = True
      end
      object Label3: TLabel
        Left = 8
        Top = 136
        Width = 179
        Height = 13
        Caption = 'T'#233'cnico respons'#225'vel pelo subprojeto:'
        Transparent = True
      end
      object Label4: TLabel
        Left = 280
        Top = 136
        Width = 161
        Height = 13
        Caption = 'T'#233'cnico substituto do subprojeto:'
        Transparent = True
      end
      object DbDtEdtSubProjeto: TcxDBDateEdit
        Left = 8
        Top = 32
        DataBinding.DataField = 'SPR_DATA'
        DataBinding.DataSource = DtSrcSubprojeto
        TabOrder = 0
        Width = 105
      end
      object DbEdtAnoMesInicio: TcxDBMaskEdit
        Left = 120
        Top = 32
        DataBinding.DataField = 'SPR_ANO_MES_INICIO'
        DataBinding.DataSource = DtSrcSubprojeto
        Properties.Alignment.Horz = taLeftJustify
        Properties.AlwaysShowBlanksAndLiterals = True
        Properties.ClearKey = 46
        Properties.EditMask = '!99\/9999;0; '
        Properties.MaxLength = 0
        Properties.ValidationOptions = []
        TabOrder = 1
        Width = 105
      end
      object DbEdtAnoMesFim: TcxDBMaskEdit
        Left = 232
        Top = 32
        DataBinding.DataField = 'SPR_ANO_MES_FIM'
        DataBinding.DataSource = DtSrcSubprojeto
        Properties.Alignment.Horz = taLeftJustify
        Properties.AlwaysShowBlanksAndLiterals = True
        Properties.ClearKey = 46
        Properties.EditMask = '!99\/9999;0; '
        Properties.MaxLength = 0
        Properties.ValidationOptions = []
        TabOrder = 2
        Width = 105
      end
      object DbEdtSubProjeto: TcxDBTextEdit
        Left = 8
        Top = 112
        DataBinding.DataField = 'SPR_NOME'
        DataBinding.DataSource = DtSrcSubprojeto
        TabOrder = 4
        Width = 529
      end
      object DbLkpCmbBxProjeto: TcxDBLookupComboBox
        Left = 8
        Top = 72
        DataBinding.DataField = 'PRJ_ID'
        DataBinding.DataSource = DtSrcSubprojeto
        Properties.KeyFieldNames = 'PRJ_ID'
        Properties.ListColumns = <
          item
            FieldName = 'PRJ_NOME'
          end
          item
            FieldName = 'PRG_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtSrcProjeto
        TabOrder = 3
        Width = 529
      end
      object DbLkpCmbBxResponsavel: TcxDBLookupComboBox
        Left = 8
        Top = 152
        DataBinding.DataField = 'FUN_ID_RESPONSAVEL'
        DataBinding.DataSource = DtSrcSubprojeto
        Properties.KeyFieldNames = 'FUN_ID'
        Properties.ListColumns = <
          item
            FieldName = 'FUN_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 5
        Width = 265
      end
      object DbLkpCmbBxSubstituto: TcxDBLookupComboBox
        Left = 280
        Top = 152
        DataBinding.DataField = 'FUN_ID_SUBSTITUTO'
        DataBinding.DataSource = DtSrcSubprojeto
        Properties.KeyFieldNames = 'FUN_ID'
        Properties.ListColumns = <
          item
            FieldName = 'FUN_NOME'
          end>
        Properties.ListOptions.ShowHeader = False
        TabOrder = 6
        Width = 257
      end
      object PgCntrlSecundario: TcxPageControl
        Left = 8
        Top = 184
        Width = 529
        Height = 225
        TabOrder = 7
        Properties.ActivePage = TbShtJustificativa
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 223
        ClientRectLeft = 2
        ClientRectRight = 527
        ClientRectTop = 28
        object TbShtJustificativa: TcxTabSheet
          Caption = 'Justificativa'
          ImageIndex = 0
          object BtnJustificativa: TcxButton
            Left = 8
            Top = 8
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = BtnJustificativaClick
          end
          object cxDbMemoJustificativa: TcxDBMemo
            Left = 8
            Top = 40
            DataBinding.DataField = 'SPR_JUSTIFICATIVA'
            DataBinding.DataSource = DtSrcSubprojeto
            Properties.ScrollBars = ssVertical
            TabOrder = 1
            Height = 147
            Width = 508
          end
        end
        object TbShtGeral: TcxTabSheet
          Caption = 'Objetivo geral'
          ImageIndex = 1
          object BtnGeral: TcxButton
            Left = 8
            Top = 8
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = BtnGeralClick
          end
          object cxDbMemoGeral: TcxDBMemo
            Left = 8
            Top = 40
            DataBinding.DataField = 'SPR_OBJETIVO_GERAL'
            DataBinding.DataSource = DtSrcSubprojeto
            Properties.ScrollBars = ssVertical
            TabOrder = 1
            Height = 147
            Width = 508
          end
        end
        object TbShtEspecifico: TcxTabSheet
          Caption = 'Objetivos espec'#237'ficos'
          ImageIndex = 2
          object BtnEspecifico: TcxButton
            Left = 8
            Top = 8
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = BtnEspecificoClick
          end
          object cxDbMemoEspecifico: TcxDBMemo
            Left = 8
            Top = 40
            DataBinding.DataField = 'SPR_OBJETIVO_ESPECIFICO'
            DataBinding.DataSource = DtSrcSubprojeto
            Properties.ScrollBars = ssVertical
            TabOrder = 1
            Height = 147
            Width = 508
          end
        end
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 401
    Top = 462
    ExplicitLeft = 401
    ExplicitTop = 462
  end
  inherited BtnCancelar: TcxButton
    Left = 482
    Top = 462
    ExplicitLeft = 482
    ExplicitTop = 462
  end
  object DtSrcSubprojeto: TDataSource
    DataSet = FrmProaterPrincipal.QrySubProjeto
    Left = 440
    Top = 56
  end
  object DtStProjeto: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.prj_id,'
      '  a.prj_nome,'
      '  b.prg_id,'
      '  b.prg_nome'
      'from'
      
        '  tab_prd_projeto a left join tab_prd_programa b on (a.prg_id = ' +
        'b.prg_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (b.reg_excluido = 0)'
      'order by'
      '  a.prj_nome, b.prg_nome')
    Left = 408
    Top = 88
    object DtStProjetoPRJ_ID: TIntegerField
      FieldName = 'PRJ_ID'
      Origin = 'PRJ_ID'
    end
    object DtStProjetoPRJ_NOME: TStringField
      FieldName = 'PRJ_NOME'
      Origin = 'PRJ_NOME'
      Size = 500
    end
    object DtStProjetoPRG_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRG_ID'
      Origin = 'PRG_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object DtStProjetoPRG_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRG_NOME'
      Origin = 'PRG_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 500
    end
  end
  object DtSrcProjeto: TDataSource
    DataSet = DtStProjeto
    Left = 440
    Top = 88
  end
end
