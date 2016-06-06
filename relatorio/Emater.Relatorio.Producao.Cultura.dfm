inherited FrmRelatorioProducaoCultura: TFrmRelatorioProducaoCultura
  Left = 517
  Top = 152
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      inherited LblTitulo: TLabel
        Caption = ' Produ'#231#227'o obtida pelos benefici'#225'rios de ATER segundo a cultura'
      end
      inherited GrpBxFiltro: TcxGroupBox
        object Label1: TLabel
          Left = 9
          Top = 153
          Width = 337
          Height = 65
          AutoSize = False
          Caption = 
            'Somente ser'#225' obtida a produ'#231#227'o dos benefici'#225'rios que estejam com' +
            ' o cadastro ativo e atualizado. Para obter todos os per'#237'odos de ' +
            'plantio e colheita, deixe os campos de filtro em branco. Para ob' +
            'ter plantio ou colheita a partir de um per'#237'odo, ou at'#233' um per'#237'od' +
            'o, informe o apenas o per'#237'odo inicial ou o per'#237'odo final.'
          Transparent = True
          WordWrap = True
        end
        object LblUnidade: TLabel
          Left = 8
          Top = 92
          Width = 48
          Height = 13
          Caption = 'Escrit'#243'rio:'
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 28
          Width = 90
          Height = 13
          Caption = 'Per'#237'odo do plantio:'
        end
        object Label3: TLabel
          Left = 8
          Top = 60
          Width = 95
          Height = 13
          Caption = 'Per'#237'odo do colheita:'
        end
        object Label4: TLabel
          Left = 254
          Top = 28
          Width = 16
          Height = 13
          Caption = 'at'#233
        end
        object Label5: TLabel
          Left = 254
          Top = 60
          Width = 16
          Height = 13
          Caption = 'at'#233
        end
        object Label6: TLabel
          Left = 136
          Top = 28
          Width = 12
          Height = 13
          Caption = 'de'
        end
        object Label7: TLabel
          Left = 136
          Top = 60
          Width = 12
          Height = 13
          Caption = 'de'
        end
        object LkpCmbBxUnidade: TcxLookupComboBox
          Left = 152
          Top = 88
          Properties.ClearKey = 46
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'UND_ID'
          Properties.ListColumns = <
            item
              MinWidth = 145
              Width = 145
              FieldName = 'UND_NOME'
            end
            item
              Width = 100
              FieldName = 'UND_TIPO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcUnidadeLocal
          TabOrder = 4
          Width = 305
        end
        object EdtPlantioInicio: TcxMaskEdit
          Left = 152
          Top = 24
          Properties.EditMask = '!99/9999;0; '
          Properties.MaxLength = 0
          TabOrder = 0
          Text = '      '
          Width = 97
        end
        object EdtPlantioFim: TcxMaskEdit
          Left = 275
          Top = 24
          Properties.EditMask = '!99/9999;0; '
          Properties.MaxLength = 0
          TabOrder = 1
          Text = '      '
          Width = 97
        end
        object EdtColheitaInicio: TcxMaskEdit
          Left = 152
          Top = 56
          Properties.EditMask = '!99/9999;0; '
          Properties.MaxLength = 0
          TabOrder = 2
          Text = '      '
          Width = 97
        end
        object EdtColheitaFim: TcxMaskEdit
          Left = 275
          Top = 56
          Properties.EditMask = '!99/9999;0; '
          Properties.MaxLength = 0
          TabOrder = 3
          Text = '      '
          Width = 97
        end
        object ChckBxProducao: TcxCheckBox
          Left = 152
          Top = 120
          Caption = 'Somente as culturas que tiveram produ'#231#227'o.'
          ParentColor = False
          TabOrder = 5
          Transparent = True
          Width = 241
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        inherited CmbBxModo: TcxComboBox
          ExplicitWidth = 145
          Width = 145
        end
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            'Descri'#231#227'o da cultura')
          Text = 'Descri'#231#227'o da cultura'
        end
      end
    end
  end
  inherited BtnLimpar: TcxButton
    OnClick = BtnLimparClick
  end
  inherited FrxPrincipal: TfrxReport
    ReportOptions.Name = 'Quantidade de benefici'#225'rios por categoria'
    ReportOptions.LastChange = 42527.688039247690000000
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
            'Produ'#231#227'o obtida pelos benefici'#225'rios de ATER'
            'segundo a cultura')
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
            '[filtro_unidade]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Left = 75.590600000000000000
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
            'Cultura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 268.346630000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
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
            #193'rea'
            'plantada')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 362.834880000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
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
            #193'rea'
            'colhida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 457.323130000000000000
          Top = 90.708720000000000000
          Width = 94.488250000000000000
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
            'Produ'#231#227'o'
            'obtida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 551.811380000000000000
          Top = 90.708720000000000000
          Width = 90.708720000000000000
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
          Left = 75.590600000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          DataField = 'CULTURA'
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
            '[QryPrincipal."CULTURA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object QryPrincipalTOTAL: TfrxMemoView
          Left = 268.346630000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataField = 'AREA_PLANTADA'
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
            '[QryPrincipal."AREA_PLANTADA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object QryPrincipalBENEFICIARIOS: TfrxMemoView
          Left = 362.834880000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataField = 'AREA_COLHIDA'
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
            '[QryPrincipal."AREA_COLHIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object QryPrincipalINTEGRANTES: TfrxMemoView
          Left = 457.323130000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataField = 'PRODUCAO'
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
            '[QryPrincipal."PRODUCAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataField = 'UNIDADE_MEDIDA'
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
          Memo.UTF8W = (
            '[QryPrincipal."UNIDADE_MEDIDA"]')
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
          Left = 75.590600000000000000
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
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 268.346630000000000000
          Width = 94.488250000000000000
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
            '[SUM(<QryPrincipal."AREA_PLANTADA">,MasterData)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 362.834880000000000000
          Width = 94.488250000000000000
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
            '[SUM(<QryPrincipal."AREA_COLHIDA">,MasterData)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 457.323130000000000000
          Width = 94.488250000000000000
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
            '[SUM(<QryPrincipal."PRODUCAO">,MasterData)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 551.811380000000000000
          Width = 94.488250000000000000
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
      
        'select * from stp_rel_producao_02 (:plantio_inicio, :plantio_fim' +
        ', :colheita_inicio, :colheita_fim, :unidade)')
    Left = 112
    Top = 272
    ParamData = <
      item
        Name = 'PLANTIO_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'PLANTIO_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COLHEITA_INICIO'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'COLHEITA_FIM'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'UNIDADE'
        DataType = ftInteger
        ParamType = ptInput
        Value = '111'
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
  object DtSrcUnidadeLocal: TDataSource
    DataSet = DtmRelatorioModulo.DtStUnidadeLocal
    Left = 288
    Top = 240
  end
end
