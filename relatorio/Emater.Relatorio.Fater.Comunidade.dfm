inherited FrmRelatorioFaterComunidade: TFrmRelatorioFaterComunidade
  Left = 362
  Top = 152
  ExplicitLeft = 362
  ExplicitTop = 152
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      inherited LblTitulo: TLabel
        Caption = ' Relat'#243'rio de atendimentos por comunidade'
      end
      inherited GrpBxFiltro: TcxGroupBox
        object LblAno: TLabel
          Left = 8
          Top = 28
          Width = 23
          Height = 13
          Caption = 'Ano:'
        end
        object LblComunidade: TLabel
          Left = 8
          Top = 148
          Width = 178
          Height = 13
          Caption = 'Quantidade m'#237'nima de atendimentos:'
        end
        inline FrmFiltroMetodologia: TFrmRelatorioFiltroMetodologia
          Left = 8
          Top = 96
          Width = 425
          Height = 33
          TabOrder = 2
          ExplicitLeft = 8
          ExplicitTop = 96
          ExplicitWidth = 425
          ExplicitHeight = 33
          inherited LblMetodologia: TLabel
            Left = 0
            Top = 4
            ExplicitLeft = 0
            ExplicitTop = 4
          end
          inherited LkpCmbBxMetodologia: TcxLookupComboBox
            Left = 80
            Top = 0
            ExplicitLeft = 80
            ExplicitTop = 0
          end
          inherited DtSrcMetodologia: TDataSource
            Top = 0
          end
        end
        inline FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionario
          Left = 8
          Top = 48
          Width = 425
          Height = 47
          TabOrder = 1
          ExplicitLeft = 8
          ExplicitTop = 48
          ExplicitWidth = 425
          ExplicitHeight = 47
          inherited LblUnidade: TLabel
            Left = 0
            Top = 4
            ExplicitLeft = 0
            ExplicitTop = 4
          end
          inherited LblFuncionario: TLabel
            Left = 0
            Top = 28
            ExplicitLeft = 0
            ExplicitTop = 28
          end
          inherited LkpCmbBxUnidade: TcxLookupComboBox
            Left = 80
            Top = 0
            Properties.OnEditValueChanged = FrmFiltroLkpCmbBxUnidadePropertiesEditValueChanged
            ExplicitLeft = 80
            ExplicitTop = 0
          end
          inherited LkpCmbBxFuncionario: TcxLookupComboBox
            Left = 80
            Top = 24
            ExplicitLeft = 80
            ExplicitTop = 24
          end
          inherited DtSrcUnidadeLocal: TDataSource
            Left = 304
          end
          inherited DtSrcFuncionarioLocal: TDataSource
            Left = 248
            Top = 16
          end
        end
        object EdtAno: TcxTextEdit
          Left = 88
          Top = 24
          Properties.Alignment.Horz = taCenter
          Properties.MaxLength = 4
          TabOrder = 0
          Text = '2014'
          Width = 49
        end
        inline FrmFiltroComunidade: TFrmRelatorioFiltroComunidade
          Left = 0
          Top = 120
          Width = 442
          Height = 28
          TabOrder = 3
          ExplicitTop = 120
          ExplicitWidth = 442
          ExplicitHeight = 28
          inherited LblComunidade: TLabel
            Top = 4
            ExplicitTop = 4
          end
          inherited LkpCmbBxComunidade: TcxLookupComboBox
            Top = 0
            ExplicitTop = 0
          end
          inherited DtSrcComunidade: TDataSource
            Left = 288
            Top = 0
          end
        end
        object CmbBxQuantidade: TcxComboBox
          Left = 192
          Top = 144
          Properties.DropDownListStyle = lsEditFixedList
          Properties.DropDownRows = 12
          Properties.ImmediatePost = True
          Properties.Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20')
          Properties.PostPopupValueOnTab = True
          TabOrder = 4
          Text = '0'
          Width = 49
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        Top = 34
        ExplicitTop = 34
        ExplicitHeight = 76
        Height = 76
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            'Comunidade e benefici'#225'rio')
          Text = 'Comunidade e benefici'#225'rio'
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
    ReportOptions.LastChange = 41954.541176180560000000
    ScriptText.Strings = (
      'begin'
      '    '
      'end.')
    Datasets = <
      item
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
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
        Name = 'filtro_ano'
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
        Name = 'filtro_metodologia'
        Value = #39'Teste'#39
      end
      item
        Name = 'filtro_comunidade'
        Value = #39'Comunidade'#39
      end>
    Style = <>
    inherited Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      inherited PageHeader: TfrxPageHeader
        Width = 1046.929810000000000000
        inherited MemoRazaoSocial: TfrxMemoView
          Width = 978.898270000000000000
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
        end
        inherited MemoUnidade: TfrxMemoView
          Width = 978.898270000000000000
          Memo.UTF8W = (
            'SISATER Desktop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
        end
        inherited Memo1: TfrxMemoView
          Width = 1046.929810000000000000
        end
      end
      inherited PageFooter: TfrxPageFooter
        Top = 445.984540000000000000
        Width = 1046.929810000000000000
        inherited MemoDataHora: TfrxMemoView
          Memo.UTF8W = (
            
              'Data e hora da impress'#227'o: [<Date>] [FormatDateTime('#39'hh:nn'#39',<Time' +
              '>)]')
        end
        inherited MemoPagina: TfrxMemoView
          Left = 952.441560000000000000
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages]')
        end
        inherited MemoUsuario: TfrxMemoView
          Memo.UTF8W = (
            'Usu'#225'rio: [usuario]')
        end
        inherited MemoRelatorio: TfrxMemoView
          Width = 612.283860000000000000
          Memo.UTF8W = (
            '[titulo]')
        end
      end
      inherited Header: TfrxHeader
        Height = 151.181200000000000000
        Width = 1046.929810000000000000
        inherited MemoTitulo: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 26.456692910000000000
          DisplayFormat.DecimalSeparator = ''
          Memo.UTF8W = (
            'Relat'#243'rio de atendimentos por comunidade')
        end
        object Memo15: TfrxMemoView
          Top = 26.456710000000000000
          Width = 1046.929810000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[filtro_ano]'
            '[filtro_unidade] [filtro_funcionario] [filtro_comunidade]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 94.488250000000000000
          Width = 204.094620000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Comunidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 204.094620000000000000
          Top = 94.488250000000000000
          Width = 90.708720000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 294.803340000000000000
          Top = 94.488250000000000000
          Width = 268.346630000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Benefici'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 563.149970000000000000
          Top = 94.488250000000000000
          Width = 34.015770000000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Janeiro')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 597.165740000000000000
          Top = 94.488250000000000000
          Width = 34.015748030000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Fevereiro')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 631.181510000000000000
          Top = 94.488250000000000000
          Width = 34.015748030000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Mar'#231'o')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 665.197280000000000000
          Top = 94.488250000000000000
          Width = 34.015748030000000000
          Height = 56.692950000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Abril')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 699.213050000000000000
          Top = 94.488176770000000000
          Width = 34.015748030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Maio')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 733.228820000000000000
          Top = 94.488176770000000000
          Width = 34.015748030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Junho')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 767.244590000000000000
          Top = 94.488176770000000000
          Width = 34.015748030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Julho')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 801.260360000000000000
          Top = 94.488176770000000000
          Width = 34.015748030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Agosto')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 835.276130000000000000
          Top = 94.488176770000000000
          Width = 34.015748030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Setembro')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 869.291900000000000000
          Top = 94.488176770000000000
          Width = 34.015748030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Outubro')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 903.307670000000000000
          Top = 94.488176770000000000
          Width = 34.015748030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Novembro')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 937.323440000000000000
          Top = 94.488176770000000000
          Width = 34.015748030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Dezembro')
          ParentFont = False
          Rotation = 90
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Left = 971.339210000000000000
          Top = 94.488176770000000000
          Width = 75.590578030000000000
          Height = 56.692913390000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Top = 71.811070000000000000
          Width = 563.149970000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Dados do Benefici'#225'rio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 563.149970000000000000
          Top = 71.811070000000000000
          Width = 563.149970000000000000
          Height = 22.677180000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '[filtro_metodologia]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData: TfrxMasterData
        Height = 18.897650000000000000
        Top = 325.039580000000000000
        Width = 1046.929810000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
        RowCount = 0
        object DtStPrincipalCOMUNIDADE_NOME: TfrxMemoView
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'COMUNIDADE_NOME'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."COMUNIDADE_NOME"]')
          ParentFont = False
          SuppressRepeated = True
          VAlign = vaCenter
        end
        object DtStPrincipalBENEFICIARIO_CPF: TfrxMemoView
          Left = 204.094620000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '[FormatMaskText('#39'999.999.999-99;0; '#39',<DtStPrincipal."BENEFICIARI' +
              'O_CPF">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStPrincipalBENEFICIARIO_NOME: TfrxMemoView
          Left = 294.803340000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BENEFICIARIO_NOME'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BENEFICIARIO_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStPrincipalMES_JANEIRO: TfrxMemoView
          Left = 563.149970000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_JANEIRO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_JANEIRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStPrincipalMES_FEVEREIRO: TfrxMemoView
          Left = 597.165740000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_FEVEREIRO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_FEVEREIRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 631.181510000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_MARCO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_MARCO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 665.197280000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_ABRIL'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_ABRIL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 699.213050000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_MAIO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_MAIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 733.228820000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_JUNHO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_JUNHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 767.244590000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_JULHO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_JULHO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 801.260360000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_AGOSTO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_AGOSTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 835.276130000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_SETEMBRO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_SETEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 869.291900000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_OUTUBRO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_OUTUBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 903.307670000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_NOVEMBRO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_NOVEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 937.323440000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_DEZEMBRO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_DEZEMBRO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 971.339210000000000000
          Width = 75.590578030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_TOTAL'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."MES_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer: TfrxFooter
        Height = 18.897650000000000000
        Top = 366.614410000000000000
        Width = 1046.929810000000000000
        object Memo30: TfrxMemoView
          Width = 563.149970000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Total de atendimentos por m'#234's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          Left = 563.149970000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_JANEIRO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = 597.165740000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_FEVEREIRO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          Left = 631.181510000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_MARCO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 665.197280000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_ABRIL">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          Left = 699.213050000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_MAIO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          Left = 733.228820000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_JUNHO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 767.244590000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_JULHO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 801.260360000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_AGOSTO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 835.276130000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_SETEMBRO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 869.291900000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_OUTUBRO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 903.307670000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_NOVEMBRO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 937.323440000000000000
          Width = 34.015748030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_DEZEMBRO">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 971.339210000000000000
          Width = 75.590578030000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8W = (
            '[SUM(<DtStPrincipal."MES_TOTAL">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object DtStPrincipal: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  comunidade_nome,'
      '  beneficiario_cpf,'
      '  beneficiario_nome,'
      '  metodologia_nome,'
      '  mes_janeiro,'
      '  mes_fevereiro,'
      '  mes_marco,'
      '  mes_abril,'
      '  mes_maio,'
      '  mes_junho,'
      '  mes_julho,'
      '  mes_agosto,'
      '  mes_setembro,'
      '  mes_outubro,'
      '  mes_novembro,'
      '  mes_dezembro,'
      '  mes_total'
      'from'
      '  stp_rel_comunidade_01(:ano,'
      '    :unidade,'
      '    :funcionario,'
      '    :metodologia,'
      '    :comunidade,'
      '    :atendimentos)'
      ''
      '--select * from stp_rel_comunidade_01(2014, 113)')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 112
    Top = 328
    poSQLINT64ToBCD = True
    object DtStPrincipalCOMUNIDADE_NOME: TFIBStringField
      FieldName = 'COMUNIDADE_NOME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalBENEFICIARIO_CPF: TFIBStringField
      FieldName = 'BENEFICIARIO_CPF'
      Size = 11
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalBENEFICIARIO_NOME: TFIBStringField
      FieldName = 'BENEFICIARIO_NOME'
      Size = 150
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalMETODOLOGIA_NOME: TFIBStringField
      FieldName = 'METODOLOGIA_NOME'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalMES_JANEIRO: TFIBIntegerField
      FieldName = 'MES_JANEIRO'
    end
    object DtStPrincipalMES_FEVEREIRO: TFIBIntegerField
      FieldName = 'MES_FEVEREIRO'
    end
    object DtStPrincipalMES_MARCO: TFIBIntegerField
      FieldName = 'MES_MARCO'
    end
    object DtStPrincipalMES_ABRIL: TFIBIntegerField
      FieldName = 'MES_ABRIL'
    end
    object DtStPrincipalMES_MAIO: TFIBIntegerField
      FieldName = 'MES_MAIO'
    end
    object DtStPrincipalMES_JUNHO: TFIBIntegerField
      FieldName = 'MES_JUNHO'
    end
    object DtStPrincipalMES_JULHO: TFIBIntegerField
      FieldName = 'MES_JULHO'
    end
    object DtStPrincipalMES_AGOSTO: TFIBIntegerField
      FieldName = 'MES_AGOSTO'
    end
    object DtStPrincipalMES_SETEMBRO: TFIBIntegerField
      FieldName = 'MES_SETEMBRO'
    end
    object DtStPrincipalMES_OUTUBRO: TFIBIntegerField
      FieldName = 'MES_OUTUBRO'
    end
    object DtStPrincipalMES_NOVEMBRO: TFIBIntegerField
      FieldName = 'MES_NOVEMBRO'
    end
    object DtStPrincipalMES_DEZEMBRO: TFIBIntegerField
      FieldName = 'MES_DEZEMBRO'
    end
    object DtStPrincipalMES_TOTAL: TFIBIntegerField
      FieldName = 'MES_TOTAL'
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
end
