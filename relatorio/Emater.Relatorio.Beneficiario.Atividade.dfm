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
          ' Relat'#243'rio de benefici'#225'rio de ATER por atividade produtiva segun' +
          'do a categoria'
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
    ReportOptions.Name = 'Quantidade de benefici'#225'rios por categoria'
    ReportOptions.LastChange = 41954.616767696760000000
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
        Top = 461.102660000000000000
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
        Height = 109.606370000000000000
        inherited MemoTitulo: TfrxMemoView
          Height = 26.456692910000000000
          DisplayFormat.DecimalSeparator = ''
          Memo.UTF8W = (
            
              'Relat'#243'rio de benefici'#225'rios de ATER por atividade produtiva segun' +
              'do a categoria')
        end
        object Memo15: TfrxMemoView
          Top = 26.456710000000000000
          Width = 718.110700000000000000
          Height = 83.149660000000000000
          ShowHint = False
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
        Height = 116.000000000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
        RowCount = 0
        object DBCross1: TfrxDBCrossView
          Left = 34.015770000000000000
          Width = 423.000000000000000000
          Height = 113.559060000000000000
          ShowHint = False
          AutoSize = False
          DownThenAcross = False
          RowLevels = 2
          ShowRowTotal = False
          ShowTitle = False
          CellFields.Strings = (
            'TOTAL')
          ColumnFields.Strings = (
            'CATEGORIA')
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          RowFields.Strings = (
            'TECNICO'
            'ATIVIDADE')
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C63726F73733E3C6365
            6C6C6D656D6F733E3C546672784D656D6F56696577204C6566743D223330352C
            30313537372220546F703D223334352C3830333334222057696474683D223636
            22204865696768743D2233312C323230343722205265737472696374696F6E73
            3D223234222053686F7748696E743D2246616C73652220416C6C6F7745787072
            657373696F6E733D2246616C73652220466F6E742E436861727365743D223122
            20466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D3131
            2220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D22
            3022204672616D652E5479703D2231352220476170583D22332220476170593D
            2233222048416C69676E3D22686143656E7465722220486964655A65726F733D
            22547275652220506172656E74466F6E743D2246616C7365222056416C69676E
            3D22766143656E7465722220546578743D2230222F3E3C546672784D656D6F56
            696577204C6566743D22302220546F703D2230222057696474683D2230222048
            65696768743D223022205265737472696374696F6E733D2238222053686F7748
            696E743D2246616C73652220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D2231352220476170583D22332220476170
            593D2233222048416C69676E3D2268615269676874222056416C69676E3D2276
            6143656E7465722220546578743D22222F3E3C546672784D656D6F5669657720
            4C6566743D223133302220546F703D223537222057696474683D223736222048
            65696768743D22313922205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E61
            6D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222048416C6967
            6E3D22686152696768742220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D2230222F3E3C54667278
            4D656D6F56696577204C6566743D223337312C30313537372220546F703D2233
            34352C3830333334222057696474683D22363622204865696768743D2233312C
            323230343722205265737472696374696F6E733D223234222053686F7748696E
            743D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C73
            652220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22
            302220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22
            417269616C2220466F6E742E5374796C653D223122204672616D652E5479703D
            2231352220476170583D22332220476170593D2233222048416C69676E3D2268
            6143656E7465722220486964655A65726F733D22547275652220506172656E74
            466F6E743D2246616C7365222056416C69676E3D22766143656E746572222054
            6578743D2230222F3E3C546672784D656D6F56696577204C6566743D22302220
            546F703D2230222057696474683D223022204865696768743D22302220526573
            7472696374696F6E733D2238222053686F7748696E743D2246616C7365222041
            6C6C6F7745787072657373696F6E733D2246616C736522204672616D652E5479
            703D2231352220476170583D22332220476170593D2233222048416C69676E3D
            2268615269676874222056416C69676E3D22766143656E746572222054657874
            3D22222F3E3C546672784D656D6F56696577204C6566743D223230362220546F
            703D223537222057696474683D22363622204865696768743D22313922205265
            737472696374696F6E733D223234222053686F7748696E743D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C73652220466F6E742E43
            6861727365743D22312220466F6E742E436F6C6F723D22302220466F6E742E48
            65696768743D222D31312220466F6E742E4E616D653D22417269616C2220466F
            6E742E5374796C653D223022204672616D652E5479703D223135222047617058
            3D22332220476170593D2233222048416C69676E3D2268615269676874222050
            6172656E74466F6E743D2246616C7365222056416C69676E3D22766143656E74
            65722220546578743D2230222F3E3C2F63656C6C6D656D6F733E3C63656C6C68
            65616465726D656D6F733E3C546672784D656D6F56696577204C6566743D2230
            2220546F703D2230222057696474683D223022204865696768743D2230222052
            65737472696374696F6E733D2238222053686F7748696E743D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222056416C6967
            6E3D22766143656E7465722220546578743D22544F54414C222F3E3C54667278
            4D656D6F56696577204C6566743D22302220546F703D2230222057696474683D
            223022204865696768743D223022205265737472696374696F6E733D22382220
            53686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E
            733D2246616C736522204672616D652E5479703D2231352220476170583D2233
            2220476170593D2233222056416C69676E3D22766143656E7465722220546578
            743D22544F54414C222F3E3C546672784D656D6F56696577204C6566743D2230
            2220546F703D2230222057696474683D223022204865696768743D2230222052
            65737472696374696F6E733D2238222053686F7748696E743D2246616C736522
            20416C6C6F7745787072657373696F6E733D2246616C736522204672616D652E
            5479703D2231352220476170583D22332220476170593D2233222056416C6967
            6E3D22766143656E7465722220546578743D22544F54414C222F3E3C2F63656C
            6C6865616465726D656D6F733E3C636F6C756D6E6D656D6F733E3C546672784D
            656D6F56696577204C6566743D223330352C30313537372220546F703D223330
            332C3436343735222057696474683D22363622204865696768743D2234322C33
            3338353922205265737472696374696F6E733D223234222053686F7748696E74
            3D2246616C73652220416C6C6F7745787072657373696F6E733D2246616C7365
            2220466F6E742E436861727365743D22312220466F6E742E436F6C6F723D2230
            2220466F6E742E4865696768743D222D31312220466F6E742E4E616D653D2241
            7269616C2220466F6E742E5374796C653D223122204672616D652E5479703D22
            31352220476170583D22332220476170593D2233222048416C69676E3D226861
            43656E7465722220506172656E74466F6E743D2246616C7365222056416C6967
            6E3D22766143656E7465722220546578743D22222F3E3C2F636F6C756D6E6D65
            6D6F733E3C636F6C756D6E746F74616C6D656D6F733E3C546672784D656D6F56
            696577204C6566743D223337312C30313537372220546F703D223330332C3436
            343735222057696474683D22363622204865696768743D2234322C3333383539
            22205265737472696374696F6E733D2238222053686F7748696E743D2246616C
            73652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E
            742E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E
            742E4865696768743D222D31312220466F6E742E4E616D653D22417269616C22
            20466F6E742E5374796C653D223122204672616D652E5479703D223135222047
            6170583D22332220476170593D2233222048416C69676E3D22686143656E7465
            722220506172656E74466F6E743D2246616C7365222056416C69676E3D227661
            43656E7465722220546578743D22544F54414C222F3E3C2F636F6C756D6E746F
            74616C6D656D6F733E3C636F726E65726D656D6F733E3C546672784D656D6F56
            696577204C6566743D2235342C30313537372220546F703D223330332C343634
            3735222057696474683D2232353122204865696768743D223022205265737472
            696374696F6E733D2238222056697369626C653D2246616C7365222053686F77
            48696E743D2246616C73652220416C6C6F7745787072657373696F6E733D2246
            616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C6F
            723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E616D
            653D22417269616C2220466F6E742E5374796C653D223022204672616D652E54
            79703D2231352220476170583D22332220476170593D2233222048416C69676E
            3D22686143656E7465722220506172656E74466F6E743D2246616C7365222056
            416C69676E3D22766143656E7465722220546578743D22222F3E3C546672784D
            656D6F56696577204C6566743D223330352C30313537372220546F703D223330
            332C3436343735222057696474683D2231333222204865696768743D22302220
            5265737472696374696F6E733D2238222056697369626C653D2246616C736522
            2053686F7748696E743D2246616C73652220416C6C6F7745787072657373696F
            6E733D2246616C73652220466F6E742E436861727365743D22312220466F6E74
            2E436F6C6F723D22302220466F6E742E4865696768743D222D31312220466F6E
            742E4E616D653D22417269616C2220466F6E742E5374796C653D223122204672
            616D652E5479703D2231352220476170583D22332220476170593D2233222048
            416C69676E3D22686143656E7465722220506172656E74466F6E743D2246616C
            7365222056416C69676E3D22766143656E7465722220546578743D2243617465
            676F726961222F3E3C546672784D656D6F56696577204C6566743D2230222054
            6F703D2230222057696474683D223022204865696768743D2230222052657374
            72696374696F6E733D2238222056697369626C653D2246616C7365222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C736522204672616D652E5479703D2231352220476170583D2233222047
            6170593D2233222048416C69676E3D22686143656E746572222056416C69676E
            3D22766143656E7465722220546578743D22222F3E3C546672784D656D6F5669
            6577204C6566743D2235342C30313537372220546F703D223330332C34363437
            35222057696474683D2231343422204865696768743D2234322C333338353922
            205265737472696374696F6E733D2238222053686F7748696E743D2246616C73
            652220416C6C6F7745787072657373696F6E733D2246616C73652220466F6E74
            2E436861727365743D22312220466F6E742E436F6C6F723D22302220466F6E74
            2E4865696768743D222D31312220466F6E742E4E616D653D22417269616C2220
            466F6E742E5374796C653D223122204672616D652E5479703D22313522204761
            70583D22332220476170593D2233222048416C69676E3D22686143656E746572
            2220506172656E74466F6E743D2246616C7365222056416C69676E3D22766143
            656E7465722220546578743D2254C3A9636E69636F222F3E3C546672784D656D
            6F56696577204C6566743D223139382C30313537372220546F703D223330332C
            3436343735222057696474683D2231303722204865696768743D2234322C3333
            38353922205265737472696374696F6E733D2238222053686F7748696E743D22
            46616C73652220416C6C6F7745787072657373696F6E733D2246616C73652220
            466F6E742E436861727365743D22312220466F6E742E436F6C6F723D22302220
            466F6E742E4865696768743D222D31312220466F6E742E4E616D653D22417269
            616C2220466F6E742E5374796C653D223122204672616D652E5479703D223135
            2220476170583D22332220476170593D2233222048416C69676E3D2268614365
            6E7465722220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D224174697669646164652070726F6475
            74697661222F3E3C2F636F726E65726D656D6F733E3C726F776D656D6F733E3C
            546672784D656D6F56696577204C6566743D2235342C30313537372220546F70
            3D223334352C3830333334222057696474683D2231343422204865696768743D
            2233312C323230343722205265737472696374696F6E733D223234222053686F
            7748696E743D2246616C73652220416C6C6F7745787072657373696F6E733D22
            46616C73652220466F6E742E436861727365743D22312220466F6E742E436F6C
            6F723D22302220466F6E742E4865696768743D222D31312220466F6E742E4E61
            6D653D22417269616C2220466F6E742E5374796C653D223022204672616D652E
            5479703D2231352220476170583D22332220476170593D22332220506172656E
            74466F6E743D2246616C7365222056416C69676E3D22766143656E7465722220
            546578743D22222F3E3C546672784D656D6F56696577204C6566743D22313938
            2C30313537372220546F703D223334352C3830333334222057696474683D2231
            303722204865696768743D2233312C323230343722205265737472696374696F
            6E733D223234222053686F7748696E743D2246616C73652220416C6C6F774578
            7072657373696F6E733D2246616C73652220466F6E742E436861727365743D22
            312220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D
            31312220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C65
            3D223022204672616D652E5479703D2231352220476170583D22332220476170
            593D22332220506172656E74466F6E743D2246616C7365222056416C69676E3D
            22766143656E7465722220546578743D22222F3E3C2F726F776D656D6F733E3C
            726F77746F74616C6D656D6F733E3C546672784D656D6F56696577204C656674
            3D22302220546F703D223537222057696474683D223133302220486569676874
            3D22313922205265737472696374696F6E733D2238222056697369626C653D22
            46616C7365222053686F7748696E743D2246616C73652220416C6C6F77457870
            72657373696F6E733D2246616C73652220466F6E742E436861727365743D2231
            2220466F6E742E436F6C6F723D22302220466F6E742E4865696768743D222D31
            312220466F6E742E4E616D653D22417269616C2220466F6E742E5374796C653D
            223122204672616D652E5479703D2231352220476170583D2233222047617059
            3D2233222048416C69676E3D22686143656E7465722220506172656E74466F6E
            743D2246616C7365222056416C69676E3D22766143656E746572222054657874
            3D22544F54414C222F3E3C546672784D656D6F56696577204C6566743D223022
            20546F703D2230222057696474683D223022204865696768743D223022205265
            737472696374696F6E733D2238222056697369626C653D2246616C7365222053
            686F7748696E743D2246616C73652220416C6C6F7745787072657373696F6E73
            3D2246616C73652220466F6E742E436861727365743D22312220466F6E742E43
            6F6C6F723D22302220466F6E742E4865696768743D222D31332220466F6E742E
            4E616D653D22417269616C2220466F6E742E5374796C653D223122204672616D
            652E5479703D2231352220476170583D22332220476170593D2233222048416C
            69676E3D22686143656E7465722220506172656E74466F6E743D2246616C7365
            222056416C69676E3D22766143656E7465722220546578743D22546F74616C22
            2F3E3C2F726F77746F74616C6D656D6F733E3C63656C6C66756E6374696F6E73
            3E3C6974656D20312F3E3C2F63656C6C66756E6374696F6E733E3C636F6C756D
            6E736F72743E3C6974656D20302F3E3C2F636F6C756D6E736F72743E3C726F77
            736F72743E3C6974656D20302F3E3C6974656D20302F3E3C2F726F77736F7274
            3E3C2F63726F73733E}
        end
      end
    end
  end
  object DtStPrincipal: TpFIBDataSet
    SelectSQL.Strings = (
      
        'select * from stp_rel_categoria_02 (:data_inicio, :data_fim, :un' +
        'idade, :funcionario)'
      
        '--select * from stp_rel_categoria_02 ('#39'01.01.2014'#39', '#39'31.12.2014'#39 +
        ', 111, 0)')
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
    object DtStPrincipalTECNICO: TFIBStringField
      FieldName = 'TECNICO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalATIVIDADE: TFIBStringField
      FieldName = 'ATIVIDADE'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalCATEGORIA: TFIBStringField
      FieldName = 'CATEGORIA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalTOTAL: TFIBIntegerField
      FieldName = 'TOTAL'
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
