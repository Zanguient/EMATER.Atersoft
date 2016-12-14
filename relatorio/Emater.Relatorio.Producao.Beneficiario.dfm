inherited FrmRelatorioProducaoBeneficiario: TFrmRelatorioProducaoBeneficiario
  Left = 275
  Top = 97
  ClientHeight = 516
  ClientWidth = 627
  ExplicitLeft = 8
  ExplicitTop = 8
  ExplicitWidth = 633
  ExplicitHeight = 545
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnImprimir: TcxButton
    Left = 456
    Top = 480
    ExplicitLeft = 456
    ExplicitTop = 480
  end
  inherited BtnCancelar: TcxButton
    Left = 542
    Top = 480
    ExplicitLeft = 542
    ExplicitTop = 480
  end
  inherited PgCntrlRelatorio: TcxPageControl
    Width = 609
    Height = 465
    ExplicitWidth = 609
    ExplicitHeight = 465
    ClientRectBottom = 463
    ClientRectRight = 607
    inherited TbShtFiltros: TcxTabSheet
      ExplicitWidth = 605
      ExplicitHeight = 435
      inherited ShpTitulo: TShape
        Width = 585
        Anchors = [akLeft, akTop, akRight]
        ExplicitWidth = 569
      end
      inherited LblTitulo: TLabel
        Width = 583
        Anchors = [akLeft, akTop, akRight]
        Caption = ' Produ'#231#227'o por benefici'#225'rio'
        ExplicitWidth = 583
      end
      inherited GrpBxFiltro: TcxGroupBox
        Anchors = [akLeft, akTop, akRight, akBottom]
        ExplicitWidth = 585
        ExplicitHeight = 313
        Height = 313
        Width = 585
        inherited ImgMain: TImage
          Left = 446
          Top = 191
          Anchors = [akRight, akBottom]
          ExplicitLeft = 446
          ExplicitTop = 238
        end
        object LblSafra: TLabel
          Left = 8
          Top = 20
          Width = 95
          Height = 13
          Caption = 'Per'#237'odo da colheita:'
          Transparent = True
        end
        object LblBarra: TLabel
          Left = 172
          Top = 20
          Width = 4
          Height = 13
          Caption = '/'
        end
        inline FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionario
          Left = 8
          Top = 40
          Width = 425
          Height = 65
          TabOrder = 2
          ExplicitLeft = 8
          ExplicitTop = 40
          ExplicitWidth = 425
          ExplicitHeight = 65
          inherited LblUnidade: TLabel
            Left = 0
            ExplicitLeft = 0
          end
          inherited LblFuncionario: TLabel
            Left = 0
            Top = 44
            ExplicitLeft = 0
            ExplicitTop = 44
          end
          inherited LkpCmbBxUnidade: TcxLookupComboBox
            Left = 120
            ExplicitLeft = 120
            ExplicitWidth = 305
            Width = 305
          end
          inherited LkpCmbBxFuncionario: TcxLookupComboBox
            Left = 120
            Top = 40
            ExplicitLeft = 120
            ExplicitTop = 40
            ExplicitWidth = 305
            Width = 305
          end
        end
        inline FrmFiltroProducao: TFrmRelatorioFiltroProducao
          Left = 8
          Top = 104
          Width = 441
          Height = 193
          TabOrder = 3
          ExplicitLeft = 8
          ExplicitTop = 104
          ExplicitWidth = 441
          ExplicitHeight = 193
          inherited LblGrupo: TLabel
            Left = 0
            Top = 76
            ExplicitLeft = 0
            ExplicitTop = 76
          end
          inherited LblClasse: TLabel
            Left = 0
            Top = 108
            ExplicitLeft = 0
            ExplicitTop = 108
          end
          inherited LblCultura: TLabel
            Left = 0
            Top = 140
            ExplicitLeft = 0
            ExplicitTop = 140
          end
          inherited LblSistema: TLabel
            Left = 0
            Top = 172
            ExplicitLeft = 0
            ExplicitTop = 172
          end
          inherited LblCategoria: TLabel
            Left = 0
            ExplicitLeft = 0
          end
          inherited LblAtividade: TLabel
            Left = 0
            Top = 44
            ExplicitLeft = 0
            ExplicitTop = 44
          end
          inherited LkpCmbBxGrupo: TcxLookupComboBox
            Left = 120
            Top = 72
            ExplicitLeft = 120
            ExplicitTop = 72
            ExplicitWidth = 305
            Width = 305
          end
          inherited LkpCmbBxClasse: TcxLookupComboBox
            Left = 120
            Top = 104
            ExplicitLeft = 120
            ExplicitTop = 104
            ExplicitWidth = 305
            Width = 305
          end
          inherited LkpCmbBxCultura: TcxLookupComboBox
            Left = 120
            Top = 136
            ExplicitLeft = 120
            ExplicitTop = 136
            ExplicitWidth = 305
            Width = 305
          end
          inherited LkpCmbBxSistema: TcxLookupComboBox
            Left = 120
            Top = 168
            ExplicitLeft = 120
            ExplicitTop = 168
            ExplicitWidth = 305
            Width = 305
          end
          inherited LkpCmbBxCategoria: TcxLookupComboBox
            Left = 120
            ExplicitLeft = 120
            ExplicitWidth = 305
            Width = 305
          end
          inherited LkpCmbBxAtividade: TcxLookupComboBox
            Left = 120
            Top = 40
            ExplicitLeft = 120
            ExplicitTop = 40
            ExplicitWidth = 305
            Width = 305
          end
          inherited DtSrcGrupo: TDataSource
            Top = 64
          end
          inherited DtSrcClasse: TDataSource
            Top = 96
          end
          inherited DtSrcCultura: TDataSource
            Top = 136
          end
          inherited DtSrcSistema: TDataSource
            Left = 216
            Top = 160
          end
          inherited DtSrcCategoria: TDataSource
            Left = 352
            Top = 8
          end
          inherited DtSrcAtividade: TDataSource
            Left = 288
            Top = 32
          end
        end
        object EdtAnoInicio: TcxTextEdit
          Left = 128
          Top = 16
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 4
          TabOrder = 0
          Text = '2014'
          Width = 41
        end
        object EdtAnoFim: TcxTextEdit
          Left = 179
          Top = 16
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 4
          TabOrder = 1
          Text = '2014'
          Width = 41
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        Top = 34
        Anchors = [akLeft, akTop, akRight]
        ExplicitTop = 34
        ExplicitWidth = 585
        ExplicitHeight = 76
        Height = 76
        Width = 585
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            'Unidade de produ'#231#227'o familiar e benefici'#225'rio')
          Text = 'Unidade de produ'#231#227'o familiar e benefici'#225'rio'
        end
      end
    end
  end
  inherited BtnLimpar: TcxButton
    Top = 480
    OnClick = BtnLimparClick
    ExplicitTop = 480
  end
  inherited FrxPrincipal: TfrxReport
    EngineOptions.PrintIfEmpty = True
    ReportOptions.Name = 'Quantidade de benefici'#225'rios por categoria'
    ReportOptions.LastChange = 42491.753490196760000000
    ScriptText.Strings = (
      'begin'
      '    '
      'end.')
    Left = 264
    Top = 64
    Datasets = <
      item
        DataSet = FrxDtStBeneficiario
        DataSetName = 'DtStBeneficiario'
      end
      item
        DataSet = FrxDtStComercio
        DataSetName = 'DtStComercio'
      end
      item
        DataSet = FrxDtStGrafico
        DataSetName = 'DtStGrafico'
      end
      item
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
      end
      item
        DataSet = FrxDtStProducao
        DataSetName = 'DtStProducao'
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
        Value = #39'Teste'#39
      end
      item
        Name = 'usuario'
        Value = #39'Teste'#39
      end
      item
        Name = 'titulo'
        Value = #39'Teste'#39
      end
      item
        Name = 'filtro_periodo'
        Value = #39'Teste'#39
      end
      item
        Name = 'filtro_unidade'
        Value = #39'Teste'#39
      end
      item
        Name = 'filtro_funcionario'
        Value = #39'Teste'#39
      end
      item
        Name = 'filtro_atributos'
        Value = #39'Atributos'#39
      end>
    Style = <>
    inherited Page1: TfrxReportPage
      PaperSize = 256
      Frame.Width = 0.500000000000000000
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
        inherited Memo1: TfrxMemoView
          Width = 1046.929810000000000000
        end
      end
      inherited PageFooter: TfrxPageFooter
        Top = 740.787880000000000000
        inherited MemoDataHora: TfrxMemoView
          Memo.UTF8W = (
            '[<Date>] [FormatDateTime('#39'hh:nn'#39',<Time>)]')
          Formats = <
            item
            end
            item
            end>
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
        Height = 79.370130000000000000
        inherited MemoTitulo: TfrxMemoView
          Height = 26.456692910000000000
          DisplayFormat.DecimalSeparator = ''
          Memo.UTF8W = (
            'Produ'#231#227'o e comercializa'#231#227'o por benefici'#225'rio')
        end
        object Memo15: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 52.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[filtro_periodo] [filtro_unidade] [filtro_funcionario]'
            '[filtro_atributos]')
          ParentFont = False
        end
      end
      object MasterDataPrincipal: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
        RowCount = 0
        StartNewPage = True
        object Memo5: TfrxMemoView
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidade de produ'#231#227'o familiar')
          ParentFont = False
        end
        object DtStPrincipalUPF: TfrxMemoView
          Top = 11.338590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          DataField = 'UPF'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DtStPrincipal."UPF"]')
          ParentFont = False
          SuppressRepeated = True
          WordBreak = True
          WordWrap = False
        end
      end
      object GroupHeaderPrincipal: TfrxGroupHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        Condition = '1=1'
        ReprintOnNewPage = True
        object Memo30: TfrxMemoView
          Width = 718.110700000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Produ'#231#227'o por benefici'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooterComercio: TfrxGroupFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 661.417750000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
        end
      end
      object DetailDataBeneficiarioUPF: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 396.850650000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStBeneficiario
        DataSetName = 'DtStBeneficiario'
        RowCount = 0
        object DtStPrincipalCPF: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataSet = FrxDtStBeneficiario
          DataSetName = 'DtStBeneficiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FormatMaskText('#39'999.999.999-99;0; '#39',<DtStBeneficiario."CPF">)]')
          ParentFont = False
          SuppressRepeated = True
          WordBreak = True
          WordWrap = False
        end
        object DtStPrincipalNOME: TfrxMemoView
          Left = 94.488250000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = FrxDtStBeneficiario
          DataSetName = 'DtStBeneficiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStBeneficiario."NOME"]')
          ParentFont = False
          SuppressRepeated = True
          WordBreak = True
        end
        object DtStBeneficiarioCATEGORIA: TfrxMemoView
          Left = 359.055350000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          DataField = 'CATEGORIA'
          DataSet = FrxDtStBeneficiario
          DataSetName = 'DtStBeneficiario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStBeneficiario."CATEGORIA"]')
          ParentFont = False
        end
      end
      object HeaderBeneficiarioUPF: TfrxHeader
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 355.275820000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 94.488250000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nome do benefici'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 359.055350000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailDataBeneficiarioProducao: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 495.118430000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStProducao
        DataSetName = 'DtStProducao'
        RowCount = 0
        object DtStPrincipalSAFRA_INICIO_FIM: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'SAFRA_INICIO_FIM'
          DataSet = FrxDtStProducao
          DataSetName = 'DtStProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DtStProducao."SAFRA_INICIO_FIM"]')
          ParentFont = False
        end
        object DtStPrincipalCULTURA_NOME: TfrxMemoView
          Left = 94.488250000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO'
          DataSet = FrxDtStProducao
          DataSetName = 'DtStProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducao."PRODUTO"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
        end
        object DtStPrincipalAREA_PLANTADA: TfrxMemoView
          Left = 359.055350000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'AREA_PLANTADA'
          DataSet = FrxDtStProducao
          DataSetName = 'DtStProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducao."AREA_PLANTADA"]')
          ParentFont = False
        end
        object DtStPrincipalAREA_COLHIDA1: TfrxMemoView
          Left = 434.645950000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'AREA_COLHIDA'
          DataSet = FrxDtStProducao
          DataSetName = 'DtStProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducao."AREA_COLHIDA"]')
          ParentFont = False
        end
        object DtStPrincipalQUANTIDADE: TfrxMemoView
          Left = 502.677490000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = FrxDtStProducao
          DataSetName = 'DtStProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducao."QUANTIDADE"]')
          ParentFont = False
        end
        object DtStPrincipalUNIDADE_MEDIDA: TfrxMemoView
          Left = 600.945270000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'UNIDADE'
          DataSet = FrxDtStProducao
          DataSetName = 'DtStProducao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducao."UNIDADE"]')
          ParentFont = False
        end
      end
      object HeaderBeneficiarioProducao: TfrxHeader
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 438.425480000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Safra')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 94.488250000000000000
          Width = 264.567100000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Produto/com'#233'rcio/servi'#231'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 359.055350000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #193'rea plantada (ha)')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 434.645950000000000000
          Width = 68.031491180000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #193'rea colhida (ha)')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 502.677490000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 597.165740000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeaderComercio: TfrxGroupHeader
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 536.693260000000000000
        Width = 718.110700000000000000
        Condition = '1=1'
        KeepTogether = True
        ReprintOnNewPage = True
        object Memo16: TfrxMemoView
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Safra')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 94.488250000000000000
          Top = 26.456710000000000000
          Width = 264.567100000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Produto comercializado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 359.055350000000000000
          Top = 26.456710000000000000
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 555.590910000000000000
          Top = 26.456710000000000000
          Width = 68.031491180000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Valor (R$)')
          ParentFont = False
          WordBreak = True
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 623.622450000000000000
          Top = 26.456710000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Total (R$)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 434.645950000000000000
          Top = 26.456710000000000000
          Width = 120.944960000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Width = 718.110700000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Comercializa'#231#227'o por benefici'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailDataComercio: TfrxDetailData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 619.842920000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStComercio
        DataSetName = 'DtStComercio'
        RowCount = 0
        object DtStComercioSAFRA_INICIO_FIM: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'SAFRA_INICIO_FIM'
          DataSet = FrxDtStComercio
          DataSetName = 'DtStComercio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DtStComercio."SAFRA_INICIO_FIM"]')
          ParentFont = False
        end
        object DtStComercioCOMERCIO_DESCRICAO: TfrxMemoView
          Left = 94.488250000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          DataField = 'COMERCIO_DESCRICAO'
          DataSet = FrxDtStComercio
          DataSetName = 'DtStComercio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStComercio."COMERCIO_DESCRICAO"]')
          ParentFont = False
        end
        object DtStComercioCOMERCIO_QUANTIDADE: TfrxMemoView
          Left = 359.055350000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataField = 'COMERCIO_QUANTIDADE'
          DataSet = FrxDtStComercio
          DataSetName = 'DtStComercio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStComercio."COMERCIO_QUANTIDADE"]')
          ParentFont = False
        end
        object DtStComercioCOMERCIO_UNIDADE: TfrxMemoView
          Left = 438.425480000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'COMERCIO_UNIDADE'
          DataSet = FrxDtStComercio
          DataSetName = 'DtStComercio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStComercio."COMERCIO_UNIDADE"]')
          ParentFont = False
        end
        object DtStComercioCOMERCIO_VALOR: TfrxMemoView
          Left = 555.590910000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'COMERCIO_VALOR'
          DataSet = FrxDtStComercio
          DataSetName = 'DtStComercio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStComercio."COMERCIO_VALOR"]')
          ParentFont = False
        end
        object DtStComercioCOMERCIO_TOTAL: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'COMERCIO_TOTAL'
          DataSet = FrxDtStComercio
          DataSetName = 'DtStComercio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStComercio."COMERCIO_TOTAL"]')
          ParentFont = False
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
      object PageHeaderResumo: TfrxPageHeader
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
        object Memo31: TfrxMemoView
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
        object Memo32: TfrxMemoView
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
        object Memo33: TfrxMemoView
          Top = 56.692950000000000000
          Width = 1046.929810000000000000
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
      object HeaderResumo: TfrxHeader
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo34: TfrxMemoView
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
            'Relat'#243'rio de produ'#231#227'o e comercializa'#231#227'o por benefici'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 41.574830000000000000
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
        end
      end
      object MasterDataREsumo: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStResumo
        DataSetName = 'DtStResumo'
        RowCount = 0
        object DtStResumoCULTURA_NOME: TfrxMemoView
          Left = 56.692950000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          DataField = 'CULTURA_NOME'
          DataSet = FrxDtStResumo
          DataSetName = 'DtStResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStResumo."CULTURA_NOME"]')
          ParentFont = False
        end
        object DtStResumoBENEFICIARIOS: TfrxMemoView
          Left = 283.464750000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'BENEFICIARIOS'
          DataSet = FrxDtStResumo
          DataSetName = 'DtStResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[DtStResumo."BENEFICIARIOS"]')
          ParentFont = False
        end
        object DtStResumoTOTAL_QUANTIDADE: TfrxMemoView
          Left = 362.834880000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          DataSet = FrxDtStResumo
          DataSetName = 'DtStResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DtStResumo."TOTAL_QUANTIDADE"]')
          ParentFont = False
        end
        object DtStResumoUNIDADE_MEDIDA: TfrxMemoView
          Left = 445.984540000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'UNIDADE_MEDIDA'
          DataSet = FrxDtStResumo
          DataSetName = 'DtStResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStResumo."UNIDADE_MEDIDA"]')
          ParentFont = False
        end
        object DtStResumoTOTAL_AREA_PLANTADA: TfrxMemoView
          Left = 566.929500000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL_AREA_PLANTADA'
          DataSet = FrxDtStResumo
          DataSetName = 'DtStResumo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStResumo."TOTAL_AREA_PLANTADA"]')
          ParentFont = False
        end
      end
      object GroupHeaderResumo: TfrxGroupHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        Condition = '1=1'
        KeepTogether = True
        ReprintOnNewPage = True
        object Memo25: TfrxMemoView
          Left = 56.692950000000000000
          Width = 604.724800000000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 1.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Resumo da produ'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 56.692950000000000000
          Top = 34.015770000000000000
          Width = 226.771800000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Sistema produtivo/cultura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 283.464750000000000000
          Top = 34.015770000000000000
          Width = 79.370130000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Benefici'#225'rios')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 362.834880000000000000
          Top = 34.015770000000000000
          Width = 204.094620000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Total produzido'
            '(quantidade/unidade)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 566.929500000000000000
          Top = 34.015770000000000000
          Width = 94.488250000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            #193'rea total plantada (ha)')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooterResumo: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 729.449290000000000000
        Width = 718.110700000000000000
        object Memo36: TfrxMemoView
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
        object Memo37: TfrxMemoView
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
        object Memo38: TfrxMemoView
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
        object Memo39: TfrxMemoView
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
      object GroupFooterResumo: TfrxGroupFooter
        FillType = ftBrush
        Height = 283.464750000000000000
        Top = 385.512060000000000000
        Width = 718.110700000000000000
        object Chart1: TfrxChartView
          Left = 56.692950000000000000
          Top = 3.779530000000000000
          Width = 604.724800000000000000
          Height = 279.685220000000000000
          HighlightColor = clBlack
          Chart = {
            5450463006544368617274054368617274044C656674020003546F7002000557
            696474680390010648656967687403FA00144261636B57616C6C2E50656E2E56
            697369626C650810426F74746F6D57616C6C2E436F6C6F720707636C426C6163
            6B11426F74746F6D57616C6C2E4461726B3344080F426F74746F6D57616C6C2E
            53697A650201104C6567656E642E416C69676E6D656E7407086C61426F74746F
            6D115469746C652E466F6E742E48656967687402F3125469746C652E54657874
            2E537472696E6773011414000000524553554D4F2044412050524F4455C387C3
            834F0016426F74746F6D417869732E4C6162656C73416E676C65025A17426F74
            746F6D417869732E4C6162656C734F6E417869730812426F74746F6D41786973
            2E56697369626C65080D4672616D652E56697369626C65080656696577334408
            165669657733444F7074696F6E732E526F746174696F6E02000B566965773344
            57616C6C73080D5A6F6F6D2E50656E2E4D6F64650708706D4E6F74586F720A42
            6576656C4F75746572070662764E6F6E6505436F6C6F720707636C5768697465
            0D44656661756C7443616E766173060E54474449506C757343616E7661731143
            6F6C6F7250616C65747465496E646578020D000A544261725365726965730753
            6572696573310B4C6567656E642E54657874140900000054C3A9636E69636F73
            0B4C6567656E645469746C65140900000054C3A9636E69636F730E436F6C6F72
            45616368506F696E74090D4D61726B732E56697369626C65080B4D61726B732E
            416E676C65025A0B56616C7565466F726D61740605232C2323300D4D61726B73
            4C6F636174696F6E07086D6C43656E7465720C5856616C7565732E4E616D6506
            01580D5856616C7565732E4F72646572070B6C6F417363656E64696E670C5956
            616C7565732E4E616D6506034261720D5956616C7565732E4F7264657207066C
            6F4E6F6E65000000}
          ChartElevation = 345
          SeriesData = <
            item
              InheritedName = 'TfrxSeriesItem2'
              DataType = dtDBData
              DataSet = FrxDtStGrafico
              DataSetName = 'DtStGrafico'
              SortOrder = soDescending
              TopN = 0
              XType = xtText
              Source1 = 'DtStGrafico."CULTURA_NOME"'
              Source2 = 'DtStGrafico."TOTAL_QUANTIDADE"'
              XSource = 'DtStGrafico."CULTURA_NOME"'
              YSource = 'DtStGrafico."TOTAL_QUANTIDADE"'
            end>
        end
      end
    end
  end
  object FrxDtStPrincipal: TfrxDBDataset
    UserName = 'DtStPrincipal'
    CloseDataSource = False
    DataSet = DtStPrincipal
    BCDToCurrency = False
    Left = 296
    Top = 64
  end
  object FrxDtStResumo: TfrxDBDataset
    UserName = 'DtStResumo'
    CloseDataSource = False
    DataSet = DtStResumo
    BCDToCurrency = False
    Left = 296
    Top = 128
  end
  object FrxDtStComercio: TfrxDBDataset
    UserName = 'DtStComercio'
    CloseDataSource = False
    DataSet = DtStComercio
    BCDToCurrency = False
    Left = 296
    Top = 96
  end
  object FrxDtStGrafico: TfrxDBDataset
    UserName = 'DtStGrafico'
    CloseDataSource = False
    DataSet = DtStGrafico
    BCDToCurrency = False
    Left = 424
    Top = 128
  end
  object FrxDtStBeneficiario: TfrxDBDataset
    UserName = 'DtStBeneficiario'
    CloseDataSource = False
    DataSet = DtStBeneficiario
    BCDToCurrency = False
    Left = 392
    Top = 64
  end
  object DtSrcPrincipal: TDataSource
    DataSet = DtStPrincipal
    Left = 360
    Top = 64
  end
  object FrxDtStProducao: TfrxDBDataset
    UserName = 'DtStProducao'
    CloseDataSource = False
    DataSet = DtStProducao
    BCDToCurrency = False
    Left = 456
    Top = 64
  end
  object DtStPrincipal: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  id,'
      '  upf,'
      '  categoria_inicio,'
      '  categoria_fim,'
      '  ano_inicio,'
      '  ano_fim,'
      '  divisao_inicio,'
      '  divisao_fim,'
      '  grupo_inicio,'
      '  grupo_fim,'
      '  classe_inicio,'
      '  classe_fim,'
      '  produto_inicio,'
      '  produto_fim,'
      '  sistema_inicio,'
      '  sistema_fim'
      'from stp_rel_producao_01('
      '  :ID_ANO_INICIO,'
      '  :ID_ANO_FIM,'
      '  :ID_UNIDADE,'
      '  :ID_TECNICO,'
      '  :ID_CATEGORIA,'
      '  :ID_DIVISAO,'
      '  :ID_GRUPO,'
      '  :ID_CLASSE,'
      '  :ID_PRODUTO,'
      '  :ID_SISTEMA) '
      'order by upf')
    Left = 328
    Top = 64
    ParamData = <
      item
        Name = 'ID_ANO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_ANO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_UNIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_TECNICO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CATEGORIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_DIVISAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_GRUPO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CLASSE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SISTEMA'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object DtStPrincipalID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
    end
    object DtStPrincipalUPF: TStringField
      FieldName = 'UPF'
      Origin = 'UPF'
      Size = 100
    end
    object DtStPrincipalCATEGORIA_INICIO: TIntegerField
      FieldName = 'CATEGORIA_INICIO'
      Origin = 'CATEGORIA_INICIO'
    end
    object DtStPrincipalCATEGORIA_FIM: TIntegerField
      FieldName = 'CATEGORIA_FIM'
      Origin = 'CATEGORIA_FIM'
    end
    object DtStPrincipalANO_INICIO: TIntegerField
      FieldName = 'ANO_INICIO'
      Origin = 'ANO_INICIO'
    end
    object DtStPrincipalANO_FIM: TIntegerField
      FieldName = 'ANO_FIM'
      Origin = 'ANO_FIM'
    end
    object DtStPrincipalDIVISAO_INICIO: TIntegerField
      FieldName = 'DIVISAO_INICIO'
      Origin = 'DIVISAO_INICIO'
    end
    object DtStPrincipalDIVISAO_FIM: TIntegerField
      FieldName = 'DIVISAO_FIM'
      Origin = 'DIVISAO_FIM'
    end
    object DtStPrincipalGRUPO_INICIO: TIntegerField
      FieldName = 'GRUPO_INICIO'
      Origin = 'GRUPO_INICIO'
    end
    object DtStPrincipalGRUPO_FIM: TIntegerField
      FieldName = 'GRUPO_FIM'
      Origin = 'GRUPO_FIM'
    end
    object DtStPrincipalCLASSE_INICIO: TIntegerField
      FieldName = 'CLASSE_INICIO'
      Origin = 'CLASSE_INICIO'
    end
    object DtStPrincipalCLASSE_FIM: TIntegerField
      FieldName = 'CLASSE_FIM'
      Origin = 'CLASSE_FIM'
    end
    object DtStPrincipalPRODUTO_INICIO: TIntegerField
      FieldName = 'PRODUTO_INICIO'
      Origin = 'PRODUTO_INICIO'
    end
    object DtStPrincipalPRODUTO_FIM: TIntegerField
      FieldName = 'PRODUTO_FIM'
      Origin = 'PRODUTO_FIM'
    end
    object DtStPrincipalSISTEMA_INICIO: TIntegerField
      FieldName = 'SISTEMA_INICIO'
      Origin = 'SISTEMA_INICIO'
    end
    object DtStPrincipalSISTEMA_FIM: TIntegerField
      FieldName = 'SISTEMA_FIM'
      Origin = 'SISTEMA_FIM'
    end
    object DtStPrincipalSAFRA_INICIO_FIM: TStringField
      FieldKind = fkCalculated
      FieldName = 'SAFRA_INICIO_FIM'
      Size = 50
      Calculated = True
    end
  end
  object DtStComercio: TFDQuery
    OnCalcFields = DtStComercioCalcFields
    MasterSource = DtSrcPrincipal
    MasterFields = 
      'ID;ANO_INICIO;ANO_FIM;SISTEMA_INICIO;SISTEMA_FIM;PRODUTO_INICIO;' +
      'PRODUTO_FIM;DIVISAO_INICIO;DIVISAO_FIM;GRUPO_INICIO;GRUPO_FIM;CL' +
      'ASSE_INICIO;CLASSE_FIM'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select d.pro_id, d.atv_id, g.prp_id,'
      '  d.atv_periodo_plantio as safra_inicio,'
      '  d.atv_periodo_colheita as safra_fim,'
      
        '  coalesce(i.prd_descricao, coalesce(h.dev_descricao, g.prp_desc' +
        'ricao)) as comercio_descricao,'
      '  g.prp_qtde_comercializada as comercio_quantidade,'
      
        '  k.uni_descricao || '#39' ('#39' || k.uni_sigla || '#39')'#39' as comercio_unid' +
        'ade,'
      '  g.prp_valor as comercio_valor,'
      '  (g.prp_qtde_comercializada * g.prp_valor) as comercio_total,'
      '  l.des_descricao as comercio_destinos'
      'from'
      
        '  tab_cad_producao_atividade d join tab_cad_produto e on (d.prd_' +
        'id = e.prd_id) join'
      '  tab_cad_unidade_medida f on (f.uni_id = d.uni_id) join'
      '  tab_cad_producao_produto g on (g.atv_id = d.atv_id) left join'
      '  tab_cad_derivado h on (h.dev_id = g.dev_id) left join'
      '  tab_cad_produto i on (i.prd_id = g.prd_id) left join'
      '  tab_cad_sistema_produtivo j on (j.sip_id = d.sip_id) left join'
      '  tab_cad_unidade_medida k on (k.uni_id = g.uni_id) left join'
      '  tab_cad_destino l on (g.des_id = l.des_id)'
      'where'
      '  (d.pro_id = :id) and'
      
        '  (((d.atv_periodo_colheita >= :ano_inicio) and (d.atv_periodo_c' +
        'olheita <= :ano_fim)) or'
      '  (d.atv_ano between :ano_inicio and :ano_fim))  and'
      '  (d.reg_excluido = 0) and'
      '  (d.sip_id between :sistema_inicio and :sistema_fim) and'
      '  (d.prd_id between :produto_inicio and :produto_fim) and'
      '  (e.div_id between :divisao_inicio and :divisao_fim) and'
      '  (e.grp_id between :grupo_inicio and :grupo_fim) and'
      '  (e.cls_id between :classe_inicio and :classe_fim) and'
      '  (g.reg_excluido = 0)'
      'order by comercio_descricao')
    Left = 328
    Top = 96
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'ANO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'ANO_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'SISTEMA_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'SISTEMA_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'PRODUTO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'PRODUTO_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'DIVISAO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'DIVISAO_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'GRUPO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'GRUPO_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CLASSE_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CLASSE_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object DtStComercioPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object DtStComercioATV_ID: TLargeintField
      FieldName = 'ATV_ID'
      Origin = 'ATV_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStComercioPRP_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRP_ID'
      Origin = 'PRP_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object DtStComercioSAFRA_INICIO: TIntegerField
      FieldName = 'SAFRA_INICIO'
      Origin = 'ATV_PERIODO_PLANTIO'
    end
    object DtStComercioSAFRA_FIM: TIntegerField
      FieldName = 'SAFRA_FIM'
      Origin = 'ATV_PERIODO_COLHEITA'
    end
    object DtStComercioCOMERCIO_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMERCIO_DESCRICAO'
      Origin = 'COMERCIO_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object DtStComercioCOMERCIO_QUANTIDADE: TCurrencyField
      AutoGenerateValue = arDefault
      FieldName = 'COMERCIO_QUANTIDADE'
      Origin = 'PRP_QTDE_COMERCIALIZADA'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = ',##0.000'
      EditFormat = '0.000'
      currency = False
    end
    object DtStComercioCOMERCIO_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMERCIO_UNIDADE'
      Origin = 'COMERCIO_UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 63
    end
    object DtStComercioCOMERCIO_VALOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMERCIO_VALOR'
      Origin = 'PRP_VALOR'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
    end
    object DtStComercioCOMERCIO_TOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMERCIO_TOTAL'
      Origin = 'COMERCIO_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 5
    end
    object DtStComercioCOMERCIO_DESTINOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMERCIO_DESTINOS'
      Origin = 'DES_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object DtStComercioSAFRA_INICIO_FIM: TStringField
      FieldKind = fkCalculated
      FieldName = 'SAFRA_INICIO_FIM'
      Size = 50
      Calculated = True
    end
  end
  object DtStBeneficiario: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'ID;CATEGORIA_INICIO;CATEGORIA_FIM'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  b.ben_cpf as cpf,'
      '  b.ben_nome as nome,'
      
        '  (select categorias from stp_rel_base_categoria_01(b.ben_id)) a' +
        's categoria'
      'from'
      
        '  tab_cad_beneficiario_producao a join tab_cad_beneficiario b on' +
        ' (a.ben_id = b.ben_id)'
      'where'
      '  (a.pro_id = :id) and'
      '  (b.ben_situacao in (1, 2)) and'
      '  (b.reg_excluido = 0) and'
      '  exists ('
      '    select 1'
      '    from tab_cad_beneficiario_categoria c'
      
        '    where (c.ben_id = a.ben_id) and (c.cat_id between :categoria' +
        '_inicio and :categoria_fim)'
      '  )'
      'order by'
      '  b.ben_nome')
    Left = 424
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CATEGORIA_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CATEGORIA_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object DtStBeneficiarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object DtStBeneficiarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 150
    end
    object DtStBeneficiarioCATEGORIA: TStringField
      FieldName = 'CATEGORIA'
      Origin = 'CATEGORIA'
      Size = 2000
    end
  end
  object DtStProducao: TFDQuery
    OnCalcFields = DtStProducaoCalcFields
    MasterSource = DtSrcPrincipal
    MasterFields = 
      'ID;ANO_INICIO;ANO_FIM;SISTEMA_INICIO;SISTEMA_FIM;PRODUTO_INICIO;' +
      'PRODUTO_FIM;DIVISAO_INICIO;DIVISAO_FIM;GRUPO_INICIO;GRUPO_FIM;CL' +
      'ASSE_INICIO;CLASSE_FIM'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  d.atv_periodo_plantio as safra_inicio,'
      '  d.atv_periodo_colheita as safra_fim,'
      '  e.prd_descricao as produto,'
      '  d.atv_area_plantada as area_plantada,'
      '  d.atv_area_colhida as area_colhida,'
      '  d.atv_quantidade as quantidade,'
      '  f.uni_descricao || '#39' ('#39' || f.uni_sigla || '#39')'#39' as unidade'
      'from'
      
        '  tab_cad_producao_atividade d join tab_cad_produto e on (d.prd_' +
        'id = e.prd_id) join'
      '  tab_cad_unidade_medida f on (f.uni_id = d.uni_id)'
      'where'
      '  (d.pro_id = :id) and'
      
        '  (d.atv_periodo_colheita >= :ano_inicio) and (d.atv_periodo_col' +
        'heita <= :ano_fim) and'
      '  (d.reg_excluido = 0) and'
      '  (d.sip_id between :sistema_inicio and :sistema_fim) and'
      '  (d.prd_id between :produto_inicio and :produto_fim) and'
      '  (e.div_id between :divisao_inicio and :divisao_fim) and'
      '  (e.grp_id between :grupo_inicio and :grupo_fim) and'
      '  (e.cls_id between :classe_inicio and :classe_fim)'
      'order by'
      '  safra_inicio, safra_fim, produto')
    Left = 488
    Top = 64
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'ANO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'ANO_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'SISTEMA_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'SISTEMA_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'PRODUTO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'PRODUTO_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'DIVISAO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'DIVISAO_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'GRUPO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'GRUPO_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CLASSE_INICIO'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'CLASSE_FIM'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object DtStProducaoSAFRA_INICIO: TIntegerField
      FieldName = 'SAFRA_INICIO'
      Origin = 'ATV_PERIODO_PLANTIO'
    end
    object DtStProducaoSAFRA_FIM: TIntegerField
      FieldName = 'SAFRA_FIM'
      Origin = 'ATV_PERIODO_COLHEITA'
    end
    object DtStProducaoPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object DtStProducaoAREA_PLANTADA: TCurrencyField
      FieldName = 'AREA_PLANTADA'
      Origin = 'ATV_AREA_PLANTADA'
    end
    object DtStProducaoAREA_COLHIDA: TCurrencyField
      FieldName = 'AREA_COLHIDA'
      Origin = 'ATV_AREA_COLHIDA'
    end
    object DtStProducaoQUANTIDADE: TCurrencyField
      FieldName = 'QUANTIDADE'
      Origin = 'ATV_QUANTIDADE'
    end
    object DtStProducaoUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 63
    end
    object DtStProducaoSAFRA_INICIO_FIM: TStringField
      FieldKind = fkCalculated
      FieldName = 'SAFRA_INICIO_FIM'
      Size = 50
      Calculated = True
    end
  end
  object DtStResumo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  g.sip_descricao || '#39' - '#39' || e.prd_descricao as cultura_nome,'
      '  (select count(*) from ('
      '    select distinct a.ben_id'
      
        '    from tab_cad_beneficiario_producao a join tab_cad_beneficiar' +
        'io b on (a.ben_id = b.ben_id)'
      '    where'
      '      (a.pro_id  in ('
      '        select id'
      '        from stp_rel_producao_01('
      '          :id_ano_inicio,'
      '          :id_ano_fim,'
      '          :id_unidade,'
      '          :id_tecnico,'
      '          :id_categoria,'
      '          :id_divisao,'
      '          :id_grupo,'
      '          :id_classe,'
      '          :id_produto,'
      '          :id_sistema) '
      '        )'
      '      ) and'
      '      (b.ben_situacao in (1, 2)) and'
      '      (b.reg_excluido = 0) and'
      '      exists ('
      '        select 1'
      '        from tab_cad_beneficiario_categoria c'
      
        '        where (c.ben_id = a.ben_id) and (c.cat_id between :categ' +
        'oria_inicio and :categoria_fim)'
      '    )'
      '  )) as beneficiarios,'
      '  sum(d.atv_quantidade) as total_quantidade,'
      '  sum(d.atv_area_plantada) as total_area_plantada,'
      
        '  f.uni_descricao || '#39' ('#39' || f.uni_sigla || '#39')'#39' as unidade_medid' +
        'a'
      'from'
      
        '  tab_cad_producao_atividade d join tab_cad_produto e on (d.prd_' +
        'id = e.prd_id) join'
      '  tab_cad_unidade_medida f on (f.uni_id = d.uni_id) join'
      '  tab_cad_sistema_produtivo g on (g.sip_id = d.sip_id)'
      'where'
      '  (d.pro_id in ('
      '    select id'
      '    from stp_rel_producao_01('
      '      :id_ano_inicio,'
      '      :id_ano_fim,'
      '      :id_unidade,'
      '      :id_tecnico,'
      '      :id_categoria,'
      '      :id_divisao,'
      '      :id_grupo,'
      '      :id_classe,'
      '      :id_produto,'
      '      :id_sistema) '
      '    )'
      '  ) and'
      
        '  (((d.atv_periodo_colheita >= :ano_inicio) and (d.atv_periodo_c' +
        'olheita <= :ano_fim)) or'
      '  (d.atv_ano between :ano_inicio and :ano_fim))  and'
      '  (d.reg_excluido = 0) and'
      '  (d.sip_id between :sistema_inicio and :sistema_fim) and'
      '  (d.prd_id between :produto_inicio and :produto_fim) and'
      '  (e.div_id between :divisao_inicio and :divisao_fim) and'
      '  (e.grp_id between :grupo_inicio and :grupo_fim) and'
      '  (e.cls_id between :classe_inicio and :classe_fim)'
      'group by'
      '  cultura_nome, unidade_medida'
      'order by'
      '  total_quantidade desc, cultura_nome')
    Left = 328
    Top = 128
    ParamData = <
      item
        Name = 'ID_ANO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_ANO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_UNIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_TECNICO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CATEGORIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_DIVISAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_GRUPO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CLASSE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SISTEMA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ANO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ANO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SISTEMA_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SISTEMA_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUTO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUTO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DIVISAO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DIVISAO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'GRUPO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'GRUPO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLASSE_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLASSE_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object DtStResumoCULTURA_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CULTURA_NOME'
      Origin = 'CULTURA_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 103
    end
    object DtStResumoBENEFICIARIOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BENEFICIARIOS'
      Origin = 'BENEFICIARIOS'
      ProviderFlags = []
      ReadOnly = True
    end
    object DtStResumoTOTAL_QUANTIDADE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_QUANTIDADE'
      Origin = 'TOTAL_QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object DtStResumoTOTAL_AREA_PLANTADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_AREA_PLANTADA'
      Origin = 'TOTAL_AREA_PLANTADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object DtStResumoUNIDADE_MEDIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 63
    end
  end
  object DtStGrafico: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  g.sip_descricao || '#39' - '#39' || e.prd_descricao as cultura_nome,'
      '  (select count(*) from ('
      '    select distinct a.ben_id'
      
        '    from tab_cad_beneficiario_producao a join tab_cad_beneficiar' +
        'io b on (a.ben_id = b.ben_id)'
      '    where'
      '      (a.pro_id  in ('
      '        select id'
      '        from stp_rel_producao_01('
      '          :id_ano_inicio,'
      '          :id_ano_fim,'
      '          :id_unidade,'
      '          :id_tecnico,'
      '          :id_categoria,'
      '          :id_divisao,'
      '          :id_grupo,'
      '          :id_classe,'
      '          :id_produto,'
      '          :id_sistema) '
      '        )'
      '      ) and'
      '      (b.ben_situacao in (1, 2)) and'
      '      (b.reg_excluido = 0) and'
      '      exists ('
      '        select 1'
      '        from tab_cad_beneficiario_categoria c'
      
        '        where (c.ben_id = a.ben_id) and (c.cat_id between :categ' +
        'oria_inicio and :categoria_fim)'
      '    )'
      '  )) as beneficiarios,'
      '  sum(d.atv_quantidade) as total_quantidade,'
      '  sum(d.atv_area_plantada) as total_area_plantada,'
      
        '  f.uni_descricao || '#39' ('#39' || f.uni_sigla || '#39')'#39' as unidade_medid' +
        'a'
      'from'
      
        '  tab_cad_producao_atividade d join tab_cad_produto e on (d.prd_' +
        'id = e.prd_id) join'
      '  tab_cad_unidade_medida f on (f.uni_id = d.uni_id) join'
      '  tab_cad_sistema_produtivo g on (g.sip_id = d.sip_id)'
      'where'
      '  (d.pro_id in ('
      '    select id'
      '    from stp_rel_producao_01('
      '      :id_ano_inicio,'
      '      :id_ano_fim,'
      '      :id_unidade,'
      '      :id_tecnico,'
      '      :id_categoria,'
      '      :id_divisao,'
      '      :id_grupo,'
      '      :id_classe,'
      '      :id_produto,'
      '      :id_sistema) '
      '    )'
      '  ) and'
      
        '  (d.atv_periodo_colheita >= :ano_inicio) and (d.atv_periodo_col' +
        'heita <= :ano_fim) and'
      '  (d.reg_excluido = 0) and'
      '  (d.sip_id between :sistema_inicio and :sistema_fim) and'
      '  (d.prd_id between :produto_inicio and :produto_fim) and'
      '  (e.div_id between :divisao_inicio and :divisao_fim) and'
      '  (e.grp_id between :grupo_inicio and :grupo_fim) and'
      '  (e.cls_id between :classe_inicio and :classe_fim)'
      'group by'
      '  cultura_nome, unidade_medida'
      'order by'
      '  total_quantidade desc, cultura_nome')
    Left = 456
    Top = 128
    ParamData = <
      item
        Name = 'ID_ANO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_ANO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_UNIDADE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_TECNICO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CATEGORIA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_DIVISAO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_GRUPO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_CLASSE'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ID_SISTEMA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CATEGORIA_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ANO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'ANO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SISTEMA_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SISTEMA_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUTO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PRODUTO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DIVISAO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DIVISAO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'GRUPO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'GRUPO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLASSE_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CLASSE_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object DtStGraficoCULTURA_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CULTURA_NOME'
      Origin = 'CULTURA_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 103
    end
    object DtStGraficoBENEFICIARIOS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BENEFICIARIOS'
      Origin = 'BENEFICIARIOS'
      ProviderFlags = []
      ReadOnly = True
    end
    object DtStGraficoTOTAL_QUANTIDADE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_QUANTIDADE'
      Origin = 'TOTAL_QUANTIDADE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object DtStGraficoTOTAL_AREA_PLANTADA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_AREA_PLANTADA'
      Origin = 'TOTAL_AREA_PLANTADA'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object DtStGraficoUNIDADE_MEDIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 63
    end
  end
end
