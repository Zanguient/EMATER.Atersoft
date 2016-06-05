inherited FrmRelatorioBeneficiarioRibeirinho: TFrmRelatorioBeneficiarioRibeirinho
  Left = 517
  Top = 152
  ActiveControl = FrmFiltro.EdtDataInicio
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      inherited LblTitulo: TLabel
        Caption = ' Ribeirinhos cadastrados segundo a categoria e g'#234'nero'
      end
      inherited GrpBxFiltro: TcxGroupBox
        object Label1: TLabel
          Left = 9
          Top = 144
          Width = 325
          Height = 13
          Caption = 
            'Somente benefici'#225'rios ribeirinhos com o cadastro ativo e atualiz' +
            'ado.'
          Transparent = True
        end
        inline FrmFiltro: TFrmRelatorioFiltroUnidadePeriodo
          Left = 8
          Top = 32
          Width = 449
          Height = 65
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 32
          ExplicitWidth = 449
          ExplicitHeight = 65
          inherited LblUnidade: TLabel
            Left = 0
            Top = 44
            ExplicitLeft = 0
            ExplicitTop = 44
          end
          inherited LblPeriodoDe: TLabel
            Left = 0
            Width = 102
            Caption = 'Data do cadastro de:'
            ExplicitLeft = 0
            ExplicitWidth = 102
          end
          inherited LblPeriodoAte: TLabel
            Left = 288
            ExplicitLeft = 288
          end
          inherited LkpCmbBxUnidade: TcxLookupComboBox
            Left = 144
            Top = 40
            ExplicitLeft = 144
            ExplicitTop = 40
            ExplicitWidth = 305
            Width = 305
          end
          inherited EdtDataInicio: TcxDateEdit
            Left = 144
            ExplicitLeft = 144
            ExplicitWidth = 137
            Width = 137
          end
          inherited EdtDataFim: TcxDateEdit
            Left = 312
            ExplicitLeft = 312
            ExplicitWidth = 137
            Width = 137
          end
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        inherited CmbBxModo: TcxComboBox
          ExplicitWidth = 145
          Width = 145
        end
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            'Descri'#231#227'o da categoria')
          Text = 'Descri'#231#227'o da categoria'
        end
      end
    end
  end
  inherited BtnLimpar: TcxButton
    OnClick = BtnLimparClick
  end
  inherited FrxPrincipal: TfrxReport
    ReportOptions.Name = 'Quantidade de benefici'#225'rios por categoria'
    ReportOptions.LastChange = 42526.869780358790000000
    ScriptText.Strings = (
      'begin'
      '    '
      'end.')
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
            'Quantidade de ribeirinhos cadastrados'
            'segundo a categoria e g'#234'nero')
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
          Left = 128.504020000000000000
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
            'Categoria')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 321.260050000000000000
          Top = 90.708720000000000000
          Width = 79.370130000000000000
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
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 400.630180000000000000
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
            'Masculino')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 495.118430000000000000
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
            'Feminino')
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
          Left = 128.504020000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          DataField = 'CATEGORIA'
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
            '[QryPrincipal."CATEGORIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object QryPrincipalTOTAL: TfrxMemoView
          Left = 321.260050000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DataField = 'TOTAL'
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
            '[QryPrincipal."TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object QryPrincipalBENEFICIARIOS: TfrxMemoView
          Left = 400.630180000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataField = 'MASCULINO'
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
            '[QryPrincipal."MASCULINO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object QryPrincipalINTEGRANTES: TfrxMemoView
          Left = 495.118430000000000000
          Width = 94.488250000000000000
          Height = 22.677180000000000000
          DataField = 'FEMININO'
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
            '[QryPrincipal."FEMININO"]')
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
          Left = 128.504020000000000000
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
          Left = 321.260050000000000000
          Width = 79.370130000000000000
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
            '[SUM(<QryPrincipal."TOTAL">,MasterData)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 400.630180000000000000
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
            '[SUM(<QryPrincipal."MASCULINO">,MasterData)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 495.118430000000000000
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
            '[SUM(<QryPrincipal."FEMININO">,MasterData)]')
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
      
        'select * from stp_rel_ribeirinho_01 (:data_inicio, :data_fim, :u' +
        'nidade)'
      'order by categoria')
    Left = 112
    Top = 328
    ParamData = <
      item
        Name = 'DATA_INICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = '01/01/2000'
      end
      item
        Name = 'DATA_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = '31/12/2016'
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
    Top = 328
  end
end
