inherited FrmRelatorioFaterQuadrimestre: TFrmRelatorioFaterQuadrimestre
  Left = 362
  Top = 152
  ExplicitLeft = 362
  ExplicitTop = 152
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      inherited LblTitulo: TLabel
        Caption = ' Relat'#243'rio de atendimentos de t'#233'cnicos por quadrimestre'
      end
      inherited GrpBxFiltro: TcxGroupBox
        object LblAno: TLabel
          Left = 8
          Top = 28
          Width = 23
          Height = 13
          Caption = 'Ano:'
          Transparent = True
        end
        object LblQuadrimestre: TLabel
          Left = 160
          Top = 28
          Width = 69
          Height = 13
          Caption = 'Quadrimestre:'
          Transparent = True
        end
        inline FrmFiltroMetodologia: TFrmRelatorioFiltroMetodologia
          Left = 8
          Top = 96
          Width = 425
          Height = 33
          TabOrder = 3
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
        object CmbBxQuadrimestre: TcxComboBox
          Left = 240
          Top = 24
          Properties.DropDownListStyle = lsEditFixedList
          Properties.Items.Strings = (
            '1'#186'. (Janeiro - Abril)'
            '2'#186'. (Maio - Agosto)'
            '3'#186'. (Setembro - Dezembro)')
          TabOrder = 1
          Text = '1'#186'. (Janeiro - Abril)'
          Width = 185
        end
        inline FrmFiltro: TFrmRelatorioFiltroUnidadeFuncionario
          Left = 8
          Top = 48
          Width = 425
          Height = 47
          TabOrder = 2
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
      end
      inherited GrpBxOpcoes: TcxGroupBox
        Top = 34
        ExplicitTop = 34
        ExplicitHeight = 76
        Height = 76
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            'Funcion'#225'rio')
          Text = 'Funcion'#225'rio'
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
    ReportOptions.LastChange = 41954.545179965280000000
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
        Name = 'filtro_ano_quadrimestre'
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
        Top = 423.307360000000000000
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
            'Relat'#243'rio de atendimentos de t'#233'cnicos por quadrimestre')
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
            '[filtro_ano_quadrimestre]'
            '[filtro_unidade] [filtro_funcionario] [filtro_metodologia]')
          ParentFont = False
        end
      end
      object MasterData: TfrxMasterData
        FillType = ftBrush
        Height = 120.440940000000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Left = 113.385900000000000000
          Width = 323.000000000000000000
          Height = 120.000000000000000000
          AutoSize = False
          DownThenAcross = False
          ShowColumnTotal = False
          ShowTitle = False
          CellFields.Strings = (
            'TOTAL')
          ColumnFields.Strings = (
            'REFERENCIA')
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          RowFields.Strings = (
            'TECNICO')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223333332C
            333835392220546F703D223239322C3838393932222057696474683D22383322
            204865696768743D22333022205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686143656E74657222204869
            64655A65726F733D22547275652220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D2230222F3E3C54
            6672784D656D6F56696577204C6566743D223333332C333835392220546F703D
            223332322C3838393932222057696474683D22383322204865696768743D2231
            3922205265737472696374696F6E733D2232342220416C6C6F77457870726573
            73696F6E733D2246616C73652220466F6E742E436861727365743D2231222046
            6F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220
            466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D223122
            204672616D652E5479703D2231352220476170583D22332220476170593D2233
            222048416C69676E3D22686143656E7465722220486964655A65726F733D2254
            7275652220506172656E74466F6E743D2246616C7365222056416C69676E3D22
            766143656E7465722220546578743D2230222F3E3C546672784D656D6F566965
            77204C6566743D223134342220546F703D223139222057696474683D22343122
            204865696768743D22313922205265737472696374696F6E733D223234222041
            6C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E436861
            727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E486569
            6768743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E74
            2E5374796C653D223022204672616D652E5479703D2231352220476170583D22
            332220476170593D2233222048416C69676E3D22686152696768742220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22222F3E3C546672784D656D6F56696577204C6566743D2231
            34342220546F703D223338222057696474683D22343122204865696768743D22
            313922205265737472696374696F6E733D2232342220416C6C6F774578707265
            7373696F6E733D2246616C73652220466F6E742E436861727365743D22312220
            466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D313122
            20466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231
            22204672616D652E5479703D2231352220476170583D22332220476170593D22
            33222048416C69676E3D22686152696768742220506172656E74466F6E743D22
            46616C7365222056416C69676E3D22766143656E7465722220546578743D2222
            2F3E3C2F63656C6C6D656D6F733E3C63656C6C6865616465726D656D6F733E3C
            546672784D656D6F56696577204C6566743D22302220546F703D223022205769
            6474683D223022204865696768743D223022205265737472696374696F6E733D
            22382220416C6C6F7745787072657373696F6E733D2246616C73652220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322205641
            6C69676E3D22766143656E7465722220546578743D22544F54414C222F3E3C54
            6672784D656D6F56696577204C6566743D22302220546F703D22302220576964
            74683D223022204865696768743D223022205265737472696374696F6E733D22
            382220416C6C6F7745787072657373696F6E733D2246616C736522204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222056416C
            69676E3D22766143656E7465722220546578743D22544F54414C222F3E3C2F63
            656C6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672
            784D656D6F56696577204C6566743D223333332C333835392220546F703D2232
            36312C3838393932222057696474683D22383322204865696768743D22333122
            205265737472696374696F6E733D2232342220416C6C6F774578707265737369
            6F6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E
            742E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F
            6E742E4E616D653D22417269616C2220466F6E742E5374796C653D2231222046
            72616D652E5479703D2231352220476170583D22332220476170593D22332220
            48416C69676E3D22686143656E7465722220506172656E74466F6E743D224661
            6C7365222056416C69676E3D22766143656E7465722220546578743D22222F3E
            3C2F636F6C756D6E6D656D6F733E3C636F6C756D6E746F74616C6D656D6F733E
            3C546672784D656D6F56696577204C6566743D223134342220546F703D223022
            2057696474683D22343122204865696768743D22313922205265737472696374
            696F6E733D2238222056697369626C653D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223122204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D22686143656E7465722220506172656E74466F
            6E743D2246616C7365222056416C69676E3D22766143656E7465722220546578
            743D22544F54414C222F3E3C2F636F6C756D6E746F74616C6D656D6F733E3C63
            6F726E65726D656D6F733E3C546672784D656D6F56696577204C6566743D2231
            33332C333835392220546F703D223236312C3838393932222057696474683D22
            32303022204865696768743D223022205265737472696374696F6E733D223822
            2056697369626C653D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C73652220466F6E742E436861727365743D22312220466F6E742E
            436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E74
            2E4E616D653D22417269616C2220466F6E742E5374796C653D22302220467261
            6D652E5479703D2231352220476170583D22332220476170593D223322204841
            6C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C73
            65222056416C69676E3D22766143656E7465722220546578743D22222F3E3C54
            6672784D656D6F56696577204C6566743D223333332C333835392220546F703D
            223236312C3838393932222057696474683D22383322204865696768743D2230
            22205265737472696374696F6E733D2238222056697369626C653D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31312220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D225245464552454E434941222F3E3C546672784D
            656D6F56696577204C6566743D22302220546F703D2230222057696474683D22
            3022204865696768743D223022205265737472696374696F6E733D2238222056
            697369626C653D2246616C73652220416C6C6F7745787072657373696F6E733D
            2246616C736522204672616D652E5479703D2231352220476170583D22332220
            476170593D2233222048416C69676E3D22686143656E746572222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F56
            696577204C6566743D223133332C333835392220546F703D223236312C383839
            3932222057696474683D2232303022204865696768743D223331222052657374
            72696374696F6E733D22382220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223122204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D2254C3A9636E69636F22
            2F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C546672784D
            656D6F56696577204C6566743D223133332C333835392220546F703D22323932
            2C3838393932222057696474683D2232303022204865696768743D2233302220
            5265737472696374696F6E733D2232342220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223022204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D22222F3E3C2F726F776D656D6F733E3C726F77746F7461
            6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223133332C33
            3835392220546F703D223332322C3838393932222057696474683D2232303022
            204865696768743D22313922205265737472696374696F6E733D22382220416C
            6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43686172
            7365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48656967
            68743D222D31312220466F6E742E4E616D653D22417269616C2220466F6E742E
            5374796C653D223122204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222048416C69676E3D22686143656E7465722220506172
            656E74466F6E743D2246616C7365222056416C69676E3D22766143656E746572
            2220546578743D22544F54414C222F3E3C2F726F77746F74616C6D656D6F733E
            3C63656C6C66756E6374696F6E733E3C6974656D20312F3E3C2F63656C6C6675
            6E6374696F6E733E3C636F6C756D6E736F72743E3C6974656D20322F3E3C2F63
            6F6C756D6E736F72743E3C726F77736F72743E3C6974656D20302F3E3C2F726F
            77736F72743E3C2F63726F73733E}
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
      
        'select * from stp_rel_metodologia_03(:ano, :quadrimestre, :funci' +
        'onario, :unidade, :metodo)')
    Left = 112
    Top = 328
    ParamData = <
      item
        Name = 'ANO'
        DataType = ftSmallint
        ParamType = ptInput
        Value = '2014'
      end
      item
        Name = 'QUADRIMESTRE'
        DataType = ftSmallint
        ParamType = ptInput
        Value = '2'
      end
      item
        Name = 'FUNCIONARIO'
        DataType = ftInteger
        ParamType = ptInput
        Value = '0'
      end
      item
        Name = 'UNIDADE'
        DataType = ftInteger
        ParamType = ptInput
        Value = '113'
      end
      item
        Name = 'METODO'
        DataType = ftInteger
        ParamType = ptInput
        Value = '0'
      end>
  end
end
