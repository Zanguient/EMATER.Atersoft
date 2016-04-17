inherited FrmCredito: TFrmCredito
  Tag = 1
  Left = 313
  Top = 131
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Projeto de Cr'#233'dito Rural'
  ClientHeight = 499
  ClientWidth = 839
  ExplicitLeft = 313
  ExplicitTop = 131
  ExplicitWidth = 855
  ExplicitHeight = 538
  DesignSize = (
    839
    499)
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 673
    Top = 467
    TabOrder = 7
    ExplicitLeft = 673
    ExplicitTop = 467
  end
  inherited PgCntrlMain: TcxPageControl
    Top = 40
    Width = 821
    Height = 421
    TabOrder = 1
    ExplicitTop = 40
    ExplicitWidth = 821
    ExplicitHeight = 421
    ClientRectBottom = 419
    ClientRectRight = 819
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Projeto'
      ExplicitWidth = 817
      ExplicitHeight = 391
      DesignSize = (
        817
        391)
      object GrpBxMovimentacao: TcxGroupBox
        Left = 529
        Top = 13
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Movimenta'#231#227'o financeira'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        DesignSize = (
          276
          196)
        Height = 203
        Width = 276
        object Label11: TLabel
          Tag = 2
          Left = 8
          Top = 24
          Width = 98
          Height = 13
          Caption = 'Situa'#231#227'o do projeto:'
          FocusControl = DbLkpCmbBxSituacao
          Transparent = True
        end
        object Label12: TLabel
          Tag = 2
          Left = 8
          Top = 64
          Width = 98
          Height = 13
          Caption = 'Data de elabora'#231#227'o:'
          FocusControl = DbDtEdtElaboracao
          Transparent = True
        end
        object Label13: TLabel
          Tag = 2
          Left = 136
          Top = 64
          Width = 103
          Height = 13
          Caption = 'Valor elaborado (R$):'
          FocusControl = DbEdtValorElaborado
          Transparent = True
        end
        object Label14: TLabel
          Left = 8
          Top = 104
          Width = 103
          Height = 13
          Caption = 'Data de contrata'#231#227'o:'
          FocusControl = DbDtEdtContratacao
          Transparent = True
        end
        object Label15: TLabel
          Tag = 2
          Left = 136
          Top = 104
          Width = 108
          Height = 13
          Caption = 'Valor contratado (R$):'
          FocusControl = DbEdtValorContratado
          Transparent = True
        end
        object Label16: TLabel
          Left = 8
          Top = 144
          Width = 84
          Height = 13
          Caption = 'Data de vig'#234'ncia:'
          FocusControl = DbDtEdtDataVigencia
          Transparent = True
        end
        object DbDtEdtElaboracao: TcxDBDateEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'CRD_DATA_ELABORACAO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 1
          Width = 121
        end
        object DbEdtValorElaborado: TcxDBCurrencyEdit
          Left = 136
          Top = 80
          DataBinding.DataField = 'CRD_VALOR_ELABORADO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 2
          Width = 129
        end
        object DbDtEdtContratacao: TcxDBDateEdit
          Left = 8
          Top = 120
          DataBinding.DataField = 'CRD_DATA_CONTRATACAO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 3
          Width = 121
        end
        object DbEdtValorContratado: TcxDBCurrencyEdit
          Left = 136
          Top = 120
          DataBinding.DataField = 'CRD_VALOR_CONTRATADO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 4
          Width = 129
        end
        object DbDtEdtDataVigencia: TcxDBDateEdit
          Left = 8
          Top = 160
          DataBinding.DataField = 'CRD_DATA_ENCERRAMENTO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 5
          Width = 121
        end
        object DbLkpCmbBxSituacao: TcxDBLookupComboBox
          Left = 8
          Top = 40
          DataBinding.DataField = 'SIT_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.KeyFieldNames = 'SIT_ID'
          Properties.ListColumns = <
            item
              FieldName = 'SIT_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 0
          Width = 233
        end
        object BtnSituacaoTabela: TcxButton
          Tag = 1
          Left = 244
          Top = 41
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de situa'#231#245'es do projeto'
          Anchors = [akTop, akRight]
          Description = 'Acessa a tabela de situa'#231#245'es do projeto.'
          OptionsImage.ImageIndex = 102
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BtnSituacaoTabelaClick
        end
      end
      object GrpBxRegistro: TcxGroupBox
        Left = 529
        Top = 219
        Anchors = [akRight, akBottom]
        Caption = 'Informa'#231#245'es de registro'
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        Height = 152
        Width = 276
        object Label37: TLabel
          Left = 136
          Top = 57
          Width = 121
          Height = 13
          Caption = 'Data da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoData
          Transparent = True
        end
        object Label56: TLabel
          Left = 8
          Top = 97
          Width = 134
          Height = 13
          Caption = 'Usu'#225'rio da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoUsuario
          Transparent = True
        end
        object Label30: TLabel
          Left = 8
          Top = 17
          Width = 109
          Height = 13
          Caption = 'Escrit'#243'rio respons'#225'vel:'
          Transparent = True
        end
        object Label17: TLabel
          Left = 8
          Top = 57
          Width = 79
          Height = 13
          Caption = 'Data de cria'#231#227'o:'
          FocusControl = DbEdtCriacaoData
          Transparent = True
        end
        object DbEdtModificadoUsuario: TcxDBTextEdit
          Left = 8
          Top = 113
          DataBinding.DataField = 'CRD_MODIFICADO_USUARIO_NOME'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 3
          Width = 257
        end
        object DbEdtModificadoData: TcxDBTextEdit
          Left = 136
          Top = 73
          DataBinding.DataField = 'REG_MODIFICADO'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 2
          Width = 129
        end
        object DbLkpCmbBxUnidade: TcxDBLookupComboBox
          Left = 8
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
          Properties.PostPopupValueOnTab = True
          Properties.ReadOnly = False
          TabOrder = 0
          Width = 257
        end
        object DbEdtCriacaoData: TcxDBTextEdit
          Left = 8
          Top = 73
          DataBinding.DataField = 'CRD_DATA_HORA_REGISTRO'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 1
          Width = 121
        end
      end
      object GrpBxProjeto: TcxGroupBox
        Left = 8
        Top = 13
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Projeto de cr'#233'dito'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          510
          357)
        Height = 364
        Width = 510
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 65
          Height = 13
          Caption = 'Identificador:'
          Transparent = True
        end
        object Label2: TLabel
          Tag = 2
          Left = 136
          Top = 24
          Width = 83
          Height = 13
          Caption = 'T'#237'tulo do projeto:'
          FocusControl = DbEdtTitulo
          Transparent = True
        end
        object Label3: TLabel
          Tag = 2
          Left = 8
          Top = 64
          Width = 103
          Height = 13
          Caption = 'Descri'#231#227'o do projeto:'
          FocusControl = DbMemoDetalhes
          Transparent = True
        end
        object Label4: TLabel
          Tag = 2
          Left = 8
          Top = 222
          Width = 89
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Agente financeiro:'
          FocusControl = DbLkpCmbBxFinanceira
          Transparent = True
          ExplicitTop = 229
        end
        object Label5: TLabel
          Tag = 2
          Left = 184
          Top = 222
          Width = 80
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Linha de cr'#233'dito:'
          FocusControl = DbLkpCmbBxLinha
          Transparent = True
          ExplicitTop = 229
        end
        object Label6: TLabel
          Tag = 2
          Left = 360
          Top = 222
          Width = 75
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Tipo de cr'#233'dito:'
          FocusControl = DbLkpCmbBxTipo
          Transparent = True
          ExplicitTop = 229
        end
        object Label7: TLabel
          Tag = 2
          Left = 8
          Top = 262
          Width = 95
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'P'#250'blico benefici'#225'rio:'
          FocusControl = DbLkpCmbBxPublico
          Transparent = True
          ExplicitTop = 269
        end
        object Label8: TLabel
          Left = 264
          Top = 262
          Width = 63
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Comunidade:'
          FocusControl = DbLkpCmbBxComunidade
          Transparent = True
          ExplicitTop = 269
        end
        object Label9: TLabel
          Tag = 2
          Left = 8
          Top = 302
          Width = 89
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'T'#233'cnico de campo:'
          FocusControl = DbEdtTecnicoCampo
          Transparent = True
          ExplicitTop = 309
        end
        object Label10: TLabel
          Tag = 2
          Left = 264
          Top = 302
          Width = 95
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'T'#233'cnico elaborador:'
          FocusControl = DbEdtTecnicoElaborador
          Transparent = True
          ExplicitTop = 309
        end
        object DbEdtTitulo: TcxDBTextEdit
          Left = 136
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'CRD_TITULO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 1
          Width = 366
        end
        object DbEdtIdentificador: TcxDBTextEdit
          Left = 8
          Top = 40
          DataBinding.DataField = 'CRD_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 0
          Width = 121
        end
        object DbMemoDetalhes: TcxDBMemo
          Left = 8
          Top = 80
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'CRD_DESCRICAO'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ScrollBars = ssVertical
          TabOrder = 2
          Height = 134
          Width = 494
        end
        object DbLkpCmbBxFinanceira: TcxDBLookupComboBox
          Left = 8
          Top = 238
          Anchors = [akLeft, akBottom]
          DataBinding.DataField = 'FIN_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 12
          Properties.KeyFieldNames = 'FIN_ID'
          Properties.ListColumns = <
            item
              FieldName = 'FIN_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 3
          Width = 145
        end
        object DbLkpCmbBxLinha: TcxDBLookupComboBox
          Left = 184
          Top = 238
          Anchors = [akLeft, akBottom]
          DataBinding.DataField = 'LIN_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 12
          Properties.KeyFieldNames = 'LIN_ID'
          Properties.ListColumns = <
            item
              FieldName = 'LIN_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 5
          Width = 145
        end
        object DbLkpCmbBxTipo: TcxDBLookupComboBox
          Left = 360
          Top = 238
          Anchors = [akLeft, akRight, akBottom]
          DataBinding.DataField = 'TIP_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 12
          Properties.KeyFieldNames = 'TIP_ID'
          Properties.ListColumns = <
            item
              FieldName = 'TIP_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 7
          Width = 119
        end
        object DbLkpCmbBxPublico: TcxDBLookupComboBox
          Left = 8
          Top = 278
          Anchors = [akLeft, akBottom]
          DataBinding.DataField = 'PUB_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 12
          Properties.KeyFieldNames = 'PUB_ID'
          Properties.ListColumns = <
            item
              FieldName = 'PUB_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 9
          Width = 225
        end
        object DbLkpCmbBxComunidade: TcxDBLookupComboBox
          Left = 264
          Top = 278
          Anchors = [akLeft, akRight, akBottom]
          DataBinding.DataField = 'COM_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 12
          Properties.KeyFieldNames = 'COM_ID'
          Properties.ListColumns = <
            item
              FieldName = 'CID_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtmCadastroModulo.DtSrcComunidade
          TabOrder = 11
          Width = 215
        end
        object BtnFinanceiraTabela: TcxButton
          Tag = 1
          Left = 155
          Top = 239
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de agentes financeiros'
          Anchors = [akLeft, akBottom]
          Description = 'Acessa a tabela de agentes financeiros.'
          OptionsImage.ImageIndex = 102
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = BtnFinanceiraTabelaClick
        end
        object BtnLinhaTabela: TcxButton
          Tag = 1
          Left = 331
          Top = 239
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de linhas de cr'#233'dito'
          Anchors = [akLeft, akBottom]
          Description = 'Acessa a tabela de linhas de cr'#233'dito.'
          OptionsImage.ImageIndex = 102
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = BtnLinhaTabelaClick
        end
        object BtnTipoTabela: TcxButton
          Tag = 1
          Left = 481
          Top = 239
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de tipos de cr'#233'dito'
          Anchors = [akRight, akBottom]
          Description = 'Acessa a tabela de tipos de cr'#233'dito.'
          OptionsImage.ImageIndex = 102
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = BtnTipoTabelaClick
        end
        object BtnPublicoTabela: TcxButton
          Tag = 1
          Left = 236
          Top = 279
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de p'#250'blico benefici'#225'rio'
          Anchors = [akLeft, akBottom]
          Description = 'Acessa a tabela de p'#250'blico benefici'#225'rio.'
          OptionsImage.ImageIndex = 102
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = BtnPublicoTabelaClick
        end
        object BtnComunidadeTabela: TcxButton
          Tag = 1
          Left = 481
          Top = 279
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de comunidades'
          Anchors = [akRight, akBottom]
          Description = 'Acessa a tabela de comunidades.'
          OptionsImage.ImageIndex = 100
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnClick = BtnComunidadeTabelaClick
        end
        object DbEdtTecnicoCampo: TcxDBButtonEdit
          Left = 8
          Top = 318
          Anchors = [akLeft, akBottom]
          DataBinding.DataField = 'CRD_TECNICO_CAMPO'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = DbEdtTecnicoCampoPropertiesButtonClick
          TabOrder = 13
          Width = 249
        end
        object DbEdtTecnicoElaborador: TcxDBButtonEdit
          Left = 264
          Top = 318
          Anchors = [akLeft, akRight, akBottom]
          DataBinding.DataField = 'CRD_TECNICO_ELABORADOR'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = DbEdtTecnicoElaboradorPropertiesButtonClick
          TabOrder = 14
          Width = 238
        end
      end
    end
    object TbShtVisita: TcxTabSheet
      Caption = 'Visitas'
      ImageIndex = 1
      OnShow = TbShtVisitaShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        817
        391)
      object LblVisitas: TLabel
        Left = 352
        Top = 8
        Width = 85
        Height = 13
        Caption = 'Visitas realizadas:'
      end
      object GrpBxVisita: TcxGroupBox
        Left = 8
        Top = 13
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Informa'#231#245'es sobre a visita'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          337
          319)
        Height = 326
        Width = 337
        object Label18: TLabel
          Tag = 2
          Left = 8
          Top = 24
          Width = 70
          Height = 13
          Caption = 'Data da visita:'
          FocusControl = DbDtVisita
          Transparent = True
        end
        object Label19: TLabel
          Left = 8
          Top = 64
          Width = 109
          Height = 13
          Caption = 'Resumo sobre a visita:'
          FocusControl = DbMemoVisita
          Transparent = True
        end
        object Label20: TLabel
          Tag = 2
          Left = 112
          Top = 24
          Width = 83
          Height = 13
          Caption = 'T'#233'cnico da visita:'
          FocusControl = DbEdtTecnico
          Transparent = True
        end
        object Label21: TLabel
          Tag = 2
          Left = 8
          Top = 265
          Width = 116
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'Data e hora do registro:'
          FocusControl = DbEdtDataRegistro
          Transparent = True
          ExplicitTop = 278
        end
        object Label22: TLabel
          Tag = 2
          Left = 144
          Top = 265
          Width = 107
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = 'T'#233'cnico que registrou:'
          FocusControl = DbEdtTecnicoRegistro
          Transparent = True
          ExplicitTop = 278
        end
        object DbDtVisita: TcxDBDateEdit
          Left = 8
          Top = 40
          DataBinding.DataField = 'REG_DATA_VISITA'
          DataBinding.DataSource = DtSrcVisita
          TabOrder = 0
          Width = 97
        end
        object DbMemoVisita: TcxDBMemo
          Left = 8
          Top = 80
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataBinding.DataField = 'REG_OBSERVACAO'
          DataBinding.DataSource = DtSrcVisita
          Properties.ScrollBars = ssVertical
          TabOrder = 2
          Height = 180
          Width = 321
        end
        object DbEdtTecnico: TcxDBButtonEdit
          Left = 112
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'REG_TECNICO_VISITA'
          DataBinding.DataSource = DtSrcVisita
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = DbEdtTecnicoPropertiesButtonClick
          TabOrder = 1
          Width = 217
        end
        object DbEdtDataRegistro: TcxDBTextEdit
          Left = 8
          Top = 281
          Anchors = [akLeft, akBottom]
          DataBinding.DataField = 'REG_MODIFICADO'
          DataBinding.DataSource = DtSrcVisita
          Enabled = False
          TabOrder = 3
          Width = 129
        end
        object DbEdtTecnicoRegistro: TcxDBTextEdit
          Left = 144
          Top = 281
          Anchors = [akLeft, akRight, akBottom]
          DataBinding.DataField = 'REG_TECNICO_REGISTRO'
          DataBinding.DataSource = DtSrcVisita
          Enabled = False
          TabOrder = 4
          Width = 185
        end
      end
      object BtnVisitaNovo: TcxButton
        Tag = 1
        Left = 8
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Inserir nova visita'
        Anchors = [akLeft, akBottom]
        Caption = 'Novo'
        Description = 'Cria um novo registro de visita.'
        TabOrder = 1
        OnClick = BtnVisitaNovoClick
      end
      object BtnVisitaSalvar: TcxButton
        Tag = 1
        Left = 95
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Salvar altera'#231#245'es no registro de visita'
        Anchors = [akLeft, akBottom]
        Caption = 'Salvar'
        Description = 'Salva as altera'#231#245'es realizadas no registro da visita.'
        TabOrder = 2
        OnClick = BtnVisitaSalvarClick
      end
      object BtnVisitaCancelar: TcxButton
        Tag = 1
        Left = 182
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Cancelar altera'#231#245'es no registro de visita'
        Anchors = [akLeft, akBottom]
        Caption = 'Cancelar'
        Description = 'Cancela as altera'#231#245'es realizadas no registro de visita.'
        TabOrder = 3
        OnClick = BtnVisitaCancelarClick
      end
      object BtnVisitaExcluir: TcxButton
        Tag = 1
        Left = 270
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Excluir registro de visita'
        Anchors = [akLeft, akBottom]
        Caption = 'Excluir'
        Description = 'Exclui o registro de visita atualmente selecionado.'
        TabOrder = 4
        OnClick = BtnVisitaExcluirClick
      end
      object GrdVis: TcxGrid
        Left = 352
        Top = 24
        Width = 453
        Height = 347
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        object GrdVisTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcVisita
          DataController.KeyFieldNames = 'REG_ID'
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
          object GrdVisTblREG_DATA_VISITA: TcxGridDBColumn
            DataBinding.FieldName = 'REG_DATA_VISITA'
            Width = 87
          end
          object GrdVisTblREG_TECNICO_VISITA: TcxGridDBColumn
            DataBinding.FieldName = 'REG_TECNICO_VISITA'
            Width = 167
          end
          object GrdVisTblREG_OBSERVACAO: TcxGridDBColumn
            DataBinding.FieldName = 'REG_OBSERVACAO'
            Width = 221
          end
        end
        object GrdVisLvl: TcxGridLevel
          GridView = GrdVisTbl
        end
      end
    end
    object TbShtProponentes: TcxTabSheet
      Caption = 'Proponentes'
      ImageIndex = 2
      OnShow = TbShtProponentesShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        817
        391)
      object Label28: TLabel
        Left = 352
        Top = 8
        Width = 65
        Height = 13
        Caption = 'Proponentes:'
      end
      object GrpBxProponente: TcxGroupBox
        Left = 8
        Top = 13
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Informa'#231#245'es sobre o proponente do projeto'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Height = 326
        Width = 337
        object Label26: TLabel
          Tag = 2
          Left = 192
          Top = 144
          Width = 116
          Height = 13
          Caption = 'Data e hora do registro:'
          FocusControl = DbEdtDataHoraProponente
          Transparent = True
        end
        object Label23: TLabel
          Tag = 2
          Left = 8
          Top = 24
          Width = 76
          Height = 13
          Caption = 'Tipo de pessoa:'
          Transparent = True
        end
        object Label24: TLabel
          Tag = 2
          Left = 112
          Top = 24
          Width = 52
          Height = 13
          Caption = 'CPF/CNPJ:'
          Transparent = True
        end
        object Label25: TLabel
          Left = 8
          Top = 64
          Width = 105
          Height = 13
          Caption = 'Nome do proponente:'
          FocusControl = DbEdtNome
          Transparent = True
        end
        object Label27: TLabel
          Tag = 2
          Left = 8
          Top = 104
          Width = 24
          Height = 13
          Caption = 'DAP:'
          Transparent = True
        end
        object Label29: TLabel
          Left = 8
          Top = 144
          Width = 109
          Height = 13
          Caption = 'Classifica'#231#227'o do porte:'
          FocusControl = DbLkpCmbBxClassificacao
          Transparent = True
        end
        object DbEdtDataHoraProponente: TcxDBTextEdit
          Left = 192
          Top = 160
          DataBinding.DataField = 'REG_MODIFICADO'
          DataBinding.DataSource = DtSrcProponente
          Enabled = False
          TabOrder = 8
          Width = 137
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'PRO_NOME'
          DataBinding.DataSource = DtSrcProponente
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 321
        end
        object DbEdtDAPNumero: TcxDBMaskEdit
          Left = 8
          Top = 120
          DataBinding.DataField = 'PRO_DAP'
          DataBinding.DataSource = DtSrcProponente
          Properties.ClearKey = 46
          Properties.EditMask = '>lll9999999999999999999999;1; '
          TabOrder = 5
          Width = 321
        end
        object DbImgCmbBxTipoPessoa: TcxDBImageComboBox
          Left = 8
          Top = 40
          DataBinding.DataField = 'PRO_TIPO'
          DataBinding.DataSource = DtSrcProponente
          Properties.Items = <
            item
              Description = 'F'#237'sica'
              ImageIndex = 0
              Value = 'F'
            end
            item
              Description = 'Jur'#237'dica'
              Value = 'J'
            end>
          Properties.OnChange = DbImgCmbBxTipoPessoaPropertiesChange
          TabOrder = 0
          Width = 97
        end
        object DbLkpCmbBxClassificacao: TcxDBLookupComboBox
          Left = 8
          Top = 160
          DataBinding.DataField = 'CLS_ID'
          DataBinding.DataSource = DtSrcProponente
          Properties.KeyFieldNames = 'CLS_ID'
          Properties.ListColumns = <
            item
              FieldName = 'CLS_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 6
          Width = 153
        end
        object DbEdtCPFCNPJ: TcxDBMaskEdit
          Left = 112
          Top = 40
          DataBinding.DataField = 'PRO_DOCUMENTO'
          DataBinding.DataSource = DtSrcProponente
          Properties.AlwaysShowBlanksAndLiterals = True
          Properties.ClearKey = 46
          Properties.EditMask = '999.999.999-99;0; '
          TabOrder = 1
          OnKeyDown = DbEdtCPFCNPJKeyDown
          OnKeyPress = DbEdtCPFCNPJKeyPress
          Width = 169
        end
        object BtnClassificacaoTabela: TcxButton
          Tag = 1
          Left = 163
          Top = 161
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de classifica'#231#245'es do porte do proponente'
          Description = 'Acessa a tabela de classifica'#231#245'es do porte do proponente.'
          OptionsImage.ImageIndex = 102
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = BtnClassificacaoTabelaClick
        end
        object BtnProponenteTabela: TcxButton
          Tag = 1
          Left = 307
          Top = 41
          Width = 21
          Height = 19
          Hint = 'Criar um novo cadastro de benefici'#225'rio ou organiza'#231#227'o social'
          Description = 'Cria um novo cadastro de benefici'#225'rio ou de organiza'#231#227'o social'
          OptionsImage.ImageIndex = 100
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = BtnProponenteTabelaClick
        end
        object BtnProponenteBuscar: TcxButton
          Tag = 1
          Left = 283
          Top = 41
          Width = 21
          Height = 19
          Hint = 'Pesquisar um CPF/CNPJ usando a busca r'#225'pida'
          Description = 'Realiza a busca r'#225'pida de um CPF/CNPJ'
          OptionsImage.ImageIndex = 99
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = BtnProponenteBuscarClick
        end
      end
      object BtnPropNovo: TcxButton
        Tag = 1
        Left = 8
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Inserir novo proponente'
        Anchors = [akLeft, akBottom]
        Caption = 'Novo'
        Description = 'Cria um novo proponente.'
        TabOrder = 1
        OnClick = BtnPropNovoClick
        ExplicitTop = 352
      end
      object BtnPropSalvar: TcxButton
        Tag = 1
        Left = 95
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Salvar altera'#231#245'es no proponente'
        Anchors = [akLeft, akBottom]
        Caption = 'Salvar'
        Description = 'Salva as altera'#231#245'es realizadas no proponente.'
        TabOrder = 2
        OnClick = BtnPropSalvarClick
        ExplicitTop = 352
      end
      object BtnPropCancelar: TcxButton
        Tag = 1
        Left = 182
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Cancelar altera'#231#245'es no proponente'
        Anchors = [akLeft, akBottom]
        Caption = 'Cancelar'
        Description = 'Cancela as altera'#231#245'es realizadas no proponente.'
        TabOrder = 3
        OnClick = BtnPropCancelarClick
        ExplicitTop = 352
      end
      object BtnPropExcluir: TcxButton
        Tag = 1
        Left = 270
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Excluir registro de proponente'
        Anchors = [akLeft, akBottom]
        Caption = 'Excluir'
        Description = 'Exclui o proponente atualmente selecionado.'
        TabOrder = 4
        OnClick = BtnPropExcluirClick
        ExplicitTop = 352
      end
      object GrdProp: TcxGrid
        Left = 352
        Top = 24
        Width = 453
        Height = 347
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 457
        ExplicitHeight = 353
        object GrdPropTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcProponente
          DataController.KeyFieldNames = 'PRO_ID'
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
          object GrdPropTblPRO_TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_TIPO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Items = <
              item
                Description = 'F'#237'sica'
                ImageIndex = 0
                Value = 'F'
              end
              item
                Description = 'Jur'#237'dica'
                Value = 'J'
              end>
            Width = 86
          end
          object GrdPropTblPRO_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_NOME'
            Width = 227
          end
          object GrdPropTblPRO_DAP: TcxGridDBColumn
            DataBinding.FieldName = 'PRO_DAP'
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditMask = '>lll9999999999999999999999;1; '
            Width = 142
          end
        end
        object GrdPropLvl: TcxGridLevel
          GridView = GrdPropTbl
        end
      end
    end
    object TbShtItens: TcxTabSheet
      Caption = 'Itens'
      ImageIndex = 3
      OnShow = TbShtItensShow
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        817
        391)
      object Label31: TLabel
        Left = 352
        Top = 8
        Width = 29
        Height = 13
        Caption = 'Itens:'
      end
      object GrdItm: TcxGrid
        Left = 352
        Top = 24
        Width = 453
        Height = 347
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
        object GrdItmTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcItem
          DataController.KeyFieldNames = 'ITM_ID'
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
          object GrdItmTblGRP_ID: TcxGridDBColumn
            DataBinding.FieldName = 'GRP_ID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'GRP_ID'
            Properties.ListColumns = <
              item
                FieldName = 'GRP_DESCRICAO'
              end>
            Width = 70
          end
          object GrdItmTblITM_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'ITM_DESCRICAO'
            Width = 189
          end
          object GrdItmTblITM_QTDE_SOLICITADA: TcxGridDBColumn
            DataBinding.FieldName = 'ITM_QTDE_SOLICITADA'
            Width = 49
          end
          object GrdItmTblITM_QTDE_LIBERADA: TcxGridDBColumn
            DataBinding.FieldName = 'ITM_QTDE_LIBERADA'
            Width = 50
          end
          object GrdItmTblITM_VALOR_ELABORADO: TcxGridDBColumn
            DataBinding.FieldName = 'ITM_VALOR_ELABORADO'
            Width = 48
          end
          object GrdItmTblITM_VALOR_LIBERADO: TcxGridDBColumn
            DataBinding.FieldName = 'ITM_VALOR_LIBERADO'
            Width = 49
          end
        end
        object GrdItmLvl: TcxGridLevel
          GridView = GrdItmTbl
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 8
        Top = 13
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Informa'#231#245'es sobre o proponente do projeto'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        DesignSize = (
          337
          319)
        Height = 326
        Width = 337
        object LblItemTipo: TLabel
          Tag = 2
          Left = 8
          Top = 24
          Width = 62
          Height = 13
          Caption = 'Tipo de item:'
          FocusControl = DbLkpCmbBxGrupo
          Transparent = True
        end
        object LblItemTipoCredito: TLabel
          Tag = 2
          Left = 192
          Top = 24
          Width = 75
          Height = 13
          Caption = 'Tipo de cr'#233'dito:'
          FocusControl = DbImgCmbBxTipoCredito
          Transparent = True
        end
        object LblItemDescricao: TLabel
          Tag = 2
          Left = 8
          Top = 64
          Width = 88
          Height = 13
          Caption = 'Descri'#231#227'o do item:'
          FocusControl = DbLkpCmbBxProduto
          Transparent = True
        end
        object LblVariedade: TLabel
          Left = 8
          Top = 104
          Width = 52
          Height = 13
          Caption = 'Variedade:'
          FocusControl = DbLkpCmbBxVariedade
          Transparent = True
          Visible = False
        end
        object LblItemAreaFinanciada: TLabel
          Tag = 2
          Left = 216
          Top = 104
          Width = 79
          Height = 13
          Caption = #193'rea financiada:'
          FocusControl = DbEdtAreaFinanciada
          Transparent = True
          Visible = False
        end
        object Label41: TLabel
          Tag = 2
          Left = 8
          Top = 245
          Width = 116
          Height = 13
          Caption = 'Data e hora do registro:'
          FocusControl = DbEdtItemDataHora
          Transparent = True
        end
        object LblItemQuantidadeContratada: TLabel
          Tag = 2
          Left = 224
          Top = 147
          Width = 59
          Height = 26
          AutoSize = False
          Caption = 'Quantidade contratada:'
          FocusControl = DbEdtQuantidadeLiberada
          Transparent = True
          WordWrap = True
        end
        object LblItemValorContratado: TLabel
          Tag = 2
          Left = 224
          Top = 200
          Width = 108
          Height = 13
          Caption = 'Valor contratado (R$):'
          FocusControl = DbEdtItemValorLiberado
          Transparent = True
        end
        object LblItemValorElaborado: TLabel
          Tag = 2
          Left = 112
          Top = 200
          Width = 103
          Height = 13
          Caption = 'Valor elaborado (R$):'
          FocusControl = DbEdtItemValorElaborado
          Transparent = True
        end
        object LblItemValorUnitario: TLabel
          Tag = 2
          Left = 8
          Top = 200
          Width = 91
          Height = 13
          Caption = 'Valor unit'#225'rio (R$):'
          FocusControl = DbEdtItemValorUnitario
          Transparent = True
        end
        object LblItemQuantidade: TLabel
          Tag = 2
          Left = 112
          Top = 160
          Width = 60
          Height = 13
          Caption = 'Quantidade:'
          FocusControl = DbEdtQuantidade
          Transparent = True
        end
        object LblItemUnidade: TLabel
          Tag = 2
          Left = 8
          Top = 147
          Width = 57
          Height = 26
          AutoSize = False
          Caption = 'Unidade de medida:'
          Transparent = True
          WordWrap = True
        end
        object LblRaca: TLabel
          Left = 8
          Top = 104
          Width = 28
          Height = 13
          Caption = 'Ra'#231'a:'
          FocusControl = DbLkpCmbBxRaca
          Transparent = True
          Visible = False
        end
        object DbLkpCmbBxGrupo: TcxDBLookupComboBox
          Left = 8
          Top = 40
          DataBinding.DataField = 'GRP_ID'
          DataBinding.DataSource = DtSrcItem
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'GRP_ID'
          Properties.ListColumns = <
            item
              FieldName = 'GRP_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.OnChange = DbLkpCmbBxGrupoPropertiesChange
          TabOrder = 0
          Width = 177
        end
        object DbImgCmbBxTipoCredito: TcxDBImageComboBox
          Left = 192
          Top = 40
          DataBinding.DataField = 'ITM_TIPO'
          DataBinding.DataSource = DtSrcItem
          Properties.Items = <
            item
              Description = 'Custeio'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Investimento'
              Value = 2
            end>
          TabOrder = 1
          Width = 137
        end
        object DbLkpCmbBxProduto: TcxDBLookupComboBox
          Left = 8
          Top = 80
          DataBinding.DataField = 'PRD_ID'
          DataBinding.DataSource = DtSrcItem
          Properties.KeyFieldNames = 'PRD_ID'
          Properties.ListColumns = <
            item
              FieldName = 'PRD_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 2
          Width = 321
        end
        object DbLkpCmbBxVariedade: TcxDBLookupComboBox
          Left = 8
          Top = 120
          DataBinding.DataField = 'VAR_ID'
          DataBinding.DataSource = DtSrcItem
          Properties.KeyFieldNames = 'VAR_ID'
          Properties.ListColumns = <
            item
              FieldName = 'VAR_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 3
          Visible = False
          Width = 177
        end
        object BtnVariedadeTabela: TcxButton
          Tag = 1
          Left = 188
          Top = 121
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de variedades de cultura'
          Description = 'Acessa a tabela de variedades de cultura.'
          OptionsImage.ImageIndex = 102
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          Visible = False
          OnClick = BtnVariedadeTabelaClick
        end
        object DbEdtAreaFinanciada: TcxDBCalcEdit
          Left = 216
          Top = 120
          DataBinding.DataField = 'ITM_AREA_FINANCIADA'
          DataBinding.DataSource = DtSrcItem
          TabOrder = 5
          Visible = False
          Width = 113
        end
        object DbEdtItemDataHora: TcxDBTextEdit
          Left = 128
          Top = 241
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'REG_MODIFICADO'
          DataBinding.DataSource = DtSrcItem
          Enabled = False
          TabOrder = 14
          Width = 201
        end
        object DbEdtItemValorLiberado: TcxDBCalcEdit
          Left = 224
          Top = 216
          DataBinding.DataField = 'ITM_VALOR_LIBERADO'
          DataBinding.DataSource = DtSrcItem
          TabOrder = 13
          Width = 105
        end
        object DbEdtItemValorElaborado: TcxDBCalcEdit
          Left = 112
          Top = 216
          DataBinding.DataField = 'ITM_VALOR_ELABORADO'
          DataBinding.DataSource = DtSrcItem
          TabOrder = 12
          Width = 105
        end
        object DbEdtItemValorUnitario: TcxDBCalcEdit
          Left = 8
          Top = 216
          DataBinding.DataField = 'ITM_VALOR_UNITARIO'
          DataBinding.DataSource = DtSrcItem
          TabOrder = 11
          Width = 97
        end
        object DbEdtQuantidadeLiberada: TcxDBCalcEdit
          Left = 224
          Top = 176
          DataBinding.DataField = 'ITM_QTDE_LIBERADA'
          DataBinding.DataSource = DtSrcItem
          TabOrder = 10
          Width = 105
        end
        object DbEdtQuantidade: TcxDBCalcEdit
          Left = 112
          Top = 176
          DataBinding.DataField = 'ITM_QTDE_SOLICITADA'
          DataBinding.DataSource = DtSrcItem
          TabOrder = 9
          Width = 105
        end
        object DbLkpCmbBxUnidadeMedida: TcxDBLookupComboBox
          Left = 8
          Top = 176
          TabStop = False
          DataBinding.DataField = 'UNI_ID'
          DataBinding.DataSource = DtSrcItem
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'UNI_ID'
          Properties.ListColumns = <
            item
              FieldName = 'UNI_DESCRICAO'
            end
            item
              FieldName = 'UNI_SIGLA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtmCadastroModulo.DtSrcUnidade
          Properties.PostPopupValueOnTab = True
          TabOrder = 8
          Width = 97
        end
        object BtnRacaTabela: TcxButton
          Tag = 1
          Left = 308
          Top = 121
          Width = 21
          Height = 19
          Hint = 'Abrir tabela de ra'#231'as de cria'#231#227'o'
          Description = 'Acessa a tabela de ra'#231'as de cria'#231#227'o.'
          OptionsImage.ImageIndex = 102
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Visible = False
          OnClick = BtnRacaTabelaClick
        end
        object DbLkpCmbBxRaca: TcxDBLookupComboBox
          Left = 8
          Top = 120
          DataBinding.DataField = 'RAC_ID'
          DataBinding.DataSource = DtSrcItem
          Properties.KeyFieldNames = 'RAC_ID'
          Properties.ListColumns = <
            item
              FieldName = 'RAC_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 6
          Visible = False
          Width = 297
        end
      end
      object BtnItmNovo: TcxButton
        Tag = 1
        Left = 8
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Inserir novo item'
        Anchors = [akLeft, akBottom]
        Caption = 'Novo'
        Description = 'Cria um novo item.'
        TabOrder = 2
        OnClick = BtnItmNovoClick
      end
      object BtnItmSalvar: TcxButton
        Tag = 1
        Left = 95
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Salvar altera'#231#245'es no item'
        Anchors = [akLeft, akBottom]
        Caption = 'Salvar'
        Description = 'Salva as altera'#231#245'es realizadas no item.'
        TabOrder = 3
        OnClick = BtnItmSalvarClick
      end
      object BtnItmCancelar: TcxButton
        Tag = 1
        Left = 182
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Cancelar altera'#231#245'es no item'
        Anchors = [akLeft, akBottom]
        Caption = 'Cancelar'
        Description = 'Cancela as altera'#231#245'es realizadas no item.'
        TabOrder = 4
        OnClick = BtnItmCancelarClick
      end
      object BtnItmExcluir: TcxButton
        Tag = 1
        Left = 270
        Top = 346
        Width = 75
        Height = 25
        Hint = 'Excluir item'
        Anchors = [akLeft, akBottom]
        Caption = 'Excluir'
        Description = 'Exclui o item atualmente selecionado.'
        TabOrder = 5
        OnClick = BtnItmExcluirClick
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 467
    Hint = 'Inserir novo projeto de cr'#233'dito rural'
    Description = 'Cria um novo cadastro de cr'#233'dito rural.'
    TabOrder = 2
    ExplicitTop = 467
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 467
    Hint = 'Salvar altera'#231#245'es no projeto de cr'#233'dito rural'
    Description = 'Salva as altera'#231#245'es realizadas no projeto de cr'#233'dito rural.'
    TabOrder = 3
    ExplicitTop = 467
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 467
    Hint = 'Cancelar altera'#231#245'es no projeto de cr'#233'dito rural'
    Description = 'Cancela as altera'#231#245'es realizadas no projeto de cr'#233'dito rural.'
    TabOrder = 4
    ExplicitTop = 467
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 467
    Hint = 'Excluir projeto de cr'#233'dito rural'
    Description = 'Exclui o projeto de cr'#233'dito rural atualmente selecionado.'
    TabOrder = 5
    ExplicitTop = 467
  end
  inherited BtnFechar: TcxButton
    Left = 753
    Top = 467
    TabOrder = 8
    ExplicitLeft = 753
    ExplicitTop = 467
  end
  inherited BtnRelatorio: TcxButton
    Top = 467
    TabOrder = 6
    ExplicitTop = 467
  end
  object PnlTop: TPanel [8]
    Left = 0
    Top = 0
    Width = 839
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Color = 4551200
    ParentBackground = False
    TabOrder = 0
    object LblTitulo: TLabel
      Left = 0
      Top = 0
      Width = 762
      Height = 29
      Align = alClient
      AutoSize = False
      Caption = '      Projeto de Cr'#233'dito Rural'
      Color = 4551200
      EllipsisPosition = epEndEllipsis
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      ExplicitWidth = 201
    end
    object Image: TImage
      Left = 4
      Top = 2
      Width = 24
      Height = 24
      Picture.Data = {
        055449636F6E0000010001001818000001002000880900001600000028000000
        1800000030000000010020000000000060090000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000B0000002600000032
        000000230000000F000000030000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000060000001D0000004038383879DBDBDBEE
        676767A10000005B000000360000001400000005000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000010000000B000000230202024C11111183C6C6C6F6F6F6F6FF
        D6D6D6FFAFAFAFFB7A7A7AC30000005B00000033000000190000000800000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000070000001B0000003C02020266595959CE686868FCD5D5D5FFD0D0D0FF
        A2A2A2FFDEDEDEFFA1A1A1FFBABABAFDAAAAAAD5202020640000002B00000009
        0000000000000000000000000000000000000000000000000000000300000013
        000000310000005A3E3E3EA18B8A8AF6AEACA9FFBDBAB6FFA5A4A3FF959595FF
        CACACAFFE1E1E1FFD2D2D2FFA9A9A9FFB2B2B2FFDDDDDDFFD3D3D3D65F5F5F22
        00000000000000000000000000000000000000010000000D000000260000004D
        23232386787878DEB1AFAEFFD0CCC7FFD5D1CCFFD6D2CDFFD0CCC9FF878787FF
        BCBCBCFFA3A3A3FFC7C7C7FFB8B8B8FFBFBFBFFFA6A6A6FFCACACAF900000017
        000000000000000000000000000000090000001E0000004114141472626262C5
        AAA9A8FBCCC8C4FFD5D1CCFFD6D2CDFFD7D3CEFFD8D4D0FFD8D5D1FFA8A6A4FF
        848484FFE1E1E1FFFDFDFDFFB2B2B2FFBFBFBFFFDADADAFF8C8C8CDD00000036
        0000000E0000000400000016000000360000005F474747A99C9C9BF5CAC7C3FF
        D5D1CCFFD6D2CDFFD7D3CEFFD8D4CFFFD8D5D0FFD9D6D1FFDAD7D2FFDBD8D4FF
        A4A3A3FFDEDEDEFFFBFBFBFFFDFDFDFFACACACFFC5C5C5FFEAEAEAFE9B9B9BA8
        00000021000000160000004922222289848483E8A7A6A3FFB2AFABFFC4C1BCFF
        D3D1CCFFD7D4CFFFD8D5D0FFD9D6D1FFDAD7D2FFDBD8D3FFDCD9D5FFDDD9D6FF
        BFBDBAFFBBBBBBFFEEEEEEFFFDFDFDFFF7F7F7FFA3A3A3FFCDCDCDFFF4F4F4FF
        C2C2C2760000002E686868BAB6B5B4FFC8C4C1FFAEAAA6FF9A9895FFA5A39FFF
        BCB9B5FFCFCCC7FFD9D6D1FFDBD7D3FFDCD8D4FFDDD9D6FFDDDAD7FFDEDBD8FF
        DFDCD9FFA8A8A7FFD6D6D6FFF8F8F8FFF3F3F3FFE1E1E1FF979797FFCACACAF8
        7676761E2828283DCAC8C5FFC9C6C4FFC6C4C1FF7B9CAAFF9C9FA0FFA9A095FF
        8F8A86FFA4A19EFFC0BCB9FFD2CFCBFFDCD9D5FFDEDBD8FFDFDCD9FFE0DDDAFF
        E1DEDBFFCDCBC9FFB1B1B1FFE0E0E0FFD4D4D4FFC4C4C4FFD3D3D3FF53535391
        0000001900000018D6D3CEFFD7D7D7FFD2D2D1FFD1CDCAFF99948DFFB8A998FF
        CDBCA7FFA59B8CFF898782FFA8A6A3FFC7C5C2FFDBD8D5FFE1DEDBFFE1DFDCFF
        E2E0DDFFE3E1DEFFAAA9A8FFACACACFFA6A6A6FFABABAAFFDEDEDEFFD4D4D4E1
        0000002000000004C7C4C1B0D6D2CFFFD8D5D1FFDAD7D3FFD8D5D0FFC1B6A8FF
        C2B3A0FFD1C1ABFFCEBCA7FF9C9183FF949290FFBAB9B6FFD6D4D1FFE2E0DDFF
        E4E2DFFFE5E3E0FFDEDBD9FFADABAAFFE0DEDCFFB9B8B7FFCCCCCCFFE5E5E5F4
        5959592700000000DAD6D210D5D3CFEFDBD8D4FFDCD9D5FFDDDAD6FFDCD9D5FF
        C7BBAEFFC8B8A6FFCDBCA8FFDDCBB4FFB9AA97FF8A8680FFAAA8A6FFCDCAC8FF
        E1DEDCFFE6E4E2FFE7E5E3FFE8E6E4FFE9E7E5FFEAE8E6FFB4B3B3FE31313188
        000000230000000000000000DCD9D550DDDAD6FFDEDBD7FFDFDCD8FFDFDDD9FF
        E0DDD8FFD1C8BCFFCDBDABFFCCBCAAFFDDCAB4FFD1BFA9FF9B9185FF979594FF
        BDBCBAFFD9D8D6FFE7E5E3FFEAE8E6FFEBE9E7FFECEAE8FFD7D6D5FF737373D1
        00000037000000000000000000000000DCDAD6B4DFDDD9FFE0DDDAFFE1DEDBFF
        E2DFDCFFE4E1DDFFDBD3CBFFCEC0AFFFCFBFADFFD8C6B1FFE4D1B9FFB8AA97FF
        8A8681FFAAA8A7FFCECDCBFFE5E4E2FFECEBE9FFD9D9D7FFD5D4D3FFBDBCBCFF
        00000036000000000000000000000000E0DDDA20E0DDDAF2E2DFDCFFE3E0DDFF
        E4E1DEFFE4E2DFFFE6E3E0FFE3DFDAFFD1C6B7FFCFBFADFFD3C3AFFFE7D3BCFF
        D2C0AAFF9A9084FF959493FFBFBFBDFFDFDEDCFFCACACAFFD0D0D0FFD5D5D4F9
        0000001F00000000000000000000000000000000E3E0DD7FE3E1DEFFE4E2DFFF
        E5E3E0FFE6E4E1FFE7E5E2FFE8E6E4FFEAE7E4FFDBD4CBFFCDBEADFFCFBFADFF
        E0CEB9FFE1CEB6FFB7A996FF8B8884FFAEADACFFCECECEFFE2E1E0F8AFAFAE6D
        000000080000000000000000000000000000000000000000E5E3E0CFE6E4E1FF
        E7E5E2FFE8E6E3FFE9E7E5FFE9E8E6FFEAE9E7FFECE9E8FFE8E4E0FFD1C4B6FF
        CFBFADFFDCCAB6FFE7D5BDFFCFBDA8FF988E83FB616161A00000002E0000000D
        000000010000000000000000000000000000000000000000E7E5E240E8E6E3FF
        E8E7E4FFE9E7E5FFEAE8E7FFEBE9E8FFECEAE9FFEDEBEAFFEEECEBFFEEECEAFF
        D8D0C6FFCDBEADFFD7C6B3FFE9D7C0FFDCC9B2FFB4A592EF1F1D197900000034
        0000000B000000000000000000000000000000000000000000000000E9E7E58F
        EAE8E6FFEBE9E8FFECEAE9FFEDEBEAFFEDECEBFFEEEDECFFEFEEEDFFF0EFEEFF
        F1F0EFE0E2DBD389C7B8A6E0CFC0AEFFE3D1BCFFE1CEB6FFA9A49BEE28282862
        00000012000000000000000000000000000000000000000000000000EBE9E710
        ECEAE8EFE6E4E3FFD3D3D3FFDEDDDCFFEFEEEDFFF0EFEEFFF1F0EFDFF1F0EF60
        00000000FFF0E103F0E2D412C7B8A59CC8B9A6FFCEBFADFFE1DFDCFF71717163
        0000000B00000000000000000000000000000000000000000000000000000000
        EDECEA50E4E3E1FFCBCBCBFFDFDFDEFFF1F0EFDFF1F0EF600000000000000000
        000000000000000000000000FFF0E108D1C3B327A09E9C909493939B0000000B
        0000000100000000000000000000000000000000000000000000000000000000
        00000000F0EFEE90F1F0EFC0F1F0EF6000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFF03F00FFC00F00FF000300FE000100F8000100E0000100C0000000
        00000000000000000000000000000000000000000000000080000000C0000000
        E0000000E0000000F0000000F8000000F8000000FC000000FC010000FE07C000
        FF1FFF00}
      Transparent = True
    end
    object LblReplicacao: TLabel
      Left = 762
      Top = 0
      Width = 77
      Height = 29
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      Caption = 'Migra'#231#227'o pendente'
      Color = 5855696
      EllipsisPosition = epEndEllipsis
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      WordWrap = True
      ExplicitLeft = 648
    end
  end
  inherited DtStPrincipal: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE TAB_CRD_CREDITO_RURAL'
      'SET '
      '    CRD_TITULO = :CRD_TITULO,'
      '    CRD_DESCRICAO = :CRD_DESCRICAO,'
      '    CRD_DATA_ELABORACAO = :CRD_DATA_ELABORACAO,'
      '    CRD_DATA_INTERNALIZACAO = :CRD_DATA_INTERNALIZACAO,'
      '    CRD_DATA_CONTRATACAO = :CRD_DATA_CONTRATACAO,'
      '    CRD_DATA_ENCERRAMENTO = :CRD_DATA_ENCERRAMENTO,'
      '    CRD_DATA_HORA_REGISTRO = :CRD_DATA_HORA_REGISTRO,'
      '    CRD_VALOR_ELABORADO = :CRD_VALOR_ELABORADO,'
      '    CRD_VALOR_CONTRATADO = :CRD_VALOR_CONTRATADO,'
      '    REG_EXCLUIDO = :REG_EXCLUIDO,'
      '    REG_REPLICADO = :REG_REPLICADO,'
      '    REG_USUARIO = :REG_USUARIO,'
      '    REG_MODIFICADO = :REG_MODIFICADO,'
      '    FUN_ID_CAMPO = :FUN_ID_CAMPO,'
      '    FUN_ID_ELABORADOR = :FUN_ID_ELABORADOR,'
      '    UND_ID = :UND_ID,'
      '    FIN_ID = :FIN_ID,'
      '    LIN_ID = :LIN_ID,'
      '    TIP_ID = :TIP_ID,'
      '    PUB_ID = :PUB_ID,'
      '    COM_ID = :COM_ID,'
      '    SIT_ID = :SIT_ID'
      'WHERE'
      '    CRD_ID = :OLD_CRD_ID'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    TAB_CRD_CREDITO_RURAL'
      'WHERE'
      '        CRD_ID = :OLD_CRD_ID'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_CREDITO_RURAL('
      '    CRD_ID,'
      '    CRD_TITULO,'
      '    CRD_DESCRICAO,'
      '    CRD_DATA_ELABORACAO,'
      '    CRD_DATA_INTERNALIZACAO,'
      '    CRD_DATA_CONTRATACAO,'
      '    CRD_DATA_ENCERRAMENTO,'
      '    CRD_DATA_HORA_REGISTRO,'
      '    CRD_VALOR_ELABORADO,'
      '    CRD_VALOR_CONTRATADO,'
      '    REG_EXCLUIDO,'
      '    REG_REPLICADO,'
      '    REG_USUARIO,'
      '    REG_MODIFICADO,'
      '    FUN_ID_CAMPO,'
      '    FUN_ID_ELABORADOR,'
      '    UND_ID,'
      '    FIN_ID,'
      '    LIN_ID,'
      '    TIP_ID,'
      '    PUB_ID,'
      '    COM_ID,'
      '    SIT_ID'
      ')'
      'VALUES('
      '    :CRD_ID,'
      '    :CRD_TITULO,'
      '    :CRD_DESCRICAO,'
      '    :CRD_DATA_ELABORACAO,'
      '    :CRD_DATA_INTERNALIZACAO,'
      '    :CRD_DATA_CONTRATACAO,'
      '    :CRD_DATA_ENCERRAMENTO,'
      '    :CRD_DATA_HORA_REGISTRO,'
      '    :CRD_VALOR_ELABORADO,'
      '    :CRD_VALOR_CONTRATADO,'
      '    :REG_EXCLUIDO,'
      '    :REG_REPLICADO,'
      '    :REG_USUARIO,'
      '    :REG_MODIFICADO,'
      '    :FUN_ID_CAMPO,'
      '    :FUN_ID_ELABORADOR,'
      '    :UND_ID,'
      '    :FIN_ID,'
      '    :LIN_ID,'
      '    :TIP_ID,'
      '    :PUB_ID,'
      '    :COM_ID,'
      '    :SIT_ID'
      ')')
    RefreshSQL.Strings = (
      'select'
      '  a.crd_id,'
      '  a.crd_titulo, '
      '  a.crd_descricao, '
      '  a.crd_data_elaboracao, '
      '  a.crd_data_internalizacao, '
      '  a.crd_data_contratacao, '
      '  a.crd_data_encerramento, '
      '  a.crd_data_hora_registro, '
      '  a.crd_valor_elaborado, '
      '  a.crd_valor_contratado, '
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.fun_id_campo, '
      '  a.fun_id_elaborador, '
      '  a.und_id, '
      '  a.fin_id, '
      '  a.lin_id, '
      '  a.tip_id, '
      '  a.pub_id, '
      '  a.com_id, '
      '  a.sit_id,'
      
        '  '#39'('#39' || coalesce(b.usr_login, '#39'N'#227'o identificado'#39') || '#39') '#39' || co' +
        'alesce(c.fun_nome, '#39#39') as crd_modificado_usuario_nome,'
      '  d.fun_nome as crd_tecnico_campo,'
      '  e.fun_nome as crd_tecnico_elaborador'
      'from'
      
        '  tab_crd_credito_rural a join tab_sis_usuario b on (a.reg_usuar' +
        'io = b.usr_login) left join'
      '  tab_pes_funcionario c on (b.usr_id = c.usr_id) left join'
      '  tab_pes_funcionario d on (a.fun_id_campo = d.fun_id) left join'
      '  tab_pes_funcionario e on (a.fun_id_elaborador = e.fun_id)'
      'where( '
      '  (a.crd_id = :crd_id) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local)) and'
      '  (a.reg_excluido = 0)'
      '     ) and (     A.CRD_ID = :OLD_CRD_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'select'
      '  a.crd_id,'
      '  a.crd_titulo, '
      '  a.crd_descricao, '
      '  a.crd_data_elaboracao, '
      '  a.crd_data_internalizacao, '
      '  a.crd_data_contratacao, '
      '  a.crd_data_encerramento, '
      '  a.crd_data_hora_registro, '
      '  a.crd_valor_elaborado, '
      '  a.crd_valor_contratado, '
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.fun_id_campo, '
      '  a.fun_id_elaborador, '
      '  a.und_id, '
      '  a.fin_id, '
      '  a.lin_id, '
      '  a.tip_id, '
      '  a.pub_id, '
      '  a.com_id, '
      '  a.sit_id,'
      
        '  '#39'('#39' || coalesce(b.usr_login, '#39'N'#227'o identificado'#39') || '#39') '#39' || co' +
        'alesce(c.fun_nome, '#39#39') as crd_modificado_usuario_nome,'
      '  d.fun_nome as crd_tecnico_campo,'
      '  e.fun_nome as crd_tecnico_elaborador'
      'from'
      
        '  tab_crd_credito_rural a join tab_sis_usuario b on (a.reg_usuar' +
        'io = b.usr_login) left join'
      '  tab_pes_funcionario c on (b.usr_id = c.usr_id) left join'
      '  tab_pes_funcionario d on (a.fun_id_campo = d.fun_id) left join'
      '  tab_pes_funcionario e on (a.fun_id_elaborador = e.fun_id)'
      'where'
      '  (a.crd_id = :crd_id) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local)) and'
      '  (a.reg_excluido = 0)')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 304
    Top = 192
  end
  inherited DtSrcPrincipal: TDataSource
    Left = 504
    Top = 216
  end
  inherited QryPrincipal: TFDQuery
    SQL.Strings = (
      'select'
      '  a.crd_id,'
      '  a.crd_titulo, '
      '  a.crd_descricao, '
      '  a.crd_data_elaboracao, '
      '  a.crd_data_internalizacao, '
      '  a.crd_data_contratacao, '
      '  a.crd_data_encerramento, '
      '  a.crd_data_hora_registro, '
      '  a.crd_valor_elaborado, '
      '  a.crd_valor_contratado, '
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.fun_id_campo, '
      '  a.fun_id_elaborador, '
      '  a.und_id, '
      '  a.fin_id, '
      '  a.lin_id, '
      '  a.tip_id, '
      '  a.pub_id, '
      '  a.com_id, '
      '  a.sit_id,'
      
        '  '#39'('#39' || coalesce(b.usr_login, '#39'N'#227'o identificado'#39') || '#39') '#39' || co' +
        'alesce(c.fun_nome, '#39#39') as crd_modificado_usuario_nome,'
      '  d.fun_nome as crd_tecnico_campo,'
      '  e.fun_nome as crd_tecnico_elaborador'
      'from'
      
        '  tab_crd_credito_rural a join tab_sis_usuario b on (a.reg_usuar' +
        'io = b.usr_login) left join'
      '  tab_pes_funcionario c on (b.usr_id = c.usr_id) left join'
      '  tab_pes_funcionario d on (a.fun_id_campo = d.fun_id) left join'
      '  tab_pes_funcionario e on (a.fun_id_elaborador = e.fun_id)'
      'where'
      '  (a.crd_id = :crd_id) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local)) and'
      '  (a.reg_excluido = 0)')
    Left = 440
    Top = 216
    ParamData = <
      item
        Name = 'CRD_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryPrincipalCRD_ID: TLargeintField
      Alignment = taCenter
      DisplayLabel = 'Identificador:'
      FieldName = 'CRD_ID'
      Origin = 'CRD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalCRD_TITULO: TStringField
      DisplayLabel = 'T'#237'tulo do projeto'
      FieldName = 'CRD_TITULO'
      Origin = 'CRD_TITULO'
      Required = True
      Size = 100
    end
    object QryPrincipalCRD_DESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o do projeto'
      FieldName = 'CRD_DESCRICAO'
      Origin = 'CRD_DESCRICAO'
      Required = True
      BlobType = ftMemo
    end
    object QryPrincipalCRD_DATA_ELABORACAO: TDateField
      DisplayLabel = 'Data de elabora'#231#227'o'
      FieldName = 'CRD_DATA_ELABORACAO'
      Origin = 'CRD_DATA_ELABORACAO'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalCRD_DATA_INTERNALIZACAO: TDateField
      FieldName = 'CRD_DATA_INTERNALIZACAO'
      Origin = 'CRD_DATA_INTERNALIZACAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalCRD_DATA_CONTRATACAO: TDateField
      DisplayLabel = 'Data de contrata'#231#227'o:'
      FieldName = 'CRD_DATA_CONTRATACAO'
      Origin = 'CRD_DATA_CONTRATACAO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalCRD_DATA_ENCERRAMENTO: TDateField
      DisplayLabel = 'Data de vig'#234'ncia:'
      FieldName = 'CRD_DATA_ENCERRAMENTO'
      Origin = 'CRD_DATA_ENCERRAMENTO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalCRD_DATA_HORA_REGISTRO: TSQLTimeStampField
      DisplayLabel = 'Data de cria'#231#227'o do registro'
      FieldName = 'CRD_DATA_HORA_REGISTRO'
      Origin = 'CRD_DATA_HORA_REGISTRO'
      Required = True
    end
    object QryPrincipalCRD_VALOR_ELABORADO: TBCDField
      DefaultExpression = '0'
      DisplayLabel = 'Valor elaborado (R$)'
      FieldName = 'CRD_VALOR_ELABORADO'
      Origin = 'CRD_VALOR_ELABORADO'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object QryPrincipalCRD_VALOR_CONTRATADO: TBCDField
      DefaultExpression = '0'
      DisplayLabel = 'Valor contratado (R$)'
      FieldName = 'CRD_VALOR_CONTRATADO'
      Origin = 'CRD_VALOR_CONTRATADO'
      Required = True
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object QryPrincipalFUN_ID_CAMPO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FUN_ID_CAMPO'
      Origin = 'FUN_ID_CAMPO'
      Required = True
    end
    object QryPrincipalFUN_ID_ELABORADOR: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FUN_ID_ELABORADOR'
      Origin = 'FUN_ID_ELABORADOR'
      Required = True
    end
    object QryPrincipalUND_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
      Required = True
    end
    object QryPrincipalFIN_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FIN_ID'
      Origin = 'FIN_ID'
      Required = True
    end
    object QryPrincipalLIN_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'LIN_ID'
      Origin = 'LIN_ID'
      Required = True
    end
    object QryPrincipalTIP_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'TIP_ID'
      Origin = 'TIP_ID'
      Required = True
    end
    object QryPrincipalPUB_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'PUB_ID'
      Origin = 'PUB_ID'
      Required = True
    end
    object QryPrincipalCOM_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
    end
    object QryPrincipalSIT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'SIT_ID'
      Origin = 'SIT_ID'
      Required = True
    end
    object QryPrincipalCRD_MODIFICADO_USUARIO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CRD_MODIFICADO_USUARIO_NOME'
      Origin = 'CRD_MODIFICADO_USUARIO_NOME'
      ProviderFlags = []
      Size = 153
    end
    object QryPrincipalCRD_TECNICO_CAMPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CRD_TECNICO_CAMPO'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
    object QryPrincipalCRD_TECNICO_ELABORADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CRD_TECNICO_ELABORADOR'
      Origin = 'FUN_NOME'
      ProviderFlags = []
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
  end
  inherited UpdtPrincipal: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_CREDITO_RURAL'
      '(CRD_ID, CRD_TITULO, CRD_DESCRICAO, CRD_DATA_ELABORACAO, '
      '  CRD_DATA_INTERNALIZACAO, CRD_DATA_CONTRATACAO, '
      '  CRD_DATA_ENCERRAMENTO, CRD_DATA_HORA_REGISTRO, '
      '  CRD_VALOR_ELABORADO, CRD_VALOR_CONTRATADO, FUN_ID_CAMPO, '
      '  FUN_ID_ELABORADOR, UND_ID, FIN_ID, LIN_ID, '
      '  TIP_ID, PUB_ID, COM_ID, SIT_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_CRD_ID, :NEW_CRD_TITULO, :NEW_CRD_DESCRICAO, :NEW_C' +
        'RD_DATA_ELABORACAO, '
      '  :NEW_CRD_DATA_INTERNALIZACAO, :NEW_CRD_DATA_CONTRATACAO, '
      '  :NEW_CRD_DATA_ENCERRAMENTO, :NEW_CRD_DATA_HORA_REGISTRO, '
      
        '  :NEW_CRD_VALOR_ELABORADO, :NEW_CRD_VALOR_CONTRATADO, :NEW_FUN_' +
        'ID_CAMPO, '
      
        '  :NEW_FUN_ID_ELABORADOR, :NEW_UND_ID, :NEW_FIN_ID, :NEW_LIN_ID,' +
        ' '
      
        '  :NEW_TIP_ID, :NEW_PUB_ID, :NEW_COM_ID, :NEW_SIT_ID, :NEW_REG_E' +
        'XCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_CREDITO_RURAL'
      
        'SET CRD_ID = :NEW_CRD_ID, CRD_TITULO = :NEW_CRD_TITULO, CRD_DESC' +
        'RICAO = :NEW_CRD_DESCRICAO, '
      
        '  CRD_DATA_ELABORACAO = :NEW_CRD_DATA_ELABORACAO, CRD_DATA_INTER' +
        'NALIZACAO = :NEW_CRD_DATA_INTERNALIZACAO, '
      
        '  CRD_DATA_CONTRATACAO = :NEW_CRD_DATA_CONTRATACAO, CRD_DATA_ENC' +
        'ERRAMENTO = :NEW_CRD_DATA_ENCERRAMENTO, '
      
        '  CRD_DATA_HORA_REGISTRO = :NEW_CRD_DATA_HORA_REGISTRO, CRD_VALO' +
        'R_ELABORADO = :NEW_CRD_VALOR_ELABORADO, '
      
        '  CRD_VALOR_CONTRATADO = :NEW_CRD_VALOR_CONTRATADO, FUN_ID_CAMPO' +
        ' = :NEW_FUN_ID_CAMPO, '
      
        '  FUN_ID_ELABORADOR = :NEW_FUN_ID_ELABORADOR, UND_ID = :NEW_UND_' +
        'ID, '
      
        '  FIN_ID = :NEW_FIN_ID, LIN_ID = :NEW_LIN_ID, TIP_ID = :NEW_TIP_' +
        'ID, '
      
        '  PUB_ID = :NEW_PUB_ID, COM_ID = :NEW_COM_ID, SIT_ID = :NEW_SIT_' +
        'ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE CRD_ID = :OLD_CRD_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_CREDITO_RURAL'
      'WHERE CRD_ID = :OLD_CRD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT CRD_ID, CRD_TITULO, CRD_DESCRICAO, CRD_DATA_ELABORACAO, C' +
        'RD_DATA_INTERNALIZACAO, '
      
        '  CRD_DATA_CONTRATACAO, CRD_DATA_ENCERRAMENTO, CRD_DATA_HORA_REG' +
        'ISTRO, '
      '  CRD_VALOR_ELABORADO, CRD_VALOR_CONTRATADO, FUN_ID_CAMPO, '
      '  FUN_ID_ELABORADOR, UND_ID, FIN_ID, LIN_ID, TIP_ID, PUB_ID, '
      '  COM_ID, SIT_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_CREDITO_RURAL'
      'WHERE CRD_ID = :CRD_ID')
    Left = 472
    Top = 216
  end
  object DtSrcVisita: TDataSource
    DataSet = QryVisita
    OnStateChange = DtSrcVisitaStateChange
    Left = 504
    Top = 248
  end
  object DtSrcProponente: TDataSource
    DataSet = QryProponente
    OnStateChange = DtSrcProponenteStateChange
    Left = 504
    Top = 280
  end
  object DtSrcItem: TDataSource
    DataSet = QryItem
    OnStateChange = DtSrcItemStateChange
    Left = 504
    Top = 312
  end
  object QryItem: TFDQuery
    BeforePost = QryItemBeforePost
    AfterPost = QryItemAfterPost
    OnNewRecord = QryItemNewRecord
    MasterSource = DtSrcPrincipal
    MasterFields = 'CRD_ID'
    DetailFields = 'CRD_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtItem
    SQL.Strings = (
      'select'
      '  a.itm_id, '
      '  a.itm_tipo, '
      '  a.itm_area_financiada, '
      '  a.itm_qtde_solicitada, '
      '  a.itm_qtde_liberada, '
      '  a.itm_valor_unitario, '
      '  a.itm_valor_elaborado, '
      '  a.itm_valor_liberado, '
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.prd_id, '
      '  a.uni_id, '
      '  a.var_id, '
      '  a.rac_id, '
      '  a.bem_id, '
      '  a.crd_id, '
      '  a.grp_id,'
      '  case a.grp_id'
      '    when '#39'100000001'#39' then b.prd_descricao'
      '    when '#39'100000002'#39' then b.prd_descricao'
      '    when '#39'100000003'#39' then c.bem_descricao'
      '    when '#39'100000004'#39' then c.bem_descricao'
      '    when '#39'100000005'#39' then c.bem_descricao'
      '    else '#39#39
      '  end as itm_descricao'
      'from'
      
        '  tab_crd_item a left join tab_cad_produto b on (a.prd_id = b.pr' +
        'd_id) left join'
      '  tab_cad_bem c on (a.bem_id = c.bem_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.crd_id = :crd_id)'
      'order by'
      '  itm_descricao')
    Left = 440
    Top = 312
    ParamData = <
      item
        Name = 'CRD_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryItemITM_ID: TLargeintField
      Alignment = taLeftJustify
      FieldName = 'ITM_ID'
      Origin = 'ITM_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryItemITM_TIPO: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de cr'#233'dito'
      FieldName = 'ITM_TIPO'
      Origin = 'ITM_TIPO'
    end
    object QryItemITM_AREA_FINANCIADA: TBCDField
      DisplayLabel = #193'rea financiada'
      FieldName = 'ITM_AREA_FINANCIADA'
      Origin = 'ITM_AREA_FINANCIADA'
      DisplayFormat = '#,##0.000'
      Precision = 18
      Size = 3
    end
    object QryItemITM_QTDE_SOLICITADA: TBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'ITM_QTDE_SOLICITADA'
      Origin = 'ITM_QTDE_SOLICITADA'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Precision = 18
      Size = 3
    end
    object QryItemITM_QTDE_LIBERADA: TBCDField
      DisplayLabel = 'Quantidade contratada'
      FieldName = 'ITM_QTDE_LIBERADA'
      Origin = 'ITM_QTDE_LIBERADA'
      DisplayFormat = '#,##0.000'
      EditFormat = '0.000'
      Precision = 18
      Size = 3
    end
    object QryItemITM_VALOR_UNITARIO: TBCDField
      DisplayLabel = 'Valor unit'#225'rio (R$)'
      FieldName = 'ITM_VALOR_UNITARIO'
      Origin = 'ITM_VALOR_UNITARIO'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object QryItemITM_VALOR_ELABORADO: TBCDField
      DisplayLabel = 'Valor elaborado (R$)'
      FieldName = 'ITM_VALOR_ELABORADO'
      Origin = 'ITM_VALOR_ELABORADO'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object QryItemITM_VALOR_LIBERADO: TBCDField
      DisplayLabel = 'Valor contratado (R$)'
      FieldName = 'ITM_VALOR_LIBERADO'
      Origin = 'ITM_VALOR_LIBERADO'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object QryItemPRD_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Descri'#231#227'o do produto'
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
    end
    object QryItemUNI_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Unidade de medida'
      FieldName = 'UNI_ID'
      Origin = 'UNI_ID'
    end
    object QryItemVAR_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Variedade'
      FieldName = 'VAR_ID'
      Origin = 'VAR_ID'
    end
    object QryItemRAC_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Ra'#231'a'
      FieldName = 'RAC_ID'
      Origin = 'RAC_ID'
    end
    object QryItemBEM_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Descri'#231#227'o do produto'
      FieldName = 'BEM_ID'
      Origin = 'BEM_ID'
    end
    object QryItemCRD_ID: TLargeintField
      Alignment = taLeftJustify
      FieldName = 'CRD_ID'
      Origin = 'CRD_ID'
    end
    object QryItemGRP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de item'
      FieldName = 'GRP_ID'
      Origin = 'GRP_ID'
    end
    object QryItemITM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o do produto'
      FieldName = 'ITM_DESCRICAO'
      Origin = 'ITM_DESCRICAO'
      ProviderFlags = []
      Size = 100
    end
    object QryItemREG_EXCLUIDO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryItemREG_REPLICADO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryItemREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryItemREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtItem: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_ITEM'
      '(ITM_ID, ITM_TIPO, ITM_AREA_FINANCIADA, ITM_QTDE_SOLICITADA, '
      '  ITM_QTDE_LIBERADA, ITM_VALOR_UNITARIO, ITM_VALOR_ELABORADO, '
      '  ITM_VALOR_LIBERADO, PRD_ID, UNI_ID, VAR_ID, '
      '  RAC_ID, BEM_ID, CRD_ID, GRP_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_ITM_ID, :NEW_ITM_TIPO, :NEW_ITM_AREA_FINANCIADA, :N' +
        'EW_ITM_QTDE_SOLICITADA, '
      
        '  :NEW_ITM_QTDE_LIBERADA, :NEW_ITM_VALOR_UNITARIO, :NEW_ITM_VALO' +
        'R_ELABORADO, '
      
        '  :NEW_ITM_VALOR_LIBERADO, :NEW_PRD_ID, :NEW_UNI_ID, :NEW_VAR_ID' +
        ', '
      
        '  :NEW_RAC_ID, :NEW_BEM_ID, :NEW_CRD_ID, :NEW_GRP_ID, :NEW_REG_E' +
        'XCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_ITEM'
      
        'SET ITM_ID = :NEW_ITM_ID, ITM_TIPO = :NEW_ITM_TIPO, ITM_AREA_FIN' +
        'ANCIADA = :NEW_ITM_AREA_FINANCIADA, '
      
        '  ITM_QTDE_SOLICITADA = :NEW_ITM_QTDE_SOLICITADA, ITM_QTDE_LIBER' +
        'ADA = :NEW_ITM_QTDE_LIBERADA, '
      
        '  ITM_VALOR_UNITARIO = :NEW_ITM_VALOR_UNITARIO, ITM_VALOR_ELABOR' +
        'ADO = :NEW_ITM_VALOR_ELABORADO, '
      
        '  ITM_VALOR_LIBERADO = :NEW_ITM_VALOR_LIBERADO, PRD_ID = :NEW_PR' +
        'D_ID, '
      
        '  UNI_ID = :NEW_UNI_ID, VAR_ID = :NEW_VAR_ID, RAC_ID = :NEW_RAC_' +
        'ID, '
      
        '  BEM_ID = :NEW_BEM_ID, CRD_ID = :NEW_CRD_ID, GRP_ID = :NEW_GRP_' +
        'ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE ITM_ID = :OLD_ITM_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_ITEM'
      'WHERE ITM_ID = :OLD_ITM_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ITM_ID, ITM_TIPO, ITM_AREA_FINANCIADA, ITM_QTDE_SOLICITAD' +
        'A, '
      '  ITM_QTDE_LIBERADA, ITM_VALOR_UNITARIO, ITM_VALOR_ELABORADO, '
      '  ITM_VALOR_LIBERADO, PRD_ID, UNI_ID, VAR_ID, RAC_ID, BEM_ID, '
      '  CRD_ID, GRP_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CRD_ITEM'
      'WHERE ITM_ID = :ITM_ID')
    Left = 472
    Top = 312
  end
  object QryVisita: TFDQuery
    BeforePost = QryVisitaBeforePost
    AfterPost = QryVisitaAfterPost
    OnNewRecord = QryVisitaNewRecord
    MasterSource = DtSrcPrincipal
    MasterFields = 'CRD_ID'
    DetailFields = 'CRD_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtVisita
    SQL.Strings = (
      'select'
      '  a.reg_id,'
      '  a.reg_data_visita,  '
      '  a.reg_observacao, '
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.fun_id_visita, '
      '  a.fun_id_registro, '
      '  a.crd_id,'
      '  b.fun_nome as reg_tecnico_visita,'
      '  c.fun_nome as reg_tecnico_registro'
      'from'
      
        '  tab_crd_visita a left join tab_pes_funcionario b on (a.fun_id_' +
        'visita = b.fun_id) left join'
      '  tab_pes_funcionario c on (a.fun_id_registro = c.fun_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.crd_id = :crd_id)'
      'order by'
      '  a.reg_data_visita desc')
    Left = 440
    Top = 248
    ParamData = <
      item
        Name = 'CRD_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryVisitaREG_ID: TLargeintField
      FieldName = 'REG_ID'
      Origin = 'REG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryVisitaREG_DATA_VISITA: TDateField
      DisplayLabel = 'Data da visita'
      FieldName = 'REG_DATA_VISITA'
      Origin = 'REG_DATA_VISITA'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryVisitaREG_OBSERVACAO: TMemoField
      DisplayLabel = 'Resumo sobre a visita'
      FieldName = 'REG_OBSERVACAO'
      Origin = 'REG_OBSERVACAO'
      BlobType = ftMemo
    end
    object QryVisitaREG_EXCLUIDO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryVisitaFUN_ID_VISITA: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'T'#233'cnico da visita'
      FieldName = 'FUN_ID_VISITA'
      Origin = 'FUN_ID_VISITA'
      Required = True
    end
    object QryVisitaFUN_ID_REGISTRO: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'T'#233'cnico que registrou'
      FieldName = 'FUN_ID_REGISTRO'
      Origin = 'FUN_ID_REGISTRO'
    end
    object QryVisitaCRD_ID: TLargeintField
      FieldName = 'CRD_ID'
      Origin = 'CRD_ID'
    end
    object QryVisitaREG_TECNICO_VISITA: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'T'#233'cnico da visita'
      FieldName = 'REG_TECNICO_VISITA'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
    object QryVisitaREG_TECNICO_REGISTRO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'T'#233'cnico que registrou:'
      FieldName = 'REG_TECNICO_REGISTRO'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      Size = 100
    end
    object QryVisitaREG_REPLICADO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryVisitaREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryVisitaREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtVisita: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_VISITA'
      '(REG_ID, REG_DATA_VISITA, REG_OBSERVACAO, FUN_ID_VISITA, '
      '  FUN_ID_REGISTRO, CRD_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_REG_ID, :NEW_REG_DATA_VISITA, :NEW_REG_OBSERVACAO, ' +
        ':NEW_FUN_ID_VISITA, '
      
        '  :NEW_FUN_ID_REGISTRO, :NEW_CRD_ID, :NEW_REG_EXCLUIDO, :NEW_REG' +
        '_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_VISITA'
      
        'SET REG_ID = :NEW_REG_ID, REG_DATA_VISITA = :NEW_REG_DATA_VISITA' +
        ', '
      
        '  REG_OBSERVACAO = :NEW_REG_OBSERVACAO, FUN_ID_VISITA = :NEW_FUN' +
        '_ID_VISITA, '
      '  FUN_ID_REGISTRO = :NEW_FUN_ID_REGISTRO, CRD_ID = :NEW_CRD_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE REG_ID = :OLD_REG_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_VISITA'
      'WHERE REG_ID = :OLD_REG_ID')
    FetchRowSQL.Strings = (
      
        'SELECT REG_ID, REG_DATA_VISITA, REG_OBSERVACAO, FUN_ID_VISITA, F' +
        'UN_ID_REGISTRO, '
      
        '  CRD_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_CRD_VISITA'
      'WHERE REG_ID = :REG_ID')
    Left = 472
    Top = 248
  end
  object QryProponente: TFDQuery
    BeforePost = QryProponenteBeforePost
    AfterPost = QryProponenteAfterPost
    OnNewRecord = QryProponenteNewRecord
    MasterSource = DtSrcPrincipal
    MasterFields = 'CRD_ID'
    DetailFields = 'CRD_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtProponente
    SQL.Strings = (
      'select'
      '  a.pro_id, '
      '  a.pro_tipo, '
      '  a.pro_documento, '
      '  case a.pro_tipo'
      '    when '#39'F'#39' then b.ben_nome'
      '    when '#39'J'#39' then c.org_nome'
      '  end as pro_nome,'
      '  a.pro_dap, '
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.crd_id, '
      '  a.cls_id'
      'from'
      
        '  tab_crd_proponente a left join tab_cad_beneficiario b on (a.pr' +
        'o_documento = b.ben_cpf) left join'
      '  tab_cad_organizacao c on (a.pro_documento = c.org_cnpj)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.crd_id = :crd_id)'
      'order by'
      '  pro_nome')
    Left = 440
    Top = 280
    ParamData = <
      item
        Name = 'CRD_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryProponentePRO_ID: TLargeintField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProponentePRO_TIPO: TStringField
      DisplayLabel = 'Tipo pessoa'
      FieldName = 'PRO_TIPO'
      Origin = 'PRO_TIPO'
      FixedChar = True
      Size = 1
    end
    object QryProponentePRO_DOCUMENTO: TStringField
      DisplayLabel = 'Tipo pessoa'
      FieldName = 'PRO_DOCUMENTO'
      Origin = 'PRO_DOCUMENTO'
      Size = 14
    end
    object QryProponentePRO_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'PRO_NOME'
      Origin = 'PRO_NOME'
      ProviderFlags = []
      Size = 150
    end
    object QryProponentePRO_DAP: TStringField
      DisplayLabel = 'DAP'
      FieldName = 'PRO_DAP'
      Origin = 'PRO_DAP'
      Size = 150
    end
    object QryProponenteREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryProponenteREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryProponenteREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryProponenteREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryProponenteCRD_ID: TLargeintField
      FieldName = 'CRD_ID'
      Origin = 'CRD_ID'
      Required = True
    end
    object QryProponenteCLS_ID: TIntegerField
      FieldName = 'CLS_ID'
      Origin = 'CLS_ID'
    end
  end
  object UpdtProponente: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CRD_PROPONENTE'
      '(PRO_ID, PRO_TIPO, PRO_DOCUMENTO, PRO_DAP, '
      '  CRD_ID, CLS_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PRO_ID, :NEW_PRO_TIPO, :NEW_PRO_DOCUMENTO, :NEW_PRO' +
        '_DAP, '
      
        '  :NEW_CRD_ID, :NEW_CLS_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLICAD' +
        'O, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CRD_PROPONENTE'
      
        'SET PRO_ID = :NEW_PRO_ID, PRO_TIPO = :NEW_PRO_TIPO, PRO_DOCUMENT' +
        'O = :NEW_PRO_DOCUMENTO, '
      
        '  PRO_DAP = :NEW_PRO_DAP, CRD_ID = :NEW_CRD_ID, CLS_ID = :NEW_CL' +
        'S_ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PRO_ID = :OLD_PRO_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CRD_PROPONENTE'
      'WHERE PRO_ID = :OLD_PRO_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRO_ID, PRO_TIPO, PRO_DOCUMENTO, PRO_DAP, CRD_ID, CLS_ID,' +
        ' REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CRD_PROPONENTE'
      'WHERE PRO_ID = :PRO_ID')
    Left = 472
    Top = 280
  end
  object QryDAP: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select first 1 dap from ('
      '  select'
      '    a.bdp_dap as dap'
      '  from tab_cad_beneficiario_dap a'
      '  where'
      
        '    (a.ben_id = (select b.ben_id from tab_cad_beneficiario b whe' +
        're b.ben_cpf = :cpf)) and'
      '    (a.bdp_validade >= current_date) and'
      '    (a.reg_excluido = 0)'
      '  order by'
      '    a.bdp_emissao desc'
      '  )')
    Left = 536
    Top = 280
    ParamData = <
      item
        Name = 'CPF'
        DataType = ftString
        ParamType = ptInput
        Size = 11
      end>
    object QryDAPDAP: TStringField
      FieldName = 'DAP'
      Origin = 'BDP_DAP'
      Size = 150
    end
  end
  object QryNome: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      
        'select a.ben_nome as nome from tab_cad_beneficiario a where a.be' +
        'n_cpf = :documento;')
    Left = 568
    Top = 280
    ParamData = <
      item
        Name = 'DOCUMENTO'
        DataType = ftString
        ParamType = ptInput
        Size = 11
      end>
    object QryNomeNOME: TStringField
      FieldName = 'NOME'
      Origin = 'BEN_NOME'
      Size = 150
    end
  end
end
