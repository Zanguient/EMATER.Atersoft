inherited FrmProaterPrincipal: TFrmProaterPrincipal
  Left = 337
  Top = 143
  Caption = 'PROATER'
  ClientHeight = 590
  ClientWidth = 806
  ExplicitLeft = 337
  ExplicitTop = 143
  ExplicitWidth = 822
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 644
    Top = 558
    ExplicitLeft = 642
    ExplicitTop = 558
  end
  inherited PgCntrlMain: TcxPageControl
    Width = 791
    Height = 544
    ExplicitWidth = 789
    ExplicitHeight = 544
    ClientRectBottom = 542
    ClientRectRight = 789
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitWidth = 785
      ExplicitHeight = 514
      object Label30: TLabel
        Left = 136
        Top = 17
        Width = 48
        Height = 13
        Caption = 'Escrit'#243'rio:'
        Transparent = True
      end
      object Label12: TLabel
        Tag = 2
        Left = 8
        Top = 16
        Width = 92
        Height = 13
        Caption = 'Data do PROATER:'
        FocusControl = DbDtEdtElaboracao
        Transparent = True
      end
      object Label37: TLabel
        Left = 648
        Top = 17
        Width = 81
        Height = 13
        Caption = #218'ltima altera'#231#227'o:'
        FocusControl = DbEdtModificadoData
        Transparent = True
      end
      object Label56: TLabel
        Left = 400
        Top = 17
        Width = 134
        Height = 13
        Caption = 'Usu'#225'rio da '#250'ltima altera'#231#227'o:'
        FocusControl = DbEdtModificadoUsuario
        Transparent = True
      end
      object cxPageControl1: TcxPageControl
        Left = 8
        Top = 64
        Width = 769
        Height = 441
        TabOrder = 0
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 439
        ClientRectLeft = 2
        ClientRectRight = 767
        ClientRectTop = 28
        object cxTabSheet1: TcxTabSheet
          Caption = 'Apresenta'#231#227'o'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 371
          object cxDBMemo1: TcxDBMemo
            Left = 8
            Top = 48
            DataBinding.DataField = 'PRO_APRESENTACAO'
            DataBinding.DataSource = DtSrcPrincipal
            Properties.ScrollBars = ssVertical
            TabOrder = 0
            Height = 353
            Width = 753
          end
          object cxButton2: TcxButton
            Left = 8
            Top = 16
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 371
          object cxDBMemo3: TcxDBMemo
            Left = 8
            Top = 48
            DataBinding.DataField = 'PRO_OBSERVACAO'
            DataBinding.DataSource = DtSrcPrincipal
            Properties.ScrollBars = ssVertical
            TabOrder = 0
            Height = 353
            Width = 745
          end
          object BtnTematica: TcxButton
            Left = 8
            Top = 16
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object DbLkpCmbBxUnidade: TcxDBLookupComboBox
        Left = 136
        Top = 33
        TabStop = False
        DataBinding.DataField = 'UND_ID'
        DataBinding.DataSource = DtSrcPrincipal
        Enabled = False
        Properties.DropDownRows = 16
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'UND_ID'
        Properties.ListColumns = <
          item
            FieldName = 'UND_NOME_DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DtmSistemaModulo.DtSrcUnidade
        Properties.PostPopupValueOnTab = True
        Properties.ReadOnly = False
        TabOrder = 1
        Width = 257
      end
      object DbDtEdtElaboracao: TcxDBDateEdit
        Left = 8
        Top = 32
        DataBinding.DataField = 'PRO_DATA'
        DataBinding.DataSource = DtSrcPrincipal
        TabOrder = 2
        Width = 121
      end
      object DbEdtModificadoData: TcxDBTextEdit
        Left = 648
        Top = 33
        DataBinding.DataField = 'REG_MODIFICADO'
        DataBinding.DataSource = DtSrcPrincipal
        Enabled = False
        TabOrder = 3
        Width = 129
      end
      object DbEdtModificadoUsuario: TcxDBTextEdit
        Left = 400
        Top = 33
        DataBinding.DataField = 'REG_USUARIO'
        DataBinding.DataSource = DtSrcPrincipal
        Enabled = False
        TabOrder = 4
        Width = 241
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'Diagn'#243'stico do munic'#237'pio'
      ImageIndex = 1
      ExplicitWidth = 785
      object cxPageControl2: TcxPageControl
        Left = 8
        Top = 8
        Width = 769
        Height = 497
        TabOrder = 0
        Properties.ActivePage = cxTabSheet9
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 495
        ClientRectLeft = 2
        ClientRectRight = 767
        ClientRectTop = 28
        object cxTabSheet9: TcxTabSheet
          Caption = 'Estat'#237'sticas'
          ImageIndex = 2
          ExplicitHeight = 451
          object cxButton1: TcxButton
            Left = 8
            Top = 24
            Width = 129
            Height = 25
            Caption = 'Editar em tela cheia'
            OptionsImage.ImageIndex = 16
            OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cxDBMemo2: TcxDBMemo
            Left = 8
            Top = 56
            DataBinding.DataField = 'PRO_ESTATISTICA'
            DataBinding.DataSource = DtSrcPrincipal
            Properties.ScrollBars = ssVertical
            TabOrder = 1
            Height = 401
            Width = 747
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = 'Benefici'#225'rios e UPF'
          ImageIndex = 0
          DesignSize = (
            765
            467)
          object GrdCom: TcxGrid
            Left = 8
            Top = 8
            Width = 747
            Height = 449
            Anchors = [akLeft, akTop, akRight, akBottom]
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            object GrdComTbl: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              Navigator.Buttons.First.Hint = 'Primeira prescri'#231#227'o'
              Navigator.Buttons.PriorPage.Visible = False
              Navigator.Buttons.Prior.Hint = 'Prescri'#231#227'o anterior'
              Navigator.Buttons.Prior.Visible = True
              Navigator.Buttons.Next.Hint = 'Pr'#243'xima prescri'#231#227'o'
              Navigator.Buttons.NextPage.Visible = False
              Navigator.Buttons.Last.Hint = #218'ltima prescri'#231#227'o'
              Navigator.Buttons.Insert.Visible = False
              Navigator.Buttons.Delete.Visible = False
              Navigator.Buttons.Edit.Visible = False
              Navigator.Buttons.Post.Visible = False
              Navigator.Buttons.Cancel.Visible = False
              Navigator.Buttons.Refresh.Visible = False
              Navigator.Buttons.SaveBookmark.Visible = False
              Navigator.Buttons.GotoBookmark.Visible = False
              Navigator.Buttons.Filter.Visible = False
              FilterBox.CustomizeDialog = False
              DataController.DataSource = DtSrcComunidade
              DataController.KeyFieldNames = 'PRC_ID'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.CellHints = True
              OptionsBehavior.ImmediateEditor = False
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnHidingOnGrouping = False
              OptionsCustomize.ColumnMoving = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsSelection.CellSelect = False
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
              OptionsView.ColumnAutoWidth = True
              OptionsView.GridLines = glNone
              OptionsView.GroupByBox = False
              OptionsView.HeaderEndEllipsis = True
              OptionsView.HeaderHeight = 21
              Styles.ContentEven = DtmRecursoModulo.cxStyleEven
              Styles.Inactive = DtmRecursoModulo.cxStyleSelection
              Styles.Selection = DtmRecursoModulo.cxStyleSelection
              object GrdComTblCOM_NOME: TcxGridDBColumn
                DataBinding.FieldName = 'COM_NOME'
                Width = 280
              end
              object GrdComTblPRC_LOCALIZACAO: TcxGridDBColumn
                DataBinding.FieldName = 'PRC_LOCALIZACAO'
                Width = 269
              end
              object GrdComTblPRC_QTDE_BENEFICIARIO: TcxGridDBColumn
                DataBinding.FieldName = 'PRC_QTDE_BENEFICIARIO'
                Width = 105
              end
              object GrdComTblPRC_QTDE_UPF: TcxGridDBColumn
                DataBinding.FieldName = 'PRC_QTDE_UPF'
                Width = 109
              end
            end
            object GrdComLvl: TcxGridLevel
              GridView = GrdComTbl
            end
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Problemas e potencialidades'
          ImageIndex = 1
          ExplicitHeight = 451
        end
        object cxTabSheet10: TcxTabSheet
          Caption = 'Acordos, conv'#234'nios e parcerias'
          ImageIndex = 3
          ExplicitHeight = 451
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Capacidade operacional do ESLOC'
      ImageIndex = 2
      ExplicitWidth = 785
      object cxPageControl3: TcxPageControl
        Left = 8
        Top = 8
        Width = 769
        Height = 497
        TabOrder = 0
        Properties.ActivePage = cxTabSheet2
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 495
        ClientRectLeft = 2
        ClientRectRight = 767
        ClientRectTop = 28
        object cxTabSheet2: TcxTabSheet
          Caption = 'Recursos humanos'
          ImageIndex = 0
          ExplicitLeft = -6
          ExplicitTop = 12
          ExplicitWidth = 285
          ExplicitHeight = 163
        end
        object cxTabSheet11: TcxTabSheet
          Caption = 'Mobili'#225'rio'
          ImageIndex = 1
        end
        object cxTabSheet12: TcxTabSheet
          Caption = 'Equipamentos'
          ImageIndex = 2
        end
        object cxTabSheet13: TcxTabSheet
          Caption = 'Ve'#237'culos'
          ImageIndex = 3
        end
        object cxTabSheet14: TcxTabSheet
          Caption = 'Despesas de custeio'
          ImageIndex = 4
        end
        object cxTabSheet15: TcxTabSheet
          Caption = 'Necessidades de qualifica'#231#227'o'
          ImageIndex = 5
        end
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'Plano de ATER do ESLOC'
      ImageIndex = 3
      ExplicitWidth = 785
      object cxPageControl4: TcxPageControl
        Left = 8
        Top = 8
        Width = 769
        Height = 497
        TabOrder = 0
        Properties.ActivePage = cxTabSheet16
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 495
        ClientRectLeft = 2
        ClientRectRight = 767
        ClientRectTop = 28
        object cxTabSheet16: TcxTabSheet
          Caption = 'Projetos e subprojetos'
          ImageIndex = 0
          ExplicitWidth = 285
          ExplicitHeight = 163
        end
        object cxTabSheet17: TcxTabSheet
          Caption = 'Metas'
          ImageIndex = 1
        end
        object cxTabSheet18: TcxTabSheet
          Caption = 'Metodologias de ATER'
          ImageIndex = 2
        end
        object cxTabSheet19: TcxTabSheet
          Caption = 'Benefici'#225'rios de ATER'
          ImageIndex = 3
        end
        object cxTabSheet20: TcxTabSheet
          Caption = 'Previs'#227'o or'#231'ament'#225'ria'
          ImageIndex = 4
        end
      end
    end
  end
  inherited BtnNovo: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited BtnSalvar: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited BtnCancelar: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited BtnExcluir: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited BtnFechar: TcxButton
    Left = 724
    Top = 558
    ExplicitLeft = 722
    ExplicitTop = 558
  end
  inherited BtnRelatorio: TcxButton
    Top = 558
    ExplicitTop = 558
  end
  inherited DtStPrincipal: TpFIBDataSet
    Left = 64
    Top = 224
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 208
    Top = 224
  end
  inherited QryPrincipal: TFDQuery
    SQL.Strings = (
      'select'
      '  a.pro_id,'
      '  a.pro_data, '
      '  a.pro_apresentacao, '
      '  a.pro_observacao, '
      '  a.pro_estatistica, '
      '  a.und_id, '
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      '  tab_prd_proater a'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)')
    Left = 144
    Top = 224
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Value = Null
      end>
    object QryPrincipalPRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalPRO_DATA: TDateField
      FieldName = 'PRO_DATA'
      Origin = 'PRO_DATA'
    end
    object QryPrincipalPRO_APRESENTACAO: TMemoField
      FieldName = 'PRO_APRESENTACAO'
      Origin = 'PRO_APRESENTACAO'
      BlobType = ftMemo
    end
    object QryPrincipalPRO_OBSERVACAO: TMemoField
      FieldName = 'PRO_OBSERVACAO'
      Origin = 'PRO_OBSERVACAO'
      BlobType = ftMemo
    end
    object QryPrincipalPRO_ESTATISTICA: TMemoField
      FieldName = 'PRO_ESTATISTICA'
      Origin = 'PRO_ESTATISTICA'
      BlobType = ftMemo
    end
    object QryPrincipalUND_ID: TIntegerField
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
    end
    object QryPrincipalREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryPrincipalREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryPrincipalREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryPrincipalREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  inherited UpdtPrincipal: TFDUpdateSQL
    Left = 176
    Top = 224
  end
  object FDQuery1: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = FDUpdateSQL1
    Left = 336
    Top = 128
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    Left = 368
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    OnStateChange = DtSrcPrincipalStateChange
    Left = 400
    Top = 128
  end
  object DtSrcComunidade: TDataSource
    DataSet = QryComunidade
    OnStateChange = DtSrcPrincipalStateChange
    Left = 208
    Top = 256
  end
  object UpdtComunidade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_PRD_PROATER_COMUNIDADE'
      '(PRC_ID, PRC_LOCALIZACAO, PRC_QTDE_BENEFICIARIO, '
      '  PRC_QTDE_UPF, PRO_ID, COM_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PRC_ID, :NEW_PRC_LOCALIZACAO, :NEW_PRC_QTDE_BENEFIC' +
        'IARIO, '
      
        '  :NEW_PRC_QTDE_UPF, :NEW_PRO_ID, :NEW_COM_ID, :NEW_REG_EXCLUIDO' +
        ', '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_PRD_PROATER_COMUNIDADE'
      
        'SET PRC_ID = :NEW_PRC_ID, PRC_LOCALIZACAO = :NEW_PRC_LOCALIZACAO' +
        ', '
      
        '  PRC_QTDE_BENEFICIARIO = :NEW_PRC_QTDE_BENEFICIARIO, PRC_QTDE_U' +
        'PF = :NEW_PRC_QTDE_UPF, '
      
        '  PRO_ID = :NEW_PRO_ID, COM_ID = :NEW_COM_ID, REG_EXCLUIDO = :NE' +
        'W_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PRC_ID = :OLD_PRC_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_PRD_PROATER_COMUNIDADE'
      'WHERE PRC_ID = :OLD_PRC_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRC_ID, PRC_LOCALIZACAO, PRC_QTDE_BENEFICIARIO, PRC_QTDE_' +
        'UPF, '
      '  PRO_ID, COM_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_PRD_PROATER_COMUNIDADE'
      'WHERE PRC_ID = :PRC_ID')
    Left = 176
    Top = 256
  end
  object QryComunidade: TFDQuery
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtComunidade
    SQL.Strings = (
      'select'
      '  a.prc_id,'
      '  a.prc_localizacao, '
      '  a.prc_qtde_beneficiario, '
      '  a.prc_qtde_upf, '
      '  a.pro_id, '
      '  a.com_id, '
      '  b.com_nome,'
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado'
      'from'
      
        '  tab_prd_proater_comunidade a join tab_cad_comunidade b on (a.c' +
        'om_id = b.com_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.com_nome')
    Left = 144
    Top = 256
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QryComunidadePRC_ID: TLargeintField
      FieldName = 'PRC_ID'
      Origin = 'PRC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryComunidadePRC_LOCALIZACAO: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'PRC_LOCALIZACAO'
      Origin = 'PRC_LOCALIZACAO'
      Size = 100
    end
    object QryComunidadePRC_QTDE_BENEFICIARIO: TIntegerField
      DisplayLabel = 'N'#186'. de benefici'#225'rios de ATER cadastrados'
      FieldName = 'PRC_QTDE_BENEFICIARIO'
      Origin = 'PRC_QTDE_BENEFICIARIO'
    end
    object QryComunidadePRC_QTDE_UPF: TIntegerField
      DisplayLabel = 'N'#250'mero de UPF cadastradas'
      FieldName = 'PRC_QTDE_UPF'
      Origin = 'PRC_QTDE_UPF'
    end
    object QryComunidadePRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryComunidadeCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
      Required = True
    end
    object QryComunidadeCOM_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome da comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryComunidadeREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryComunidadeREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryComunidadeREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryComunidadeREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
end
