inherited FrmRelatorioBeneficiarioCategoria: TFrmRelatorioBeneficiarioCategoria
  Left = 362
  Top = 152
  ExplicitLeft = 362
  ExplicitTop = 152
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      inherited LblTitulo: TLabel
        Caption = ' Relat'#243'rio de benefici'#225'rio de ATER segundo a categoria'
      end
      inherited GrpBxFiltro: TcxGroupBox
        inline FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionarioPeriodo
          Left = 8
          Top = 16
          Width = 441
          Height = 85
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 16
          ExplicitWidth = 441
          ExplicitHeight = 85
          inherited LblUnidade: TLabel
            Left = 0
            ExplicitLeft = 0
          end
          inherited LblFuncionario: TLabel
            Left = 0
            ExplicitLeft = 0
          end
          inherited LblPeriodoDe: TLabel
            Left = 0
            ExplicitLeft = 0
          end
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        Top = 34
        ExplicitTop = 34
        ExplicitHeight = 76
        Height = 76
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            'Categoria')
          Text = 'Categoria'
        end
      end
    end
  end
  inherited BtnLimpar: TcxButton
    OnClick = BtnLimparClick
  end
  inherited FrxPrincipal: TfrxReport
    EngineOptions.PrintIfEmpty = True
    ReportOptions.Name = 'Quantidade de benefici'#225'rios por categoria'
    ReportOptions.LastChange = 41954.618985625000000000
    Datasets = <
      item
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
      end
      item
        DataSet = FrxDtStResumo
        DataSetName = 'DtStResumo'
      end>
    Variables = <
      item
        Name = ' Usu'#225'rio'
        Value = Null
      end
      item
        Name = 'unidade'
        Value = #39'Unidade'#39
      end
      item
        Name = 'usuario'
        Value = #39'Usu'#225'rio'#39
      end
      item
        Name = 'titulo'
        Value = #39'T'#237'tulo'#39
      end
      item
        Name = 'filtro_periodo'
        Value = #39'Per'#237'odo de at'#233#39
      end
      item
        Name = 'filtro_unidade'
        Value = #39'Unidade'#39
      end
      item
        Name = 'filtro_funcionario'
        Value = #39'Funcion'#225'rio'#39
      end>
    Style = <>
    inherited Page1: TfrxReportPage
      inherited PageHeader: TfrxPageHeader
        inherited MemoRazaoSocial: TfrxMemoView
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
        end
        inherited MemoUnidade: TfrxMemoView
          Memo.UTF8W = (
            'SISATER Desktop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
        end
      end
      inherited PageFooter: TfrxPageFooter
        Top = 559.370440000000000000
        inherited MemoDataHora: TfrxMemoView
          Memo.UTF8W = (
            
              'Data e hora da impress'#227'o: [<Date>] [FormatDateTime('#39'hh:nn'#39',<Time' +
              '>)]')
        end
        inherited MemoPagina: TfrxMemoView
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages]')
        end
        inherited MemoUsuario: TfrxMemoView
          Memo.UTF8W = (
            'Usu'#225'rio: [usuario]')
        end
        inherited MemoRelatorio: TfrxMemoView
          Memo.UTF8W = (
            '[titulo]')
        end
      end
      inherited Header: TfrxHeader
        Height = 75.590600000000000000
        inherited MemoTitulo: TfrxMemoView
          Height = 26.456692910000000000
          DisplayFormat.DecimalSeparator = ''
          Memo.UTF8W = (
            'Relat'#243'rio de benefici'#225'rios de ATER segundo a categoria')
        end
        object Memo15: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[filtro_periodo]'
            '[filtro_unidade] [filtro_funcionario]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
        RowCount = 0
        object BeneficiriosporcategoriaCATEGORIA: TfrxMemoView
          Width = 211.653680000000000000
          Height = 30.236240000000000000
          DataField = 'CATEGORIA'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."CATEGORIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object BeneficiriosporcategoriaTOTAL_BENEFICIARIO: TfrxMemoView
          Left = 211.653680000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DataField = 'TOTAL_BEN'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_BEN"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object BeneficiriosporcategoriaTOTAL_SEXO_MASCULINO: TfrxMemoView
          Left = 283.464750000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'TOTAL_BEN_MASCULINO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_BEN_MASCULINO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object BeneficiriosporcategoriaTOTAL_SEXO_FEMININO: TfrxMemoView
          Left = 332.598640000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'TOTAL_BEN_FEMININO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_BEN_FEMININO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 381.732530000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_BEN_JOVEM_MASCULINO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 423.307360000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_BEN_JOVEM_FEMININO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 464.882190000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DataField = 'TOTAL_RIB'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_RIB"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 536.693260000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'TOTAL_RIB_MASCULINO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_RIB_MASCULINO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 585.827150000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataField = 'TOTAL_RIB_FEMININO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_RIB_FEMININO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 634.961040000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_RIB_JOVEM_MASCULINO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          Left = 676.535870000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."TOTAL_RIB_JOVEM_FEMININO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer: TfrxFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 483.779840000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Width = 510.236550000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '(*) Jovem - Ser'#225' considerado os benefici'#225'rio(s) cadastrado(s) co' +
              'm idade entre 18 at'#233' 29 anos de acordo com IBGE XXXX.')
          ParentFont = False
        end
      end
      object GroupFooter: TfrxGroupFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 419.527830000000000000
        Width = 718.110700000000000000
        object Memo9: TfrxMemoView
          Width = 211.653680000000000000
          Height = 30.236220472440900000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'TOTAL:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 211.653680000000000000
          Width = 71.811070000000000000
          Height = 30.236220470000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."TOTAL_BEN">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 283.464750000000000000
          Width = 49.133890000000000000
          Height = 30.236220472440900000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."TOTAL_BEN_MASCULINO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 332.598640000000000000
          Width = 49.133890000000000000
          Height = 30.236220472440900000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."TOTAL_BEN_FEMININO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 381.732530000000000000
          Width = 41.574830000000000000
          Height = 30.236220472440900000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."TOTAL_BEN_JOVEM_MASCULINO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 423.307360000000000000
          Width = 41.574830000000000000
          Height = 30.236220472440900000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."TOTAL_BEN_JOVEM_FEMININO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 464.882190000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[Sum(<DtStPrincipal."TOTAL_RIB">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 536.693260000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[Sum(<DtStPrincipal."TOTAL_RIB_MASCULINO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 585.827150000000000000
          Width = 49.133890000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[Sum(<DtStPrincipal."TOTAL_RIB_FEMININO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 634.961040000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[Sum(<DtStPrincipal."TOTAL_RIB_JOVEM_MASCULINO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 676.535870000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[Sum(<DtStPrincipal."TOTAL_RIB_JOVEM_FEMININO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader: TfrxGroupHeader
        FillType = ftBrush
        Height = 94.488250000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        Condition = 'DtStPrincipal."ESCRITORIO"'
        object Memo2: TfrxMemoView
          Top = 26.456710000000000000
          Width = 211.653680000000000000
          Height = 68.031540000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 211.653680000000000000
          Top = 26.456710000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Benefici'#225'rio de ATER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 283.464750000000000000
          Top = 49.133890000000000000
          Width = 49.133890000000000000
          Height = 45.354360000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Masc.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 332.598640000000000000
          Top = 49.133890000000000000
          Width = 49.133890000000000000
          Height = 45.354360000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Fem.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 381.732530000000000000
          Top = 49.133890000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Jovens*')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 211.653680000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 45.354360000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Geral')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 381.732530000000000000
          Top = 71.811070000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Masc.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 423.307360000000000000
          Top = 71.811070000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Fem.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 464.882190000000000000
          Top = 26.456710000000000000
          Width = 253.228510000000000000
          Height = 22.677180000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Ribeirinho')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 536.693260000000000000
          Top = 49.133890000000000000
          Width = 49.133858270000000000
          Height = 45.354360000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Masc.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 585.827150000000000000
          Top = 49.133890000000000000
          Width = 49.133858270000000000
          Height = 45.354360000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Fem.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 634.961040000000000000
          Top = 49.133890000000000000
          Width = 83.149660000000000000
          Height = 22.677180000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Jovens*')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 464.882190000000000000
          Top = 49.133890000000000000
          Width = 71.811070000000000000
          Height = 45.354360000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 634.961040000000000000
          Top = 71.811070000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Masc.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 676.535870000000000000
          Top = 71.811070000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Fem.')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStPrincipalESCRITORIO: TfrxMemoView
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          DataField = 'ESCRITORIO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DtStPrincipal."ESCRITORIO"]')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeaderCross: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
          Center = True
          DataSetName = 'Empresa'
          Picture.Data = {
            0A544A504547496D616765703A0000FFD8FFE000104A46494600010101004800
            480000FFE110E84578696600004D4D002A000000080004013B00020000000A00
            00084A8769000400000001000008549C9D000100000014000010CCEA1C000700
            00080C0000003E000000001CEA00000008000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000043726973746F76616D
            0000059003000200000014000010A29004000200000014000010B69291000200
            00000334370000929200020000000334370000EA1C00070000080C0000089600
            0000001CEA000000080000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000323031343A30353A30322030363A33353A
            323900323031343A30353A30322030363A33353A323900000043007200690073
            0074006F00760061006D000000FFE10B1C687474703A2F2F6E732E61646F6265
            2E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EF
            BBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B633964
            273F3E0D0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F223E3C7264663A52444620786D6C6E733A7264663D22687474
            703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D7379
            6E7461782D6E7323223E3C7264663A4465736372697074696F6E207264663A61
            626F75743D22757569643A66616635626464352D626133642D313164612D6164
            33312D6433336437353138326631622220786D6C6E733A786D703D2268747470
            3A2F2F6E732E61646F62652E636F6D2F7861702F312E302F223E3C786D703A43
            7265617465446174653E323031342D30352D30325430363A33353A32392E3437
            303C2F786D703A437265617465446174653E3C2F7264663A4465736372697074
            696F6E3E3C7264663A4465736372697074696F6E207264663A61626F75743D22
            757569643A66616635626464352D626133642D313164612D616433312D643333
            6437353138326631622220786D6C6E733A64633D22687474703A2F2F7075726C
            2E6F72672F64632F656C656D656E74732F312E312F222F3E3C7264663A446573
            6372697074696F6E207264663A61626F75743D22757569643A66616635626464
            352D626133642D313164612D616433312D643333643735313832663162222078
            6D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D
            656E74732F312E312F223E3C64633A63726561746F723E3C7264663A53657120
            786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939
            392F30322F32322D7264662D73796E7461782D6E7323223E3C7264663A6C693E
            43726973746F76616D3C2F7264663A6C693E3C2F7264663A5365713E0D0A0909
            093C2F64633A63726561746F723E3C2F7264663A4465736372697074696F6E3E
            3C2F7264663A5244463E3C2F783A786D706D6574613E0D0A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020203C3F787061636B65
            7420656E643D2777273F3EFFDB00430003020203020203030303040303040508
            05050404050A070706080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B10161011
            13141515150C0F171816141812141514FFDB0043010304040504050905050914
            0D0B0D1414141414141414141414141414141414141414141414141414141414
            141414141414141414141414141414141414141414FFC000110800A800A80301
            2200021101031101FFC4001F0000010501010101010100000000000000000102
            030405060708090A0BFFC400B5100002010303020403050504040000017D0102
            0300041105122131410613516107227114328191A1082342B1C11552D1F02433
            627282090A161718191A25262728292A3435363738393A434445464748494A53
            5455565758595A636465666768696A737475767778797A838485868788898A92
            939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7
            C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FA
            FFC4001F0100030101010101010101010000000000000102030405060708090A
            0BFFC400B5110002010204040304070504040001027700010203110405213106
            1241510761711322328108144291A1B1C109233352F0156272D10A162434E125
            F11718191A262728292A35363738393A434445464748494A535455565758595A
            636465666768696A737475767778797A82838485868788898A92939495969798
            999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4
            D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002
            110311003F00FD53A28A2800A28A2800A28A2800A4CD04D309C7D2810E073485
            F03A8AE3BE237C5DF0AFC29D30DE788F5682C4104C706ECCD291D913A9AF8E3E
            27FEDFBAFEB32CD6BE0BD3A3D1AD3A2DF5E8124EC3D42745FC735CF52BC292F7
            99E0E619DE0B2D4D569FBDD96E7DDDA96AF67A35AB5CDFDDC1676E832F34F204
            45FA935E21E31FDB5BE1B784AF56CE2BEB9F10DC96D85345844C01CE3EF33283
            F8135F9DBE2DF887E26F1DDD1B8F106B97DAAC99C813CA4A0F603A0F4E057D73
            FB1E7ECB66DFEC9E3BF1759FEF4E24D334F987DC1DA675F53D81E9D6B923899D
            69F2D3565DD9F2D87E23C5E6D88587C052B47AC9EB647D7DE19D79FC47A1D9EA
            4FA7DDE97F698C482D2FD55268C1E8182B3007DB35AD9EB4D08000076A71AF49
            1FA2C534926F5168A28A6585145140051451400514514005145140051451400D
            56CF7CD2E734D039EC3DAA1B9BC86CA0927B8952186352CEF23602A81C926876
            5A92DD95D924920452CC554019249E82BE4AFDA1FF006D9B4F0B4D75E1FF0002
            B45A96AA998E6D54E1A0B73DC27F7DBDFEE8F7AF37FDA8FF006BC9FC6335DF85
            3C1972F6BA1A931DD6A3112AF778FBCA87B27BF535F28E7D8579388C5DBDDA47
            E579F714B8B786C0BF597F97F99A5E21F12EABE2CD567D4F59D42E352BF98EE7
            9EE1CB31FF0001EDD2B380DC70064E7B76FF003ED4004E000493E95F687EC9DF
            B26965B5F1B78CED30C009B4DD2E65E9DD66907AF70BF89AF3A9D295691F9FE0
            32FC4E6D5F92177DDBE9EA709FB1DFC1DF0CF8C3C43FDBFE27D534F64B09B6DA
            E8B2CEA2592507EFBA139DA33C0EE6BF44E1D815563C6D03803A015F9A3F09FE
            0745F1B7C53F11EC62BA6B1D5AC2469EC270DF207F3586D61E8C00FA571AFE39
            F89BF05BC4171A2B6BBABE8B7D68C43DABCECD19F4215B2A54FAE3FC2BBE956F
            ABC1271D3B9F7395E6AB23C2C7DA61DF2C9BF7975B6F7EDE87EB29231480935F
            9F5F0F7F6FCF15E8B2C7078AB4FB7D7ED33F34F6E04338FC07CA7F215F5EFC2D
            FDA0BC17F16ED54E89AAA0BD0017B0B9FDDCE9FF00013D47B8C8AF429E229D5D
            99F7580CFB019834A94ED2ECF43D2B271484E3BD343E7D08FAD2E7D3835D1E67
            D15C7D145140C28A28A0028A28A0028A28A0028A29334011C922C68CCECA8AA3
            2589C015F9EFFB5AFED47378EB50BAF08F85AE9A1F0EDBB18AEAEA26C1BC7070
            541FF9E63FF1EAF52FDB77F6837F0CE967C09A0DC94D52FA3CEA33C4DCC101FF
            009660F666FCC0FAD7C163A63B0E95E462F116FDDC19F9371567CEEF03867B7C
            4D7E5FE627A63B52E338E3AF4C5203CE00CE7F1AFB57F64AFD92F9B3F1B78D6C
            F9E26D3F4A993A7F765907AFA2FE26BCEA54A55A5647C0E599657CD2BAA34D7A
            BEC867EC99FB266F6B3F1A78D6CCE789B4ED2A65E9FDD9641FC97F135F6C3461
            622A06001C014E5450B81C0F6E29653F237AE2BE8A95254972A3F7FCBB2DA195
            E1FD9525EAFAB3E2CFD88E2D9F18BE2767B4A7FF0047357B8FED0DFB3C691F1C
            340F9952CBC416AA7EC7A884E41FEE3FF794FF00F5C62BC67F62D8767C60F8A8
            7A95B923FF0022BD7D91B4673EB5CF422A74795F99E3E4F84A38ACB1D1AD1BA6
            E5F9B3F1BBC67E0CD63C01E23BBD0F5CB392CAFED9B6B230E1876753D194F63F
            FEAAC8B4BCB8D3EEA3B9B59E5B6B888EE49A272AEA7D430E47E15FAA3F1F7F67
            FD13E387874C172AB67ADDB29365A92265E26F46F553DC7E5835F997E3DF006B
            5F0D7C4D75A16BD66D697D01C83D5254ECE87BA9FF00EB1C57975F0F2A2EEB63
            F2DCEF23AD93D5E785DD37B3FF0033E82F827FB726BDE0F920D33C6692788349
            FB9F6D403ED510F53DA41F91F7AFBABC15E3CD0FE2168506AFE1FD461D4AC65E
            0491364AB77561D548EE0F35F8E3EC3A5765F0BFE2DF88FE10F8863D53C3F7AD
            09240B8B590E61B841D9D7BFD4608EC456B431928693D51E9E4DC575F08D51C5
            7BF0EFD51FAF993C52E78AF26F811FB43683F1C344F32D1858EB3028FB5E9B2B
            7EF233FDE5FEF293D08FC706BD5C75EB5EDC6519ABC4FD970F89A58AA6AAD195
            E2C7D1451547505145140051451400D0D5C4FC61F89965F09FC01AA7886F482D
            0478821CF32CA78441F53FA66BB53907D2BF3DBF6F0F8AFF00F09478EEDFC216
            52EED3F451BE70A787B861CFFDF2A40FA935CF5EAAA50E63E7B3CCC565983955
            5F13D17AFF005A9F36F893C457DE2DD7EFF59D4E66B8BEBD99A796463C9627B7
            A01D07D0567633FF00D6E69178240193EDCD7DADFB25FEC9241B3F1AF8D6CC6E
            244DA7E9532F4FEECB20F5F45F4E4FA57814A94AB48FC332FCBF119C627920B7
            DDF6F3637F64BFD9332D67E34F1AD99DDC4DA769732F4FEECB20F5F45F4E4D7D
            B0B1855000DA076142C6A0600C0F6E29CD5F434A94692E58A3F7DCB72DA19650
            54692F57D589F5AE33E2AFC56D0BE11F852E35BD72E0471A8DB0C0A7324F2638
            441DC9FD3A9A8BE2D7C5DD07E0F785E7D675A9C700ADBDAA1FDEDC49D9547F33
            DABF30BE2F7C60D77E3378AE5D63599B6C6095B4B28CE63B68C9FBABEA7D4F7A
            C711898D2565B9E2E7D9FD3CAE1ECE9FBD55F4EDE6CF65FD957E3EE89E0DF8B1
            E24B8D713FB3AD7C4D71BD2E0B652DDCB960AE7B03BBAD7E864170B711A491B0
            747019594E4107BE6BF158F3C7E18AFA97F65AFDADE6F00CD6BE15F17DD3DC78
            759825ADF392CD659E8ADEB1FF00E835C585C4A8FB923E4786F892341AC262B4
            4F67D9BEE7E8477EB5E63F1D3E05689F1BBC346C6FD16DF52832D67A8A282F0B
            FF00553DC57A35A5E437F6D15C5B4A93C12286492360CAC0F420F7AB040E98E7
            DEBD7946335CAF547EAB5A852C5D174EA2BC648FC7AF88DF0E35CF85BE29B9D0
            75DB536F7511CA4833B264CF0E87BA9FE7C1C572FD383CFD6BF5A3E34FC14D0B
            E35F85DF4CD522F2AED017B4BF8D7F796EF8EA3D47A8EF5F98FF0014BE16EBBF
            08FC553E89AEDB949012D05C20263B88FB3A9EFF004EA2BC0C461E549DD6C7E1
            79F641572BA8EA5357A4FAF6F26637857C57AAF8275EB4D6745BC92C351B56DF
            1CB19EBEA08EE0F715FA5DFB387ED1BA6FC70F0FF9726CB1F1259A8179639EBF
            F4D133D57F974AFCBACF18ADCF0678D355F87FE26B1D7745B96B6BFB47DCAC39
            0C3BAB0EEA7B8A9A15DD076E8736479DD5CA2B59EB4DEEBF547EC91245058D79
            DFC0FF008C5A67C69F045B6B36244374BFBBBCB327E7B7940E54FA8EE0F715E8
            7D33CD7D1464A49347EFF42BC3134E35693BA7AA1F4514533A0CFBDD72CB4FBB
            B4B5B9BA860B8BB6296F1C8E034A40C90A3BF157439F6C76AF96FF006F8D12F8
            7813C3FE29D3E796DAEF42D4032CD0B1568FCCC00C0FB32A7E756FF65AFDAB6D
            BE26DAC1E1BF134B1DAF8AA25C4729C2A5EA81F797D1FD57F115CFED92A9ECE4
            7CFF00F6C52A58F9606BFBAF4717DEE7BC7C40F1641E07F05EB5AF5C9022B0B5
            92720F72A381F89C0FC6BF2075AD5EEBC43AD5F6A97AE65BCBD9DE795CF24B31
            C9AFD05FDBDBC5CFA2FC1E834989B126B37D1C2C14FDE8D32EC3F30A31EF5C1F
            EC97FB25797F62F1AF8D6CFE7E25D3B4A9D7EEFF00765907AFA2FA727D2B8F11
            1956A8A9AD91F1FC4387C467398D3C0D05EEC55DBE8AFF00F006FEC97FB26E24
            B4F1A78D6CB2C31369DA5CCBF77FBB2C83D7D17F3CD7DAEA811400001ED4A881
            5401C0A535DD4A94692E589F7396E5B432BA0A8D15EAFAB038AE07E307C64D0B
            E0CF85A6D5F589434AD94B5B3461E65C49D9547F33D85778C4ED20637638CD7C
            95F153F638F177C5DF155C6B9ADF8EEDE49189582DD6CDBCAB78FF0085106EE3
            DCF53DF3455738C7DC572733AD8AA541FD4E9F34DFE07C79F163E2C6BBF187C5
            536B5ADCD90495B7B443FBBB64EC8BFD4F7AE2F3D7A935F62B7FC139B551F77C
            636BFF008067FF008AAE1FE307EC69A97C20F025F789EE7C476DA84568D129B7
            8E064662EE13824F6DC0D7853A355DE7247E278CC8F357CF89C441BEAD9F3966
            971EFEFD69D0A6F95138F9C81F99AFADEC7FE09E3AD5ED9C170BE30B25595038
            CDABF7008EF594294EAFC3D0F27039662F30E6FAB439AC72DFB2FF00ED5B79F0
            AEEA0F0EF892592EFC2B23058E56F99EC49EE3B94F51DBB57E88E95ABD9EB761
            05F58DC477569708248A689B72B83D0835F0E9FF0082736B98FF0091C2C8FBFD
            91BFC6BDD7F677F823E34F826D269D7BE2AB5D6BC36E0B2D9185C3C0FEB1B13D
            0F71F962BD8C3BAD0F72A23F5CE1FF00ED5C25B0D8CA4DC3A3EDFF0000F78239
            F6AE13E2F7C1ED0BE32785A6D2359872D82F6F7683F7B6F276653FCC743E95DF
            5348C1AEE94549599F715A8D3C441D3AAAE99F913F173E116BBF06FC57368DAD
            424A925AD6F114F97731F665F7F51DBF5AE1F1919AFD7AF8ABF0AB42F8BDE16B
            8D135CB6591082D0DC281E6DBC9D9D4F6FE47BD7E627C66F82FAEFC15F14C9A5
            6AF1192D6424D9DFC6BFBBB94CF51E84775FFF005D78388C3CA97BCBE13F0BCF
            F87AA659375A8EB49FE1E4FF00CCD3FD9DFE355DFC13F1FDBEA1B9E4D16E8883
            51B61D1A3CFDF03FBC879FA6477AFD50D2B55B6D6B4CB6BFB3992E2D2E635962
            96339575232083F435F8BA7A0AFB97F60AF8CEDA869F73F0FF00549CB4D68A6E
            34C690F58B3F3C63FDD2723D89F4ADB075ECFD9B3D8E11CDDD2A9F50ACFDD97C
            3EBDBE67D97451457B47EC6719F17BC109F117E1BF883C3F2005AF6D5D6227F8
            641F321FC180AFC8D65BCD07552034969A8594C4064255E37438C83D8839AFDA
            2619047AD7E6C7EDB1F0BBFE103F8AD26B16D0ECD2F5F06E54A8E1671FEB17EA
            490DF8D7978DA774AA2E87E67C658172A70C6D3DE1A3F47B7E27A67C06F8B5E1
            FF008FBE23F0B69FF1164597C45A0073A72CD8105FC8DB70EE0F06450A303B9E
            719E2BED9555070BC003A0AFC58B7B996D2E239E191A19A260F1C91B15646072
            0823A1AFBF7F653FDACA2F1CC56FE13F175C243E2241B2D6F64385BD1D813DA4
            F6EFDB1D29617109FBB3DCC38673FA751FD5B17A4DED2EF6EE7D5B8E7AD00537
            7E403C107BD3BD6BD63F51131C9E6906077C914EED5F2BFC61FDB0BC41F073C6
            773A1EA9E06578F25ED2ED6FF6C77317665FDDF5F51D8F1EE729D454D5E47063
            71D43010F6B5DD96D73EA73CE47A5784FEDB031FB3CF883FEBADB7FE8E4AF17F
            F878E5CFFD0909FF00830FFED75C37C67FDB366F8C3E00D43C2EFE174D305DB4
            6DF6917BE614D8E1BEEEC1D703BD71D5C4539536933E4B31E23CB71182AB4A9D
            4BB716B6EE8F9BAD3FE3F20FFAE8BFCC57ECCF87C0FEC3D3FF00EBDE3FFD0457
            E324327972A498FB8C1B1F4AFB234CFF00828849636305B9F056F1122C6586A0
            39C0C67EE571612AC297373BDCF8FE14CCF0B973AAF132B5ED6F95CFB8E9B806
            BE2B4FF828DA1386F04C99CE30B7E33FFA057AFF00C08FDA4357F8E37D235A78
            2EE34DD1A0CACDA9CD741937E3844017E63EBE9FCFD48622137689FA6E1B3DC0
            632A2A5427793F267BC0A28A5AE93E846115E69F1FF4CF056A9F0EEF61F1C88D
            74B621637E3CE594F09E577DF9E83BF7E2BA5F883F10F46F867E17BBD7B5DBB5
            B5B28071DDE46EC8A3BB1F4FE99AFCFCB8F8A5AE7ED39FB4178520BB5683474D
            450DA69AA7290C4AC1999BD5881D7F2C57257AB18DA3BB7B1F2F9CE69430D158
            5694E75344BD7B9C0FC6BF821ADFC15F11FD8B5046B8D32E3E7B1D455709327A
            1FEEB8EEBF88CD733E00F18DE7C3FF001968FE21B27659EC2E1652071B933F32
            9FAA923F1AFD66F1F7C3CD13E25F85EE340D7AD16EECA64E3B346C3A3A1ECC0F
            435F995F1EBE026B7F03FC466DAF035DE8B3B1FB0EA417E4907F75BD1C0EA3F1
            1C57995F0F2A2F9E3B1F9AE759155CA2AAC5E1BE0BDFCE3FF00FD4DF0F6B7078
            8B42D3F54B560F6D79024F19F5565047F3A2BC33F623F1D8F177C15B3B1964DF
            77A34AF64E09E76E7721FA6D6C7E1457B54E6A71523F63C06256330B4EBAFB49
            7FC13E83E715E47FB4CFC235F8BDF0C6FF004F85036AD69FE9360E4722451F77
            FE04323F115EB9E94D23764629CA0A717166B89A10C551950A9B4958FC579EDE
            4B4B89609E3686689D91E37186565E0823B1CFF2A48A792DE6496291A296360C
            8E870548E8411D0FBD7D8BFB6BFECE4F637971F107C3B6BBAD6521B56B689794
            6FF9EE00EC78DDE9D7D6BE37C639EA2BE6AAD39529B4FF00E1CFE72CCB2FAB95
            62A546A74D9F75DD1F7C7ECA3FB59278BD6DBC23E30B9116B8A025A6A121016E
            C0FE163D9FF9D7D681F23B57E2AC72BC322491B18E442195D0E0A91D083EB5F7
            97ECA1FB5AA78A56D7C1FE32BA11EB2AA12CF5190E16EC7F718F67FE75E9E1B1
            5CDEE4DEA7E8FC37C48AADB078C769747DFD4FAEBF1AE0FE2FFC1FD0BE327856
            6D1F5887E7197B6BB41FBCB7931C329FE63A1AEE849B864608A76DCFAE3AD7A7
            28A92B33F49AB4A9E229BA7555E2CFC8AF8B7F07F5FF00833E289349D6E0CC6C
            49B5BD8C1F2AE53B15F43EABDBF5AE18927BD7EC07C4CF861A0FC58F0BDC689A
            F5A0B8B790131CA389217FEF21EC6BF32BE38FC08D77E07F890D9EA08D75A54E
            49B2D49170932FF74FF75C771F88CD78388C33A57947E13F0DCFF87AA65B375A
            8DE54DFE1E4FFCCF34E9F9503248C1E7FC297B7F9E9DFF002AFA63F660FD92EE
            BE25CF6FE24F14432DA78591B7C36C72AF7A474F4C27BF7ED8EB5CB4E9CAA3B2
            3E6F0180AF98565468C6EFF05EA60FECD9FB2E6A7F196FA2D5756596C3C230B8
            DF3630F7647F047EDEADF966BF47FC39E18D2FC25A2DA693A459C563616C8238
            A18570140FEBEFD6AC697A4DA68D6105958DB456B6702048E18942AA01D00157
            3381CD7D0D1A11A2B4DCFDEB26C9A86514AD0D66F77FE5E42E78AE63E20FC45D
            1BE19786AEF5CD7AE96D6CA01D339691BB2A8EEC7D293E20FC45D13E19785EEF
            5DD76F16D6CE01803AB48DD9107763E9FD335F989F1D3E3A6B5F1BBC4ED7D7CC
            D6BA4C048B2D395B290AFA9C7563DCD457C42A2BCCE6CF73DA59552E586B51EC
            BFCC3E3A7C74D6BE3878A1AF6F59AD74A8188B1D355B290AFF0078F62E7B9FC3
            A715EB9FB00F809B5AF887A9F89A58FF00D1B4983C98D88E0CB271FA283F9D7C
            B20176C28249380A0739FF003C57EA67ECB5F0B8FC2CF847A5D9DC441354BD5F
            B65E71C891C0214FFBA303F0AF370D1956ABED25D0FCEB8728D6CD73478AAEEE
            A3ABF5E88F61C64573FE37F0368DF10BC3777A1EB96697B6172B8647EAA7B329
            EC41E41AE868AF75A4F73F6D9D38D48B84D5D33E55FD9E7E136BFF00B3F7C67D
            6BC3C4497FE13D66D4CF677F8C0578C8F91C766DAE7EB8CFD0AFA94A679F7C8A
            2A214F915A27160F0B4F014FD8D3F86EDAF2BF41FB6803029D45687A256BAB58
            6F6DE58278D66865528F1C832AC08C1041ED5F9C1FB59FECDAFF000935D3AF68
            50337852FE4E100CFD8E527EE13FDD3FC27F0EBC9FD25EF595E28F0B699E33D0
            2F746D5ED92F34FBC8CC534320C820FF0023DC1ED8AE7AF45568DBA9F3D9CE51
            4F36C3B84BE25B3ECCFC68C649CF18F6E684768A45746647460CACA70548E841
            1DEBDBBF687FD9875BF82FA84B7F68926A7E1495BF737A8B96B7FF0062503A7B
            3743EDD2BC43F1CFBFF5FA57CE4A1284AD247F3FE2B095F0359D2ACAD25FD687
            DD5FB287ED6ABAEFD97C1FE33BA54D4F023B1D4A6200B8C74473D9BD0F7AFB08
            3E7A739AFC555728CACA4A3A9DC194E083EB5F727EC9DFB5A8D556CFC17E35BB
            DB7E311586A93B604FE91C87FBDE87BD7AD85C5737B9367E9FC37C49CF6C1E31
            EBF65F7F267D8FB78E49AE6BE217C3FD1BE25785AF743D72D56EAC6E17B81B91
            B1C329ECC3D6BA3F3778CAE08A571846FA57A8D27B9FA655842AD3709ABA68FC
            E9FD97BE04E85E31F8CFE23D2F5D2F7F67E1B9094B7230B72C242AA64F6C0E9D
            EBF44EDAD62B5823821458A28C6D54418000E800F4AF8CFF0063C3FF00190FF1
            4D7B6F90FF00E4C1AFB4475AE3C2452A774BAB3E5B8670F4A8E0DCA11B36DFE6
            04605731F10BE22E8BF0C7C3175AEEBD74B6B656EBD3ABC8DD9107763E949F10
            BE23E89F0C7C3177AE6B976B6D6902F03AB48DD9107763E95F989F1CFE3A6B7F
            1BFC4ED7D7CED6BA5C048B1D3D5B290AFF0078FAB9EE6AABE2234569B979EE7B
            4B2AA768EB51ECBFCC3E39FC75D6FE37F89DEF6F99AD74B818AD8E9AAD94850F
            738EAC7B9FC3A715E69EF464631DEB7BC13E0AD53E20F8A34FD0345B7373A85E
            3EC551D1077663D801C9AF01B95595FAB3F09AB52BE3EBF34AF29C99EC3FB1D7
            C186F89BF11A2D56FADCBE81A1B0B898B0CACB3F548FDF9F98FB01EB5FA5C100
            014718E2B88F83BF0BB4EF843E06D3FC3DA780C625DF713E0069E63F79CFE3FA
            015DC74AFA0C3D254609753F7DC872B8E558454DFC6F597AFF00C01D45252D75
            1F4A21E4514B4500145145002014638A5A2802B5F585B6A5692DADD411DCDB4A
            A55E295432B03D4107A8AF8E7E397EC250DF3DC6B1F0F192D2762647D1A77C44
            C7FE9937F09F63C7BD7D9847146DF4C56552946AAB491E4E619661732A7ECF11
            1BF67D51F8CFE25F0BEAFE0FD565D375BD36E34BBE8C90D05CA156FA8F51EE32
            2B2C31560412194E723823DFDABF60FC7BF0BBC31F12F4C6B1F11E916FA8C447
            CAF22FEF233EAAE3953F435F227C50FF00827E5DDB34B77E07D545C43F7974ED
            44E187B2C9D0FE20578D570738EB0D4FC9B31E11C5E15BA9857CF15F7A353F64
            EFDAD85D9B3F06F8D6EF173C4361AACCD8127A4721FEF760DDFA1AFB359F746C
            46318E0D7E4078C3E1678BBE1F5C98F5ED02FB4EDA7895A22636F70E38FD457D
            59FB277ED6BE72DAF827C6B77FBDC0874FD5666FBC7A08A527A1ECAC7AF435D3
            87C4B4FD9D45F33DEC873FA949FD4730567D1BD3E4C77EC7CDFF00191BF13D7D
            4CBFA5C1AFABBE227C46D13E17F85EEF5DD76E96DACE01C2F57958F4445EEC7D
            3F90CD7C4DF00BE2268DF0D3E357C56D7F59BB482CA059880082F2B79FC2A0FE
            227B015E37F1D3E38EB5F1BFC4EDA85FB1B6D2E0256C74F0D95853D4FAB1EE7F
            0E9C528E223469596FA91473DA79565AE31D6A394ACBE6F561F1C7E396B5F1BB
            C50F7F7ECD6BA6424AD8E9AAD94853D4FAB1EE7F0E9C579A8EB4B9239ADFF03F
            80F5CF88FE208346D02C64BEBD94F2147CA8BFDE73D140EE4FEB5E5B6EA4AEF5
            67E6352A57CC2BB9C9F34E450D03C3DA978AB58B4D2B49B396FF0050BA90470C
            108C9627FA7BF4AFD29FD993F671B2F829A17DAEF963BBF145E20FB55CA8E221
            FF003C90FA0EE7B9AB3FB3BFECD5A37C12D27ED1284D47C4B70816EB5065CED1
            FDC8F3F757F9F7AF6AD82BD9C361553F7E5B9FB170EF0E472F4B138AD6A745DB
            FE08BB7F0A5C7BD2D15E89FA005145140051451400514514005145140098A314
            B45002628DA2968A00AF75656F7B0B45710C73C4C305245041FA8AF19F8B5F09
            3E0EE8FE1FBEF1078ABC37A6595ADB21669A04303B1E8154215CB13C0F7AF58F
            127886CBC29A1DE6ADA8CFE4595A4664964C13803D8726BF397E367C42F1CFED
            33E2E1068DA06AAFE1FB67DB61631DBBE1BB79B2718DC47E42B931138C23B5D9
            F2B9EE328E128DBD9AA9525B2B5FE678D78CF54D2758F12DE5D687A57F64692E
            E7ECF666432B2AE3AB3124927D6B100F980C64E70001CE7D31EBED5F4DFC3BFD
            833C69E2531CFE22BAB6F0DD9B60B479F3AE08F4DA3E51F9D7D5DF0B7F651F00
            FC2FF2AE6DF4C1AA6AA9CFDBF51C48E0FAA2FDD4FC00AF2A185A951DE5A1F98E
            0F86330CC27ED2AC7922FBFE88F8BFE09FEC85E2DF8A92C37DA8C327873C3C70
            C6EAE93134CBFF004CD0F3FF0002381E99AFBFFE18FC21F0CFC23D0574DF0FD8
            2DB82019AE5F0D34E7D5DBBFD3A7A015DA2A2AAE0600F4A53D3AF35EBD2C3C28
            EAB73F53CAB21C2654AF4D734FBBDFE5D8508314B8E2968AE93E9428A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A008A6B68AE23292A2C88
            7AAB0041A48ACE180111C6A80F50A00A28A4D26EE4F2A6EF624DA280A067DE8A
            29942E28DB45140AC2D145140C28A28A00414138A28A04009345145033FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo38: TfrxMemoView
          Left = 68.031540000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do Esta' +
              'do do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 68.031540000000000000
          Top = 21.677180000000000000
          Width = 650.079160000000000000
          Height = 34.015760240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ATER Par'#225' - Sistema de acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo40: TfrxMemoView
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
      object PageFooterCross: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Memo41: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'Data e hora da impress'#227'o: [<Date>] [FormatDateTime('#39'hh:nn'#39',<Time' +
              '>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Usu'#225'rio: [usuario]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 340.157700000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterDataCross: TfrxMasterData
        FillType = ftBrush
        Height = 127.000000000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStResumo
        DataSetName = 'DtStResumo'
        RowCount = 0
        Stretched = True
        object DBCross1: TfrxDBCrossView
          Left = 60.472480000000000000
          Width = 363.000000000000000000
          Height = 127.000000000000000000
          AutoSize = False
          DownThenAcross = False
          ShowTitle = False
          CellFields.Strings = (
            'TOTAL_BEN')
          ColumnFields.Strings = (
            'CATEGORIA')
          DataSet = FrxDtStResumo
          DataSetName = 'DtStResumo'
          RowFields.Strings = (
            'ESCRITORIO')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223238302C
            34373234382220546F703D223331342C3434383938222057696474683D223638
            22204865696768743D22323322205265737472696374696F6E733D2232342220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223022204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C546672784D656D6F56696577204C656674
            3D223238302C34373234382220546F703D223333372C34343839382220576964
            74683D22363822204865696768743D22313922205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31312220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223122204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D2230222F3E3C546672784D656D6F566965
            77204C6566743D223334382C34373234382220546F703D223331342C34343839
            38222057696474683D22353522204865696768743D2232332220526573747269
            6374696F6E733D2232342220416C6C6F7745787072657373696F6E733D224661
            6C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F72
            3D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D65
            3D22417269616C2220466F6E742E5374796C653D223122204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            22686143656E7465722220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D2230222F3E3C546672784D
            656D6F56696577204C6566743D223334382C34373234382220546F703D223333
            372C3434383938222057696474683D22353522204865696768743D2231392220
            5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D2230222F3E
            3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C5466
            72784D656D6F56696577204C6566743D22302220546F703D2230222057696474
            683D223022204865696768743D223022205265737472696374696F6E733D2238
            2220416C6C6F7745787072657373696F6E733D2246616C736522204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222056416C69
            676E3D22766143656E7465722220546578743D22544F54414C5F42454E222F3E
            3C546672784D656D6F56696577204C6566743D22302220546F703D2230222057
            696474683D223022204865696768743D223022205265737472696374696F6E73
            3D22382220416C6C6F7745787072657373696F6E733D2246616C736522204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222056
            416C69676E3D22766143656E7465722220546578743D22544F54414C5F42454E
            222F3E3C2F63656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F
            733E3C546672784D656D6F56696577204C6566743D223238302C343732343822
            20546F703D223236392C3434383938222057696474683D223638222048656967
            68743D22343522205265737472696374696F6E733D2232342220416C6C6F7745
            787072657373696F6E733D2246616C73652220416C6C6F7748544D4C54616773
            3D22547275652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E
            616D653D22417269616C2220466F6E742E5374796C653D223022204672616D65
            2E5479703D2231352220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            20576F7264427265616B3D2254727565222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C75
            6D6E746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D
            223334382C34373234382220546F703D223236392C3434383938222057696474
            683D22353522204865696768743D22343522205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22546F74616C222F3E3C2F636F6C756D6E746F
            74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F56
            696577204C6566743D2238302C34373234382220546F703D223236392C343438
            3938222057696474683D2232303022204865696768743D223022205265737472
            696374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E7465722220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22222F3E3C546672784D656D6F56696577204C6566743D22323830
            2C34373234382220546F703D223236392C3434383938222057696474683D2231
            323322204865696768743D223022205265737472696374696F6E733D22382220
            56697369626C653D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D22417269616C2220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2243617465676F
            726961222F3E3C546672784D656D6F56696577204C6566743D22302220546F70
            3D2230222057696474683D223022204865696768743D22302220526573747269
            6374696F6E733D2238222056697369626C653D2246616C73652220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            352220476170583D22332220476170593D2233222048416C69676E3D22686143
            656E746572222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C546672784D656D6F56696577204C6566743D2238302C34373234382220
            546F703D223236392C3434383938222057696474683D22323030222048656967
            68743D22343522205265737472696374696F6E733D22382220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E7465722220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D22457363726974C3B372696F222F3E3C2F636F726E65726D656D6F733E3C
            726F776D656D6F733E3C546672784D656D6F56696577204C6566743D2238302C
            34373234382220546F703D223331342C3434383938222057696474683D223230
            3022204865696768743D22323322205265737472696374696F6E733D22323422
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31312220466F6E742E4E616D653D22417269616C2220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D22332220506172656E74466F6E743D2246616C736522
            2056416C69676E3D22766143656E7465722220546578743D22222F3E3C2F726F
            776D656D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F56
            696577204C6566743D2238302C34373234382220546F703D223333372C343438
            3938222057696474683D2232303022204865696768743D223139222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223122204672616D652E54
            79703D2231352220476170583D22332220476170593D22332220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22546F74616C222F3E3C2F726F77746F74616C6D656D6F733E3C6365
            6C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374
            696F6E733E3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C75
            6D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C2F726F77736F
            72743E3C2F63726F73733E}
        end
      end
      object HeaderCross: TfrxHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        object Memo45: TfrxMemoView
          Width = 718.110700000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = clGray
          HAlign = haCenter
          Memo.UTF8W = (
            'Resumo de benefici'#225'rios de ATER segundo a categoria')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[filtro_periodo]'
            '[filtro_unidade] [filtro_funcionario]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object FrxDtStPrincipal: TfrxDBDataset
    UserName = 'DtStPrincipal'
    CloseDataSource = False
    DataSet = DtStPrincipal
    BCDToCurrency = False
    Left = 80
    Top = 328
  end
  object FrxDtStResumo: TfrxDBDataset
    UserName = 'DtStResumo'
    CloseDataSource = False
    DataSet = DtStResumo
    BCDToCurrency = False
    Left = 80
    Top = 360
  end
  object DtStPrincipal: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select * from stp_rel_categoria_01 (:data_inicio, :data_fim, :un' +
        'idade, :funcionario)'
      
        '--select * from stp_rel_categoria_01 ('#39'01.01.2014'#39', '#39'31.12.2014'#39 +
        ', 111, 0)')
    Left = 112
    Top = 328
    ParamData = <
      item
        Name = 'DATA_INICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'UNIDADE'
        DataType = ftInteger
        ParamType = ptInput
        Value = 111
      end
      item
        Name = 'FUNCIONARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = 0
      end>
  end
  object DtStResumo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select '
      '  trim(replace(escritorio, '#39'Escrit'#243'rio'#39', '#39#39')) as escritorio,'
      '  categoria, '
      '  total_ben'
      
        'from stp_rel_categoria_01 (:data_inicio, :data_fim, :unidade, :f' +
        'uncionario)'
      ''
      '/*'
      'select '
      '  trim(replace(escritorio, '#39'Escrit'#243'rio'#39', '#39#39')) as escritorio,'
      '  categoria, '
      '  total_ben'
      'from stp_rel_categoria_01 ('#39'01.01.2014'#39', '#39'31.12.2014'#39', 111, 0)'
      '*/')
    Left = 112
    Top = 360
    ParamData = <
      item
        Name = 'DATA_INICIO'
        DataType = ftString
        ParamType = ptInput
        Value = '01.01.2014'
      end
      item
        Name = 'DATA_FIM'
        DataType = ftString
        ParamType = ptInput
        Value = '31.12.2014'
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        ParamType = ptInput
        Value = '111'
      end
      item
        Name = 'FUNCIONARIO'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
  end
end
