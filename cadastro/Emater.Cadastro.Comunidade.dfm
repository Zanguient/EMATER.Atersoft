inherited FrmCadastroComunidade: TFrmCadastroComunidade
  Tag = 1
  Left = 467
  Top = 178
  Hint = 'Cadastros :: Comunidade'
  Caption = 'Cadastros :: Comunidade'
  ClientHeight = 480
  ClientWidth = 490
  ExplicitWidth = 496
  ExplicitHeight = 509
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 328
    Top = 448
    Hint = 'Selecionar comunidade'
    ExplicitLeft = 328
    ExplicitTop = 448
  end
  inherited PgCntrlMain: TcxPageControl
    Width = 475
    Height = 434
    ExplicitWidth = 475
    ExplicitHeight = 434
    ClientRectBottom = 432
    ClientRectRight = 473
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 471
      ExplicitHeight = 404
      object GrpBxPrincipal: TcxGroupBox
        Left = 8
        Top = 0
        Caption = 'Informa'#231#245'es da comunidade'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Height = 159
        Width = 455
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio:'
          Transparent = True
        end
        object Label2: TLabel
          Tag = 2
          Left = 8
          Top = 64
          Width = 106
          Height = 13
          Caption = 'Nome da comunidade:'
          FocusControl = DbEdtNome
          Transparent = True
        end
        object Label3: TLabel
          Left = 8
          Top = 104
          Width = 58
          Height = 13
          Caption = 'Localiza'#231#227'o:'
          FocusControl = DbEdtLocalizacao
          Transparent = True
        end
        object Label4: TLabel
          Left = 232
          Top = 24
          Width = 17
          Height = 13
          Caption = 'UF:'
          FocusControl = DbEdtUF
          Transparent = True
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'COM_NOME'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 2
          Width = 438
        end
        object DbEdtLocalizacao: TcxDBTextEdit
          Left = 8
          Top = 120
          DataBinding.DataField = 'COM_LOCALIZACAO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 3
          Width = 438
        end
        object DbLkpCmbBxMunicipio: TcxDBLookupComboBox
          Left = 8
          Top = 40
          DataBinding.DataField = 'CID_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'CID_ID'
          Properties.ListColumns = <
            item
              FieldName = 'CID_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcCidade
          Properties.PostPopupValueOnTab = True
          TabOrder = 0
          Width = 217
        end
        object DbEdtUF: TcxDBTextEdit
          Left = 232
          Top = 40
          TabStop = False
          DataBinding.DataField = 'UFE_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 1
          Width = 41
        end
      end
      object GrdPrincipal: TcxGrid
        Left = 8
        Top = 168
        Width = 455
        Height = 227
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdPrincipalTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcPrincipal
          DataController.KeyFieldNames = 'COM_ID'
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
          object GrdPrincipalTblCOM_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'COM_NOME'
            Width = 167
          end
          object GrdPrincipalTblCOM_LOCALIZACAO: TcxGridDBColumn
            DataBinding.FieldName = 'COM_LOCALIZACAO'
            Width = 144
          end
          object GrdPrincipalTblCID_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'CID_NOME'
            Width = 104
          end
          object GrdPrincipalTblUFE_ID: TcxGridDBColumn
            DataBinding.FieldName = 'UFE_ID'
            Width = 38
          end
        end
        object GrdPrincipalLvl: TcxGridLevel
          GridView = GrdPrincipalTbl
        end
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 448
    Hint = '01. Novo'
    Description = 'Criar nova comunidade.'
    ExplicitTop = 448
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 448
    Hint = '02. Salvar'
    Description = 'Salvar altera'#231#245'es na comunidade.'
    ExplicitTop = 448
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 448
    Hint = '03. Cancelar'
    Description = 'Cancelar altera'#231#245'es na comunidade.'
    ExplicitTop = 448
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 448
    Hint = '04. Excluir'
    Description = 'Excluir comunidade selecionada.'
    ExplicitTop = 448
  end
  inherited BtnFechar: TcxButton
    Left = 408
    Top = 448
    ExplicitLeft = 408
    ExplicitTop = 448
  end
  inherited BtnRelatorio: TcxButton
    Top = 448
    Hint = 'Imprimir comunidade'
    ExplicitTop = 448
  end
  inherited QryPrincipal: TFDQuery
    AfterPost = QryPrincipalAfterPost
    SQL.Strings = (
      'select'
      '  a.com_id,'
      '  a.com_nome,'
      '  a.com_localizacao,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.cid_id,'
      '  b.cid_nome,'
      '  b.ufe_id'
      'from'
      
        '  tab_cad_comunidade a left join tab_dne_cidade b on (a.cid_id =' +
        ' b.cid_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))'
      'order by '
      '  a.com_nome')
    object QryPrincipalCOM_ID: TIntegerField
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalCOM_NOME: TStringField
      DisplayLabel = 'Nome da comunidade'
      FieldName = 'COM_NOME'
      Origin = 'COM_NOME'
      Required = True
      Size = 100
    end
    object QryPrincipalCOM_LOCALIZACAO: TStringField
      DisplayLabel = 'Loaliza'#231#227'o'
      FieldName = 'COM_LOCALIZACAO'
      Origin = 'COM_LOCALIZACAO'
      Size = 100
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
    object QryPrincipalCID_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_ID'
      Origin = 'CID_ID'
    end
    object QryPrincipalCID_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Origin = 'CID_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object QryPrincipalUFE_ID: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  inherited UpdtPrincipal: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_COMUNIDADE'
      '(COM_ID, COM_NOME, COM_LOCALIZACAO, CID_ID, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_COM_ID, :NEW_COM_NOME, :NEW_COM_LOCALIZACAO, :NEW_C' +
        'ID_ID, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_COMUNIDADE'
      
        'SET COM_ID = :NEW_COM_ID, COM_NOME = :NEW_COM_NOME, COM_LOCALIZA' +
        'CAO = :NEW_COM_LOCALIZACAO, '
      '  CID_ID = :NEW_CID_ID, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE COM_ID = :OLD_COM_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_COMUNIDADE'
      'WHERE COM_ID = :OLD_COM_ID')
    FetchRowSQL.Strings = (
      
        'SELECT COM_ID, COM_NOME, COM_LOCALIZACAO, CID_ID, REG_EXCLUIDO, ' +
        'REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_COMUNIDADE'
      'WHERE COM_ID = :COM_ID')
  end
  object DtSrcCidade: TDataSource
    DataSet = DtmDneModulo.DtStCidade
    Left = 280
    Top = 120
  end
end
