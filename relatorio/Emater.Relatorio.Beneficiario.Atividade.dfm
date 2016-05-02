inherited FrmRelatorioBeneficiarioAtividade: TFrmRelatorioBeneficiarioAtividade
  Left = 362
  Top = 152
  ExplicitLeft = 362
  ExplicitTop = 152
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      inherited LblTitulo: TLabel
        Caption = 
          ' Benefici'#225'rios de ATER cadastrados por atividade produtiva segun' +
          'do a categoria'
      end
      inherited GrpBxFiltro: TcxGroupBox
        object Label1: TLabel
          Left = 9
          Top = 144
          Width = 273
          Height = 13
          Caption = 'Somente benefici'#225'rios com o cadastro ativo e atualizado.'
          Transparent = True
        end
        inline FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionarioPeriodo
          Left = 8
          Top = 16
          Width = 481
          Height = 97
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 16
          ExplicitWidth = 481
          ExplicitHeight = 97
          inherited LblUnidade: TLabel
            Left = 0
            Top = 44
            ExplicitLeft = 0
            ExplicitTop = 44
          end
          inherited LblFuncionario: TLabel
            Left = 0
            Top = 69
            Width = 123
            Height = 26
            AutoSize = False
            Caption = 'T'#233'cnico respons'#225'vel pelo cadastro do benefici'#225'rio:'
            WordWrap = True
            ExplicitLeft = 0
            ExplicitTop = 69
            ExplicitWidth = 123
            ExplicitHeight = 26
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
          inherited LkpCmbBxFuncionario: TcxLookupComboBox
            Left = 144
            Top = 72
            ExplicitLeft = 144
            ExplicitTop = 72
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
          inherited DtSrcUnidadeLocal: TDataSource
            Left = 336
          end
          inherited DtSrcFuncionarioLocal: TDataSource
            Left = 336
          end
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        Top = 34
        ExplicitTop = 34
        ExplicitHeight = 76
        Height = 76
        inherited CmbBxModo: TcxComboBox
          ExplicitWidth = 153
          Width = 153
        end
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            'Funcion'#225'rio, atividade produtiva e categoria')
          Text = 'Funcion'#225'rio, atividade produtiva e categoria'
        end
      end
    end
  end
  inherited BtnLimpar: TcxButton
    OnClick = BtnLimparClick
  end
  inherited FrxPrincipal: TfrxReport
    EngineOptions.PrintIfEmpty = True
    ReportOptions.Name = ''
    ReportOptions.LastChange = 42489.500799212960000000
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
        Top = 476.220780000000000000
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
            end
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
        Height = 109.606370000000000000
        inherited MemoTitulo: TfrxMemoView
          Height = 26.456692910000000000
          DisplayFormat.DecimalSeparator = ''
          Memo.UTF8W = (
            
              'Benefici'#225'rios de ATER cadastrados por atividade produtiva segund' +
              'o a categoria')
        end
        object Memo15: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
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
      object MasterData: TfrxMasterData
        FillType = ftBrush
        Height = 132.559060000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Left = 15.118120000000000000
          Width = 349.000000000000000000
          Height = 132.559060000000000000
          AutoSize = False
          DownThenAcross = False
          ShowRowTotal = False
          CellFields.Strings = (
            'TOTAL')
          ColumnFields.Strings = (
            'CATEGORIA')
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          RowFields.Strings = (
            'ATIVIDADE')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223138352C
            31313831322220546F703D223336342C3830333334222057696474683D223933
            22204865696768743D2233312C323230343722205265737472696374696F6E73
            3D2232342220416C6C6F7745787072657373696F6E733D2246616C7365222046
            6F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230222046
            6F6E742E4865696768743D222D31312220466F6E742E4E616D653D2241726961
            6C2220466F6E742E5374796C653D223022204672616D652E5479703D22313522
            20476170583D22332220476170593D2233222048416C69676E3D22686143656E
            7465722220486964655A65726F733D22547275652220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            2230222F3E3C546672784D656D6F56696577204C6566743D22302220546F703D
            2230222057696474683D223022204865696768743D2230222052657374726963
            74696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C73
            6522204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D2268615269676874222056416C69676E3D22766143
            656E7465722220546578743D22222F3E3C546672784D656D6F56696577204C65
            66743D223237382C31313831322220546F703D223336342C3830333334222057
            696474683D22363622204865696768743D2233312C3232303437222052657374
            72696374696F6E733D2232342220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E61
            6D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D2230222F3E3C54667278
            4D656D6F56696577204C6566743D223331372220546F703D2234322C33333835
            39222057696474683D22363622204865696768743D2233312C32323034372220
            5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220486964655A65726F733D2254727565
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C6365
            6C6C6865616465726D656D6F733E3C546672784D656D6F56696577204C656674
            3D22302220546F703D2230222057696474683D223022204865696768743D2230
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222056416C69676E3D22766143656E746572222054
            6578743D22544F54414C222F3E3C546672784D656D6F56696577204C6566743D
            22302220546F703D2230222057696474683D223022204865696768743D223022
            205265737472696374696F6E733D22382220416C6C6F7745787072657373696F
            6E733D2246616C736522204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222056416C69676E3D22766143656E74657222205465
            78743D22544F54414C222F3E3C2F63656C6C6865616465726D656D6F733E3C63
            6F6C756D6E6D656D6F733E3C546672784D656D6F56696577204C6566743D2231
            38352C31313831322220546F703D223332322C3436343735222057696474683D
            22393322204865696768743D2234322C33333835392220526573747269637469
            6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D2241
            7269616C2220466F6E742E5374796C653D223122204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E6D65
            6D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F56
            696577204C6566743D223237382C31313831322220546F703D223332322C3436
            343735222057696474683D22363622204865696768743D2234322C3333383539
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22544F54
            414C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65726D
            656D6F733E3C546672784D656D6F56696577204C6566743D2233352C31313831
            322220546F703D223330332C3436343735222057696474683D22313530222048
            65696768743D22313922205265737472696374696F6E733D22382220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374
            796C653D223022204672616D652E5479703D22372220476170583D2233222047
            6170593D2233222048416C69676E3D22686143656E7465722220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D22222F3E3C546672784D656D6F56696577204C6566743D223138352C
            31313831322220546F703D223330332C3436343735222057696474683D223135
            3922204865696768743D22313922205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E4368
            61727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E4865
            696768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E
            742E5374796C653D223122204672616D652E5479703D2231352220476170583D
            22332220476170593D2233222048416C69676E3D22686143656E746572222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2243617465676F726961222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D223822205669736962
            6C653D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C
            736522204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E746572222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D2233352C31313831322220546F703D223332322C34363437352220
            57696474683D2231353022204865696768743D2234322C333338353922205265
            737472696374696F6E733D22382220416C6C6F7745787072657373696F6E733D
            2246616C73652220466F6E742E436861727365743D22312220466F6E742E436F
            6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E
            616D653D22417269616C2220466F6E742E5374796C653D223122204672616D65
            2E5479703D2231312220476170583D22332220476170593D2233222048416C69
            676E3D22686143656E7465722220506172656E74466F6E743D2246616C736522
            20546578743D22415449564944414445222F3E3C2F636F726E65726D656D6F73
            3E3C726F776D656D6F733E3C546672784D656D6F56696577204C6566743D2233
            352C31313831322220546F703D223336342C3830333334222057696474683D22
            31353022204865696768743D2233312C32323034372220526573747269637469
            6F6E733D2232342220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D2241
            7269616C2220466F6E742E5374796C653D223022204672616D652E5479703D22
            31352220476170583D22332220476170593D22332220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22222F3E3C2F726F776D656D6F733E3C726F77746F74616C6D656D6F733E3C54
            6672784D656D6F56696577204C6566743D22302220546F703D22353722205769
            6474683D2231333022204865696768743D22313922205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131
            2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22544F54414C222F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C6675
            6E6374696F6E733E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E73
            3E3C636F6C756D6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E736F
            72743E3C726F77736F72743E3C6974656D20302F3E3C2F726F77736F72743E3C
            2F63726F73733E}
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
  object DtStPrincipal: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select atividade, categoria, total'
      
        'from stp_rel_categoria_02 (:data_inicio, :data_fim, :unidade, :f' +
        'uncionario)'
      'order by atividade, categoria')
    Left = 112
    Top = 328
    ParamData = <
      item
        Name = 'DATA_INICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = 41640d
      end
      item
        Name = 'DATA_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 42004d
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
