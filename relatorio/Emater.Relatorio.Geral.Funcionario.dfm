inherited FrmRelatorioGeralFuncionario: TFrmRelatorioGeralFuncionario
  Left = 362
  Top = 152
  ExplicitLeft = 8
  ExplicitTop = 8
  ExplicitWidth = 584
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      inherited LblTitulo: TLabel
        Caption = ' Relat'#243'rio geral por t'#233'cnico respons'#225'vel'
      end
      inherited GrpBxFiltro: TcxGroupBox
        inline FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionarioPeriodo
          Left = 8
          Top = 16
          Width = 441
          Height = 81
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 16
          ExplicitWidth = 441
          ExplicitHeight = 81
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
            'T'#233'cnico respons'#225'vel')
          Text = 'T'#233'cnico respons'#225'vel'
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
    ReportOptions.LastChange = 41967.634445717590000000
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
        Top = 619.842920000000000000
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
        Height = 68.031540000000000000
        Width = 1046.929810000000000000
        inherited MemoTitulo: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 26.456692910000000000
          DisplayFormat.DecimalSeparator = ''
          Memo.UTF8W = (
            'Relat'#243'rio geral por t'#233'cnico respons'#225'vel')
        end
        object Memo15: TfrxMemoView
          Top = 26.456710000000000000
          Width = 1046.929810000000000000
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
      object MasterData: TfrxMasterData
        FillType = ftBrush
        Height = 316.000000000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Width = 272.503937007874000000
          Height = 328.000000000000000000
          AutoSize = False
          ColumnLevels = 2
          DownThenAcross = False
          ShowColumnTotal = False
          ShowTitle = False
          CellFields.Strings = (
            'TOTAL')
          ColumnFields.Strings = (
            'GRUPO'
            'ITEM')
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          RowFields.Strings = (
            'TECNICO')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D2232323022
            20546F703D223438372C3838393932222057696474683D2233322C3530333933
            3730303738373422204865696768743D22333522205265737472696374696F6E
            733D2232342220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22417269
            616C2220466F6E742E5374796C653D223022204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220486964655A65726F733D22547275652220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D2230222F3E3C546672784D656D6F56696577204C6566743D22323230222054
            6F703D223532322C3838393932222057696474683D2233322C35303339333730
            303738373422204865696768743D22323722205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C
            2220466F6E742E5374796C653D223122204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220486964655A65726F733D22547275652220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            30222F3E3C546672784D656D6F56696577204C6566743D223234362220546F70
            3D2234322C3333383539222057696474683D2231303422204865696768743D22
            33312C323230343722205265737472696374696F6E733D2232342220416C6C6F
            7745787072657373696F6E733D2246616C73652220466F6E742E436861727365
            743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569676874
            3D222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374
            796C653D223022204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686152696768742220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22323436
            2220546F703D2237332C3535393036222057696474683D223130342220486569
            6768743D22313922205265737472696374696F6E733D2232342220416C6C6F77
            45787072657373696F6E733D2246616C73652220466F6E742E43686172736574
            3D22312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D
            222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E537479
            6C653D223122204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686152696768742220506172656E7446
            6F6E743D2246616C7365222056416C69676E3D22766143656E74657222205465
            78743D2230222F3E3C546672784D656D6F56696577204C6566743D223232392C
            33393335393832382220546F703D22323138222057696474683D22312C343634
            353332373622204865696768743D22323322205265737472696374696F6E733D
            2232342220416C6C6F7745787072657373696F6E733D2246616C73652220466F
            6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F
            6E742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C
            2220466F6E742E5374796C653D223022204672616D652E5479703D2231352220
            476170583D22332220476170593D2233222048416C69676E3D22686143656E74
            65722220506172656E74466F6E743D2246616C7365222056416C69676E3D2276
            6143656E7465722220546578743D2230222F3E3C546672784D656D6F56696577
            204C6566743D223232392C33393335393832382220546F703D22323431222057
            696474683D22312C343634353332373622204865696768743D22323722205265
            737472696374696F6E733D2232342220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E
            4E616D653D22417269616C2220466F6E742E5374796C653D223022204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C2F
            63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222056416C69676E
            3D22766143656E7465722220546578743D22544F54414C222F3E3C546672784D
            656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
            3022204865696768743D223022205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222056416C69676E3D
            22766143656E7465722220546578743D22544F54414C222F3E3C546672784D65
            6D6F56696577204C6566743D22302220546F703D2230222057696474683D2230
            22204865696768743D223022205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C736522204672616D652E547970
            3D2231352220476170583D22332220476170593D2233222056416C69676E3D22
            766143656E7465722220546578743D22544F54414C222F3E3C2F63656C6C6865
            616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D656D6F
            56696577204C6566743D223232302220546F703D223236312C38383939322220
            57696474683D2233322C35303339333730303738373422204865696768743D22
            333622205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313122
            20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686143656E7465722220506172656E74466F6E743D
            2246616C7365222056416C69676E3D22766143656E7465722220546578743D22
            222F3E3C546672784D656D6F56696577204C6566743D223232302220546F703D
            223239372C3838393932222057696474683D2233322C35303339333730303738
            373422204865696768743D2231393022205265737472696374696F6E733D2232
            342220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31312220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223022204672616D652E5479703D22313522204761
            70583D22332220476170593D22332220506172656E74466F6E743D2246616C73
            652220526F746174696F6E3D223930222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C2F636F6C756D6E6D656D6F733E3C636F6C756D
            6E746F74616C6D656D6F733E3C546672784D656D6F56696577204C6566743D22
            3232392C33393335393832382220546F703D2230222057696474683D22312C34
            3634353332373622204865696768743D2232313822205265737472696374696F
            6E733D2238222056697369626C653D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131
            2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
            3122204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220506172656E74466F6E74
            3D2246616C7365222056416C69676E3D22766143656E7465722220546578743D
            22222F3E3C546672784D656D6F56696577204C6566743D223234362220546F70
            3D2231392C363639323935222057696474683D2231303422204865696768743D
            2232322C36363932393522205265737472696374696F6E733D22382220566973
            69626C653D2246616C73652220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31332220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223122204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22546F74616C222F3E3C
            2F636F6C756D6E746F74616C6D656D6F733E3C636F726E65726D656D6F733E3C
            546672784D656D6F56696577204C6566743D2232302220546F703D223236312C
            3838393932222057696474683D2232303022204865696768743D223022205265
            737472696374696F6E733D2238222056697369626C653D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D22
            3232302220546F703D223236312C3838393932222057696474683D2233322C35
            303339333730303738373422204865696768743D223022205265737472696374
            696F6E733D2238222056697369626C653D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E7465722220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D22475255504F2C204954454D222F3E3C546672784D656D6F56696577204C
            6566743D22302220546F703D2230222057696474683D22302220486569676874
            3D223022205265737472696374696F6E733D2238222056697369626C653D2246
            616C73652220416C6C6F7745787072657373696F6E733D2246616C7365222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E746572222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C546672784D656D6F56696577204C6566743D
            2232302220546F703D223236312C3838393932222057696474683D2232303022
            204865696768743D2232323622205265737472696374696F6E733D2238222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223122204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222205061
            72656E74466F6E743D2246616C7365222056416C69676E3D22766143656E7465
            722220546578743D2254C3A9636E69636F222F3E3C2F636F726E65726D656D6F
            733E3C726F776D656D6F733E3C546672784D656D6F56696577204C6566743D22
            32302220546F703D223438372C3838393932222057696474683D223230302220
            4865696768743D22333522205265737472696374696F6E733D2232342220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E
            5374796C653D223022204672616D652E5479703D2231352220476170583D2233
            2220476170593D22332220506172656E74466F6E743D2246616C736522205641
            6C69676E3D22766143656E7465722220546578743D22222F3E3C2F726F776D65
            6D6F733E3C726F77746F74616C6D656D6F733E3C546672784D656D6F56696577
            204C6566743D2232302220546F703D223532322C383839393222205769647468
            3D2232303022204865696768743D22323722205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22544F54414C20474552414C222F3E3C2F726F
            77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E733E3C6974656D
            20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D6E736F72743E
            3C6974656D20322F3E3C6974656D20302F3E3C2F636F6C756D6E736F72743E3C
            726F77736F72743E3C6974656D20302F3E3C2F726F77736F72743E3C2F63726F
            73733E}
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
      
        'select * from stp_rel_geral_01 (:data_inicio, :data_fim, :unidad' +
        'e, :funcionario)')
    Left = 112
    Top = 328
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
        Value = '218'
      end
      item
        Name = 'FUNCIONARIO'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
  end
end
