inherited FrmCadastroOrganizacao: TFrmCadastroOrganizacao
  Tag = 1
  Left = 403
  Top = 135
  Hint = 'Cadastro das organiza'#231#245'es.'
  Caption = 'Organiza'#231#227'o Social'
  ClientHeight = 474
  ClientWidth = 572
  ExplicitLeft = 403
  ExplicitTop = 135
  ExplicitWidth = 588
  ExplicitHeight = 513
  DesignSize = (
    572
    474)
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 410
    Top = 442
    ExplicitLeft = 410
    ExplicitTop = 442
  end
  inherited PgCntrlMain: TcxPageControl
    Width = 557
    Height = 428
    ExplicitWidth = 557
    ExplicitHeight = 428
    ClientRectBottom = 426
    ClientRectRight = 555
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitWidth = 553
      ExplicitHeight = 398
      object LblPublicoDisponivel: TLabel
        Left = 288
        Top = 262
        Width = 175
        Height = 13
        Caption = 'P'#250'blico afiliado/associado dispon'#237'vel:'
        Transparent = True
      end
      object LblPublico: TLabel
        Left = 8
        Top = 262
        Width = 201
        Height = 13
        Caption = 'P'#250'blico afiliado/associado da organiza'#231#227'o:'
        Transparent = True
      end
      object GrpBxPrincipal: TcxGroupBox
        Left = 8
        Top = 0
        Caption = 'Informa'#231#245'es da organiza'#231#227'o'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Height = 149
        Width = 537
        object Label2: TLabel
          Left = 408
          Top = 16
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
          Transparent = True
        end
        object Label3: TLabel
          Tag = 2
          Left = 8
          Top = 16
          Width = 136
          Height = 13
          Caption = 'Nome da organiza'#231#227'o social:'
          FocusControl = DbEdtNome
          Transparent = True
        end
        object Label5: TLabel
          Left = 280
          Top = 16
          Width = 26
          Height = 13
          Caption = 'Sigla:'
          FocusControl = DbEdtSigla
          Transparent = True
        end
        object Label11: TLabel
          Tag = 2
          Left = 8
          Top = 56
          Width = 100
          Height = 13
          Caption = 'Tipo de organiza'#231#227'o:'
          Transparent = True
        end
        object Label12: TLabel
          Left = 280
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Telefone:'
          FocusControl = DbEdtTelefone1
          Transparent = True
        end
        object Label13: TLabel
          Left = 408
          Top = 56
          Width = 46
          Height = 13
          Caption = 'Telefone:'
          FocusControl = DbEdtTelefone2
          Transparent = True
        end
        object Label14: TLabel
          Left = 8
          Top = 96
          Width = 32
          Height = 13
          Caption = 'E-mail:'
          FocusControl = DbEdtEmail
          Transparent = True
        end
        object Label15: TLabel
          Left = 280
          Top = 96
          Width = 134
          Height = 13
          Caption = 'Nome do respons'#225'vel atual:'
          FocusControl = DbEdtResponsavel
          Transparent = True
        end
        object Label16: TLabel
          Left = 200
          Top = 56
          Width = 62
          Height = 13
          Caption = 'N.'#186' afiliados:'
          FocusControl = DbEdtFiliados
          Transparent = True
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'ORG_NOME'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 0
          Width = 265
        end
        object DbEdtSigla: TcxDBTextEdit
          Left = 280
          Top = 32
          DataBinding.DataField = 'ORG_SIGLA'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 1
          Width = 121
        end
        object DbLkpCmbBxTipo: TcxDBLookupComboBox
          Left = 8
          Top = 72
          DataBinding.DataField = 'OTP_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'OTP_ID'
          Properties.ListColumns = <
            item
              FieldName = 'OTP_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtmCadastroModulo.DtSrcOrganizacaoTipo
          Properties.PostPopupValueOnTab = True
          TabOrder = 3
          Width = 185
        end
        object DbEdtEmail: TcxDBTextEdit
          Left = 8
          Top = 112
          DataBinding.DataField = 'ORG_EMAIL'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 7
          Width = 265
        end
        object DbEdtResponsavel: TcxDBTextEdit
          Left = 280
          Top = 112
          DataBinding.DataField = 'ORG_RESPONSAVEL'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 8
          Width = 249
        end
        object DbEdtCNPJ: TcxDBMaskEdit
          Left = 408
          Top = 32
          DataBinding.DataField = 'ORG_CNPJ'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.AlwaysShowBlanksAndLiterals = True
          Properties.ClearKey = 46
          Properties.EditMask = '99.999.999/9999-99;0; '
          TabOrder = 2
          Width = 121
        end
        object DbEdtFiliados: TcxDBTextEdit
          Left = 200
          Top = 72
          DataBinding.DataField = 'ORG_FILIADOS'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 4
          Width = 73
        end
        object DbEdtTelefone1: TcxDBMaskEdit
          Left = 280
          Top = 72
          DataBinding.DataField = 'ORG_TELEFONE_1'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ClearKey = 46
          Properties.EditMask = '!\(99\) 9999-9999;1; '
          TabOrder = 5
          Width = 121
        end
        object DbEdtTelefone2: TcxDBMaskEdit
          Left = 408
          Top = 72
          DataBinding.DataField = 'ORG_TELEFONE_2'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ClearKey = 46
          Properties.EditMask = '!\(99\) 9999-9999;1; '
          TabOrder = 6
          Width = 121
        end
      end
      object GrpBxEndereco: TcxGroupBox
        Left = 8
        Top = 150
        Caption = 'Endere'#231'o'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        Height = 109
        Width = 537
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 23
          Height = 13
          Caption = 'CEP:'
          Transparent = True
        end
        object Label7: TLabel
          Left = 104
          Top = 16
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          FocusControl = DbEdtEndereco
          Transparent = True
        end
        object Label8: TLabel
          Left = 472
          Top = 16
          Width = 41
          Height = 13
          Caption = 'N'#250'mero:'
          FocusControl = DbEdtNumero
          Transparent = True
        end
        object Label9: TLabel
          Left = 8
          Top = 56
          Width = 69
          Height = 13
          Caption = 'Complemento:'
          FocusControl = DbEdtComplemento
          Transparent = True
        end
        object Label10: TLabel
          Left = 208
          Top = 56
          Width = 32
          Height = 13
          Caption = 'Bairro:'
          FocusControl = DbEdtBairro
          Transparent = True
        end
        object Label1: TLabel
          Tag = 2
          Left = 328
          Top = 56
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio:'
          Transparent = True
        end
        object Label4: TLabel
          Left = 496
          Top = 56
          Width = 17
          Height = 13
          Caption = 'UF:'
          FocusControl = DbEdtUF
          Transparent = True
        end
        object DbEdtEndereco: TcxDBTextEdit
          Left = 104
          Top = 32
          DataBinding.DataField = 'ORG_ENDERECO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 1
          Width = 361
        end
        object DbEdtNumero: TcxDBTextEdit
          Left = 472
          Top = 32
          DataBinding.DataField = 'ORG_NUMERO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 2
          Width = 57
        end
        object DbEdtComplemento: TcxDBTextEdit
          Left = 8
          Top = 72
          DataBinding.DataField = 'ORG_COMPLEMENTO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 3
          Width = 193
        end
        object DbEdtBairro: TcxDBTextEdit
          Left = 208
          Top = 72
          DataBinding.DataField = 'ORG_BAIRRO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 4
          Width = 113
        end
        object DbLkpCmbBxMunicipio: TcxDBLookupComboBox
          Left = 328
          Top = 72
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
          Properties.ListSource = DtmDneModulo.DtSrcCidade
          Properties.PostPopupValueOnTab = True
          TabOrder = 5
          Width = 161
        end
        object DbEdtUF: TcxDBTextEdit
          Left = 496
          Top = 72
          TabStop = False
          DataBinding.DataField = 'UFE_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 6
          Width = 33
        end
        object DbEdtCEP: TcxDBMaskEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'ORG_CEP'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.AlwaysShowBlanksAndLiterals = True
          Properties.ClearKey = 46
          Properties.EditMask = '99.999-999;0; '
          TabOrder = 0
          Width = 89
        end
      end
      object GrdDisponivel: TcxGrid
        Left = 288
        Top = 278
        Width = 257
        Height = 110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdDisponivelTbl: TcxGridDBTableView
          OnDblClick = GrdDisponivelTblDblClick
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
          DataController.DataSource = DtSrcFiliacaoDisponivel
          DataController.KeyFieldNames = 'PUB_ID'
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
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          Styles.Selection = DtmRecursoModulo.cxStyleSelection
          object GrdDisponivelTblPUB_DESMARCADO: TcxGridDBColumn
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                ImageIndex = 142
              end>
          end
          object GrdDisponivelTblPUB_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'PUB_DESCRICAO'
          end
        end
        object GrdDisponivelLvl: TcxGridLevel
          GridView = GrdDisponivelTbl
        end
      end
      object GrdFiliacao: TcxGrid
        Left = 8
        Top = 278
        Width = 233
        Height = 110
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdFiliacaoTbl: TcxGridDBTableView
          OnDblClick = GrdFiliacaoTblDblClick
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
          DataController.DataSource = DtSrcFiliacao
          DataController.KeyFieldNames = 'OTP_ID'
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
          OptionsSelection.HideSelection = True
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
          OptionsView.ColumnAutoWidth = True
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          Styles.Selection = DtmRecursoModulo.cxStyleSelection
          object GrdFiliacaoTblPUB_MARCADO: TcxGridDBColumn
            Caption = '#'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                ImageIndex = 140
              end>
            Width = 25
          end
          object GrdFiliacaoTblPUB_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'PUB_DESCRICAO'
          end
        end
        object GrdFiliacaoLvl: TcxGridLevel
          GridView = GrdFiliacaoTbl
        end
      end
      object BtnFiliacaoRemover: TcxButton
        Tag = 1
        Left = 248
        Top = 312
        Width = 33
        Height = 25
        Hint = 'Remover p'#250'blico afiliado/associado da organiza'#231#227'o'
        Caption = '>'
        Description = 
          'Remove o atributo selecionado de p'#250'blico afiliado/associado da o' +
          'rganiza'#231#227'o.'
        TabOrder = 4
        OnClick = BtnFiliacaoRemoverClick
      end
      object BtnFiliacaoAdicionar: TcxButton
        Tag = 1
        Left = 248
        Top = 278
        Width = 33
        Height = 25
        Hint = 'Adicionar p'#250'blico afiliado/associado '#224' organiza'#231#227'o'
        Caption = '<'
        Description = 
          'Adiciona um atributo de p'#250'blico afiliado/associado '#224' organiza'#231#227'o' +
          '.'
        TabOrder = 3
        OnClick = BtnFiliacaoAdicionarClick
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Inserir nova organiza'#231#227'o'
    Description = 'Cria um novo registro de organiza'#231#227'o.'
    ExplicitTop = 442
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Salvar as altera'#231#245'es na organiza'#231#227'o'
    Description = 'Salva as altera'#231#245'es realizadas no registro da organiza'#231#227'o.'
    ExplicitTop = 442
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Cancelar as altera'#231#245'es na organiza'#231#227'o'
    Description = 'Cancela as altera'#231#245'es realizadas no registro da organiza'#231#227'o.'
    ExplicitTop = 442
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 442
    Hint = 'Excluir organiza'#231#227'o'
    Description = 'Exclui a organiza'#231#227'o atualmente selecionada.'
    ExplicitTop = 442
  end
  inherited BtnFechar: TcxButton
    Left = 490
    Top = 442
    ExplicitLeft = 490
    ExplicitTop = 442
  end
  inherited BtnRelatorio: TcxButton
    Top = 442
    ExplicitTop = 442
  end
  inherited DtStPrincipal: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO'
      'SET '
      '    ORG_DATA = :ORG_DATA,'
      '    ORG_NOME = :ORG_NOME,'
      '    ORG_SIGLA = :ORG_SIGLA,'
      '    ORG_CNPJ = :ORG_CNPJ,'
      '    ORG_ENDERECO = :ORG_ENDERECO,'
      '    ORG_NUMERO = :ORG_NUMERO,'
      '    ORG_COMPLEMENTO = :ORG_COMPLEMENTO,'
      '    ORG_BAIRRO = :ORG_BAIRRO,'
      '    ORG_CEP = :ORG_CEP,'
      '    ORG_TELEFONE_1 = :ORG_TELEFONE_1,'
      '    ORG_TELEFONE_2 = :ORG_TELEFONE_2,'
      '    ORG_EMAIL = :ORG_EMAIL,'
      '    ORG_RESPONSAVEL = :ORG_RESPONSAVEL,'
      '    ORG_FILIADOS = :ORG_FILIADOS,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO,'
      '    CID_ID = :CID_ID,'
      '    OTP_ID = :OTP_ID'
      'WHERE'
      '    ORG_ID = :OLD_ORG_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_CAD_ORGANIZACAO'
      'WHERE'
      '        ORG_ID = :OLD_ORG_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO('
      '    ORG_ID,'
      '    ORG_DATA,'
      '    ORG_NOME,'
      '    ORG_SIGLA,'
      '    ORG_CNPJ,'
      '    ORG_ENDERECO,'
      '    ORG_NUMERO,'
      '    ORG_COMPLEMENTO,'
      '    ORG_BAIRRO,'
      '    ORG_CEP,'
      '    ORG_TELEFONE_1,'
      '    ORG_TELEFONE_2,'
      '    ORG_EMAIL,'
      '    ORG_RESPONSAVEL,'
      '    ORG_FILIADOS,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO,'
      '    CID_ID,'
      '    OTP_ID'
      ')'
      'VALUES('
      '    :ORG_ID,'
      '    :ORG_DATA,'
      '    :ORG_NOME,'
      '    :ORG_SIGLA,'
      '    :ORG_CNPJ,'
      '    :ORG_ENDERECO,'
      '    :ORG_NUMERO,'
      '    :ORG_COMPLEMENTO,'
      '    :ORG_BAIRRO,'
      '    :ORG_CEP,'
      '    :ORG_TELEFONE_1,'
      '    :ORG_TELEFONE_2,'
      '    :ORG_EMAIL,'
      '    :ORG_RESPONSAVEL,'
      '    :ORG_FILIADOS,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO,'
      '    :CID_ID,'
      '    :OTP_ID'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.org_id,'
      '  a.org_data,'
      '  a.org_nome,'
      '  a.org_sigla,'
      '  a.org_cnpj,'
      '  a.org_endereco,'
      '  a.org_numero,'
      '  a.org_complemento,'
      '  a.org_bairro,'
      '  a.org_cep,'
      '  a.org_telefone_1,'
      '  a.org_telefone_2,'
      '  a.org_email,'
      '  a.org_responsavel,'
      '  a.org_filiados,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.cid_id,'
      '  a.otp_id,'
      '  b.otp_descricao,'
      '  c.cid_nome,'
      '  c.ufe_id'
      'from'
      
        '  tab_cad_organizacao a left join tab_cad_organizacao_tipo b on ' +
        '(a.otp_id = b.otp_id) left join'
      '  tab_dne_cidade c on (a.cid_id = c.cid_id)'
      'where( '
      '  (a.org_id = :org_id) and'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))'
      '     ) and (     A.ORG_ID = :OLD_ORG_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.org_id,'
      '  a.org_data,'
      '  a.org_nome,'
      '  a.org_sigla,'
      '  a.org_cnpj,'
      '  a.org_endereco,'
      '  a.org_numero,'
      '  a.org_complemento,'
      '  a.org_bairro,'
      '  a.org_cep,'
      '  a.org_telefone_1,'
      '  a.org_telefone_2,'
      '  a.org_email,'
      '  a.org_responsavel,'
      '  a.org_filiados,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.cid_id,'
      '  a.otp_id,'
      '  b.otp_descricao,'
      '  c.cid_nome,'
      '  c.ufe_id'
      'from'
      
        '  tab_cad_organizacao a left join tab_cad_organizacao_tipo b on ' +
        '(a.otp_id = b.otp_id) left join'
      '  tab_dne_cidade c on (a.cid_id = c.cid_id)'
      'where'
      '  (a.org_id = :org_id) and'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))'
      'order by'
      '  a.org_nome')
    AutoUpdateOptions.UpdateTableName = 'TAB_CAD_ORGANIZACAO'
    AutoUpdateOptions.KeyFields = 'ORG_ID'
    AutoUpdateOptions.AutoReWriteSqls = True
    AutoUpdateOptions.CanChangeSQLs = True
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 120
    Top = 112
    object DtStPrincipalORG_ID: TFIBIntegerField
      FieldName = 'ORG_ID'
      Required = True
    end
    object DtStPrincipalORG_DATA: TFIBDateField
      FieldName = 'ORG_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DtStPrincipalORG_NOME: TFIBStringField
      DisplayLabel = 'Nome da organiza'#231#227'o social'
      FieldName = 'ORG_NOME'
      Required = True
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_SIGLA: TFIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'ORG_SIGLA'
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_CNPJ: TFIBStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ORG_CNPJ'
      EditMask = '00.000.000/0000-00;0; '
      Size = 14
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_ENDERECO: TFIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ORG_ENDERECO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_NUMERO: TFIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ORG_NUMERO'
      Size = 10
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_COMPLEMENTO: TFIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'ORG_COMPLEMENTO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_BAIRRO: TFIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'ORG_BAIRRO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_CEP: TFIBStringField
      DisplayLabel = 'CEP'
      FieldName = 'ORG_CEP'
      EditMask = '00.000-000;0; '
      Size = 8
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_TELEFONE_1: TFIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'ORG_TELEFONE_1'
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_TELEFONE_2: TFIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'ORG_TELEFONE_2'
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_EMAIL: TFIBStringField
      DisplayLabel = 'E-mail'
      FieldName = 'ORG_EMAIL'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_RESPONSAVEL: TFIBStringField
      DisplayLabel = 'Nome do respons'#225'vel atual'
      FieldName = 'ORG_RESPONSAVEL'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalCID_ID: TFIBIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_ID'
      Required = True
    end
    object DtStPrincipalOTP_ID: TFIBIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de organiza'#231#227'o'
      FieldName = 'OTP_ID'
      Required = True
    end
    object DtStPrincipalOTP_DESCRICAO: TFIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'OTP_DESCRICAO'
      Size = 100
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalCID_NOME: TFIBStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      Size = 80
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalUFE_ID: TFIBStringField
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      Size = 2
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalORG_FILIADOS: TFIBIntegerField
      FieldName = 'ORG_FILIADOS'
    end
    object DtStPrincipalREG_EXCLUIDO: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'REG_EXCLUIDO'
    end
    object DtStPrincipalREG_REPLICADO: TFIBBooleanField
      DefaultExpression = 'False'
      FieldName = 'REG_REPLICADO'
    end
    object DtStPrincipalREG_USUARIO: TFIBStringField
      FieldName = 'REG_USUARIO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPrincipalREG_MODIFICADO: TFIBDateTimeField
      FieldName = 'REG_MODIFICADO'
      DisplayFormat = 'dd/mm/yyyy hh:mm'
    end
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 184
    Top = 144
  end
  inherited QryPrincipal: TFDQuery
    AfterPost = QryPrincipalAfterPost
    AfterScroll = QryPrincipalAfterScroll
    SQL.Strings = (
      'select'
      '  a.org_id,'
      '  a.org_data,'
      '  a.org_nome,'
      '  a.org_sigla,'
      '  a.org_cnpj,'
      '  a.org_endereco,'
      '  a.org_numero,'
      '  a.org_complemento,'
      '  a.org_bairro,'
      '  a.org_cep,'
      '  a.org_telefone_1,'
      '  a.org_telefone_2,'
      '  a.org_email,'
      '  a.org_responsavel,'
      '  a.org_filiados,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.cid_id,'
      '  a.otp_id,'
      '  b.otp_descricao,'
      '  c.cid_nome,'
      '  c.ufe_id'
      'from'
      
        '  tab_cad_organizacao a left join tab_cad_organizacao_tipo b on ' +
        '(a.otp_id = b.otp_id) left join'
      '  tab_dne_cidade c on (a.cid_id = c.cid_id)'
      'where'
      '  (a.org_id = :org_id) and'
      '  (a.reg_excluido = 0) and'
      
        '  (a.cid_id in (select cid_id from vwt_sis_municipio_unidade_loc' +
        'al))'
      'order by'
      '  a.org_nome')
    Left = 120
    Top = 144
    ParamData = <
      item
        Name = 'ORG_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryPrincipalORG_ID: TIntegerField
      FieldName = 'ORG_ID'
    end
    object QryPrincipalORG_DATA: TDateField
      FieldName = 'ORG_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalORG_NOME: TStringField
      DisplayLabel = 'Nome da organiza'#231#227'o social'
      FieldName = 'ORG_NOME'
      Required = True
      Size = 100
    end
    object QryPrincipalORG_SIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'ORG_SIGLA'
    end
    object QryPrincipalORG_CNPJ: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ORG_CNPJ'
      EditMask = '00.000.000/0000-00;0; '
      Size = 14
    end
    object QryPrincipalORG_ENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ORG_ENDERECO'
      Size = 100
    end
    object QryPrincipalORG_NUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ORG_NUMERO'
      Size = 10
    end
    object QryPrincipalORG_COMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'ORG_COMPLEMENTO'
      Size = 50
    end
    object QryPrincipalORG_BAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'ORG_BAIRRO'
      Size = 50
    end
    object QryPrincipalORG_CEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'ORG_CEP'
      EditMask = '00.000-000;0; '
      FixedChar = True
      Size = 8
    end
    object QryPrincipalORG_TELEFONE_1: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'ORG_TELEFONE_1'
    end
    object QryPrincipalORG_TELEFONE_2: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'ORG_TELEFONE_2'
    end
    object QryPrincipalORG_EMAIL: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'ORG_EMAIL'
      Size = 50
    end
    object QryPrincipalORG_RESPONSAVEL: TStringField
      DisplayLabel = 'Nome do respons'#225'vel'
      FieldName = 'ORG_RESPONSAVEL'
      Size = 100
    end
    object QryPrincipalCID_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_ID'
      Required = True
    end
    object QryPrincipalOTP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de organiza'#231#227'o'
      FieldName = 'OTP_ID'
      Required = True
    end
    object QryPrincipalOTP_DESCRICAO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'OTP_DESCRICAO'
      ReadOnly = True
      Size = 100
    end
    object QryPrincipalCID_NOME: TStringField
      DisplayLabel = 'Munic'#237'pio'
      FieldName = 'CID_NOME'
      ReadOnly = True
      Size = 80
    end
    object QryPrincipalUFE_ID: TStringField
      DisplayLabel = 'UF'
      FieldName = 'UFE_ID'
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QryPrincipalORG_FILIADOS: TIntegerField
      FieldName = 'ORG_FILIADOS'
    end
    object QryPrincipalREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
    end
    object QryPrincipalREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
    end
    object QryPrincipalREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Size = 50
    end
    object QryPrincipalREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
    end
  end
  inherited UpdtPrincipal: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO'
      '(ORG_ID, ORG_DATA, ORG_NOME, ORG_SIGLA, ORG_CNPJ, '
      '  ORG_ENDERECO, ORG_NUMERO, ORG_COMPLEMENTO, '
      '  ORG_BAIRRO, ORG_CEP, ORG_TELEFONE_1, ORG_TELEFONE_2, '
      '  ORG_EMAIL, ORG_RESPONSAVEL, ORG_FILIADOS, '
      '  CID_ID, OTP_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_ORG_ID, :NEW_ORG_DATA, :NEW_ORG_NOME, :NEW_ORG_SIGL' +
        'A, :NEW_ORG_CNPJ, '
      '  :NEW_ORG_ENDERECO, :NEW_ORG_NUMERO, :NEW_ORG_COMPLEMENTO, '
      
        '  :NEW_ORG_BAIRRO, :NEW_ORG_CEP, :NEW_ORG_TELEFONE_1, :NEW_ORG_T' +
        'ELEFONE_2, '
      '  :NEW_ORG_EMAIL, :NEW_ORG_RESPONSAVEL, :NEW_ORG_FILIADOS, '
      
        '  :NEW_CID_ID, :NEW_OTP_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLICAD' +
        'O, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO'
      
        'SET ORG_ID = :NEW_ORG_ID, ORG_DATA = :NEW_ORG_DATA, ORG_NOME = :' +
        'NEW_ORG_NOME, '
      
        '  ORG_SIGLA = :NEW_ORG_SIGLA, ORG_CNPJ = :NEW_ORG_CNPJ, ORG_ENDE' +
        'RECO = :NEW_ORG_ENDERECO, '
      
        '  ORG_NUMERO = :NEW_ORG_NUMERO, ORG_COMPLEMENTO = :NEW_ORG_COMPL' +
        'EMENTO, '
      
        '  ORG_BAIRRO = :NEW_ORG_BAIRRO, ORG_CEP = :NEW_ORG_CEP, ORG_TELE' +
        'FONE_1 = :NEW_ORG_TELEFONE_1, '
      
        '  ORG_TELEFONE_2 = :NEW_ORG_TELEFONE_2, ORG_EMAIL = :NEW_ORG_EMA' +
        'IL, '
      
        '  ORG_RESPONSAVEL = :NEW_ORG_RESPONSAVEL, ORG_FILIADOS = :NEW_OR' +
        'G_FILIADOS, '
      
        '  CID_ID = :NEW_CID_ID, OTP_ID = :NEW_OTP_ID, REG_EXCLUIDO = :NE' +
        'W_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE ORG_ID = :OLD_ORG_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_ORGANIZACAO'
      'WHERE ORG_ID = :OLD_ORG_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ORG_ID, ORG_DATA, ORG_NOME, ORG_SIGLA, ORG_CNPJ, ORG_ENDE' +
        'RECO, '
      
        '  ORG_NUMERO, ORG_COMPLEMENTO, ORG_BAIRRO, ORG_CEP, ORG_TELEFONE' +
        '_1, '
      '  ORG_TELEFONE_2, ORG_EMAIL, ORG_RESPONSAVEL, ORG_FILIADOS, '
      '  CID_ID, OTP_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_ORGANIZACAO'
      'WHERE ORG_ID = :ORG_ID')
    Left = 152
    Top = 144
  end
  object DtSrcFiliacaoDisponivel: TDataSource
    DataSet = QryFiliacaoDisponivel
    Left = 384
    Top = 320
  end
  object DtSrcFiliacao: TDataSource
    DataSet = QryFiliacao
    Left = 128
    Top = 320
  end
  object QryFiliacao: TFDQuery
    Active = True
    OnNewRecord = QryFiliacaoNewRecord
    MasterSource = DtSrcPrincipal
    MasterFields = 'ORG_ID'
    DetailFields = 'ORG_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtFiliacao
    SQL.Strings = (
      'select'
      '  a.ofi_id,'
      '  a.org_id,'
      '  a.pub_id,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.pub_descricao'
      'from'
      
        '  tab_cad_organizacao_filiacao a join tab_cad_organizacao_public' +
        'o b on (a.pub_id = b.pub_id)'
      'where'
      '  (a.org_id = :org_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.pub_descricao')
    Left = 64
    Top = 320
    ParamData = <
      item
        Name = 'ORG_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryFiliacaoOFI_ID: TLargeintField
      FieldName = 'OFI_ID'
      Origin = 'OFI_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFiliacaoORG_ID: TIntegerField
      FieldName = 'ORG_ID'
      Origin = 'ORG_ID'
      Required = True
    end
    object QryFiliacaoPUB_ID: TIntegerField
      FieldName = 'PUB_ID'
      Origin = 'PUB_ID'
      Required = True
    end
    object QryFiliacaoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryFiliacaoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryFiliacaoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryFiliacaoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryFiliacaoPUB_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'P'#250'blico afiliado/associado'
      FieldName = 'PUB_DESCRICAO'
      Origin = 'PUB_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
  end
  object UpdtFiliacao: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_ORGANIZACAO_FILIACAO'
      '(OFI_ID, ORG_ID, PUB_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_OFI_ID, :NEW_ORG_ID, :NEW_PUB_ID, :NEW_REG_EXCLUIDO' +
        ', :NEW_REG_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_ORGANIZACAO_FILIACAO'
      
        'SET OFI_ID = :NEW_OFI_ID, ORG_ID = :NEW_ORG_ID, PUB_ID = :NEW_PU' +
        'B_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE OFI_ID = :OLD_OFI_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_ORGANIZACAO_FILIACAO'
      'WHERE OFI_ID = :OLD_OFI_ID')
    FetchRowSQL.Strings = (
      
        'SELECT OFI_ID, ORG_ID, PUB_ID, REG_EXCLUIDO, REG_REPLICADO, REG_' +
        'USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_ORGANIZACAO_FILIACAO'
      'WHERE OFI_ID = :OFI_ID')
    Left = 96
    Top = 320
  end
  object QryFiliacaoDisponivel: TFDQuery
    OnNewRecord = QryFiliacaoNewRecord
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.pub_id,'
      '  a.pub_descricao'
      'from'
      '  tab_cad_organizacao_publico a'
      'where'
      
        '  not exists (select f.pub_id from tab_cad_organizacao_filiacao ' +
        'f where f.org_id = :org_id and a.pub_id = f.pub_id and f.reg_exc' +
        'luido = 0) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.pub_descricao')
    Left = 352
    Top = 320
    ParamData = <
      item
        Name = 'ORG_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryFiliacaoDisponivelPUB_ID: TIntegerField
      FieldName = 'PUB_ID'
      Origin = 'PUB_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFiliacaoDisponivelPUB_DESCRICAO: TStringField
      DisplayLabel = 'P'#250'blico afiliado/associado dispon'#237'vel:'
      FieldName = 'PUB_DESCRICAO'
      Origin = 'PUB_DESCRICAO'
      Required = True
      Size = 100
    end
  end
end
