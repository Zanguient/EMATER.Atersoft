inherited FrmRelatorioProducaoComercio: TFrmRelatorioProducaoComercio
  Left = 517
  Top = 152
  ExplicitLeft = 8
  ExplicitTop = 8
  ExplicitWidth = 584
  ExplicitHeight = 463
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      inherited LblTitulo: TLabel
        Caption = 
          ' Comercializa'#231#227'o realizada pelos benefici'#225'rio de ater segundo o ' +
          'tipo de produto/servi'#231'o'
      end
      inherited GrpBxFiltro: TcxGroupBox
        object LblUnidade: TLabel
          Left = 8
          Top = 60
          Width = 118
          Height = 13
          Caption = 'Tipo de produto/servi'#231'o:'
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 28
          Width = 163
          Height = 13
          Caption = 'Ano da produ'#231#227'o/plantio/colheita:'
          Transparent = True
        end
        object Label4: TLabel
          Left = 296
          Top = 28
          Width = 16
          Height = 13
          Caption = 'at'#233
          Transparent = True
        end
        object Label6: TLabel
          Left = 176
          Top = 28
          Width = 12
          Height = 13
          Caption = 'de'
          Transparent = True
        end
        object EdtAnoInicio: TcxTextEdit
          Left = 192
          Top = 24
          Properties.MaxLength = 4
          TabOrder = 0
          Text = '    '
          Width = 100
        end
        object EdtAnoFim: TcxTextEdit
          Left = 317
          Top = 24
          Properties.MaxLength = 4
          TabOrder = 1
          Text = '    '
          Width = 100
        end
        object CmbBxTipo: TcxComboBox
          Left = 192
          Top = 56
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            'Todos'
            'Outros'
            'Produtos/servi'#231'os'
            'Derivados')
          TabOrder = 2
          Text = 'Todos'
          Width = 225
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        inherited LblModo: TLabel
          Left = 296
          ExplicitLeft = 296
        end
        inherited CmbBxModo: TcxComboBox
          Left = 296
          ExplicitLeft = 296
          ExplicitWidth = 121
          Width = 121
        end
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            'Destino do item comercializado')
          Text = 'Destino do item comercializado'
          ExplicitWidth = 281
          Width = 281
        end
      end
    end
  end
  inherited BtnLimpar: TcxButton
    OnClick = BtnLimparClick
  end
  inherited FrxPrincipal: TfrxReport
    ReportOptions.Name = 'Quantidade de benefici'#225'rios por categoria'
    ReportOptions.LastChange = 42541.998441840270000000
    ScriptText.Strings = (
      'begin'
      '    '
      'end.')
    Top = 272
    Datasets = <
      item
        DataSet = FrxDtStPrincipal
        DataSetName = 'QryPrincipal'
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
        Name = 'filtro_tipo'
        Value = #39'Teste'#39
      end
      item
        Name = 'filtro_unidade'
        Value = #39'Teste'#39
      end
      item
        Name = 'filtro_funcionario'
        Value = #39'Teste'#39
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
        Top = 438.425480000000000000
        inherited MemoDataHora: TfrxMemoView
          Memo.UTF8W = (
            '[<Date>] [FormatDateTime('#39'hh:nn'#39',<Time>)]')
          Formats = <
            item
            end
            item
            end
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
        Height = 124.724490000000000000
        inherited MemoTitulo: TfrxMemoView
          Height = 45.354342910000000000
          DisplayFormat.DecimalSeparator = ''
          Memo.UTF8W = (
            'Comercializa'#231#227'o realizada pelos benefici'#225'rio de ATER '
            'segundo o tipo de produto/servi'#231'o')
        end
        object Memo15: TfrxMemoView
          Top = 45.354360000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[filtro_periodo]'
            '[filtro_tipo]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Left = 90.708720000000000000
          Top = 90.708720000000000000
          Width = 192.756030000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 6.000000000000000000
          Memo.UTF8W = (
            'Destino')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 514.016080000000000000
          Top = 90.708720000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 6.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 415.748300000000000000
          Top = 90.708720000000000000
          Width = 98.267780000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 6.000000000000000000
          Memo.UTF8W = (
            'Unidade'
            'de medida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 283.464750000000000000
          Top = 90.708720000000000000
          Width = 132.283550000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 6.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo de'
            'produto/servi'#231'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData: TfrxMasterData
        FillType = ftBrush
        Height = 22.952690000000000000
        Top = 298.582870000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'QryPrincipal'
        RowCount = 0
        object QryPrincipalESTADO_CIVIL: TfrxMemoView
          Left = 90.708720000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          DataField = 'DESTINO_PRODUTO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'QryPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 6.000000000000000000
          Memo.UTF8W = (
            '[QryPrincipal."DESTINO_PRODUTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object QryPrincipalINTEGRANTES: TfrxMemoView
          Left = 514.016080000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DataField = 'QUANTIDADE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'QryPrincipal'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 6.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[QryPrincipal."QUANTIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 415.748300000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          DataField = 'UNIDADE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'QryPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 6.000000000000000000
          Memo.UTF8W = (
            '[QryPrincipal."UNIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 283.464750000000000000
          Width = 132.283550000000000000
          Height = 22.677180000000000000
          DataField = 'TIPO_PRODUTO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'QryPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          GapX = 6.000000000000000000
          Memo.UTF8W = (
            '[QryPrincipal."TIPO_PRODUTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer: TfrxFooter
        FillType = ftBrush
        Height = 34.015770000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 90.708720000000000000
          Width = 423.307360000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 6.000000000000000000
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 514.016080000000000000
          Width = 113.385900000000000000
          Height = 34.015770000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 6.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<QryPrincipal."QUANTIDADE">,MasterData)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object QryPrincipal: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select * from stp_rel_comercio_01(:tipo, :ano_inicio, :ano_fim)')
    Left = 112
    Top = 272
    ParamData = <
      item
        Name = 'TIPO'
        DataType = ftString
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
      end>
  end
  object FrxDtStPrincipal: TfrxDBDataset
    UserName = 'QryPrincipal'
    CloseDataSource = False
    DataSet = QryPrincipal
    BCDToCurrency = False
    Left = 80
    Top = 272
  end
end
