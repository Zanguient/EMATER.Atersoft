inherited FrmRelatorioBeneficiarioCadastro: TFrmRelatorioBeneficiarioCadastro
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      ExplicitLeft = 0
      ExplicitTop = 24
      ExplicitWidth = 561
      ExplicitHeight = 361
      inherited LblTitulo: TLabel
        Caption = ' Prontu'#225'rio do benefici'#225'rio de ATER'
      end
      inherited GrpBxFiltro: TcxGroupBox
        object LblBeneficiario: TLabel
          Left = 8
          Top = 24
          Width = 338
          Height = 26
          AutoSize = False
          Caption = 
            'Para imprimir o prontu'#225'rio, selecione um benefici'#225'rio atrav'#233's do' +
            ' bot'#227'o "Pesquisar cadastro" ou informe o seu CPF e pressione a t' +
            'ecla "Enter".'
          FocusControl = EdtNome
          WordWrap = True
        end
        object Label1: TLabel
          Left = 8
          Top = 120
          Width = 23
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'CPF:'
          Transparent = True
        end
        object Label2: TLabel
          Left = 112
          Top = 120
          Width = 31
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Nome:'
          Transparent = True
        end
        object BtnPesquisar: TcxButton
          Tag = 1
          Left = 8
          Top = 72
          Width = 142
          Height = 25
          Hint = 'Cadastrar nova organiza'#231#227'o'
          Caption = '&Pesquisar cadastro...'
          Description = 'Acessa o cadastro de organiza'#231#245'es e cria um novo registro.'
          OptionsImage.ImageIndex = 99
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = BtnPesquisarClick
        end
        object EdtNome: TcxTextEdit
          Left = 112
          Top = 136
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 257
        end
        object EdtCPF: TcxMaskEdit
          Left = 8
          Top = 136
          Anchors = [akTop, akRight]
          Properties.AlwaysShowBlanksAndLiterals = True
          Properties.EditMask = '999.999.999-99;0; '
          TabOrder = 1
          Text = '           '
          OnKeyDown = EdtCPFKeyDown
          OnKeyPress = EdtCPFKeyPress
          Width = 97
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        inherited CmbBxCampo: TcxComboBox
          Properties.Items.Strings = (
            '(nenhuma ordena'#231#227'o dispon'#237'vel)')
          Text = '(nenhuma ordena'#231#227'o dispon'#237'vel)'
        end
      end
    end
  end
  inherited BtnLimpar: TcxButton
    OnClick = BtnLimparClick
  end
  inherited FrxPrincipal: TfrxReport
    EngineOptions.PrintIfEmpty = True
    ReportOptions.LastChange = 41954.618195451390000000
    Left = 176
    Top = 72
    Datasets = <
      item
        DataSet = FrxDtStAtividade
        DataSetName = 'DtStAtividade'
      end
      item
        DataSet = FrxDtStBem
        DataSetName = 'DtStBem'
      end
      item
        DataSet = FrxDtStComercializacao
        DataSetName = 'DtStComercializacao'
      end
      item
        DataSet = FrxDtStComunidade
        DataSetName = 'DtStComunidade'
      end
      item
        DataSet = FrxDtStDAP
        DataSetName = 'DtStDAP'
      end
      item
        DataSet = FrxDtStFamilia
        DataSetName = 'DtStFamilia'
      end
      item
        DataSet = FrxDtStFater
        DataSetName = 'DtStFater'
      end
      item
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
      end
      item
        DataSet = FrxDtStProducaoFamiliar
        DataSetName = 'DtStProducaoFamiliar'
      end
      item
        DataSet = FrxDtStSemovente
        DataSetName = 'DtStSemovente'
      end
      item
        DataSet = FrxDtStTecnico
        DataSetName = 'DtStTecnico'
      end>
    Variables = <
      item
        Name = ' Usu'#225'rio'
        Value = Null
      end
      item
        Name = 'unidade'
        Value = #39'Unidade'#39
      end
      item
        Name = 'usuario'
        Value = #39'Usu'#225'rio'#39
      end
      item
        Name = 'titulo'
        Value = #39'T'#237'tulo'#39
      end>
    Style = <>
    inherited Page1: TfrxReportPage
      PrintIfEmpty = False
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
        Top = 925.984850000000000000
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
        inherited MemoTitulo: TfrxMemoView
          DisplayFormat.DecimalSeparator = ''
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Prontu'#225'rio do benefici'#225'rio de ATER')
        end
      end
      object MasterData: TfrxMasterData
        Height = 438.425480000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStPrincipal
        DataSetName = 'DtStPrincipal'
        PrintIfDetailEmpty = True
        RowCount = 0
        object DtStPrincipalBEN_NOME: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataField = 'BEN_NOME'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Informa'#231#245'es principais do cadastro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Top = 49.133890000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object DtStPrincipalBEN_CPF: TfrxMemoView
          Top = 60.472480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FormatMaskText('#39'999.999.999-99;0; '#39',<DtStPrincipal."BEN_CPF">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo4: TfrxMemoView
          Left = 105.826840000000000000
          Top = 49.133890000000000000
          Width = 177.637910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Apelido')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 105.826840000000000000
          Top = 60.472480000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_APELIDO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_APELIDO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Left = 283.464750000000000000
          Top = 49.133890000000000000
          Width = 75.590600000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sexo')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 283.464750000000000000
          Top = 60.472480000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_SEXO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_SEXO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo8: TfrxMemoView
          Left = 359.055350000000000000
          Top = 49.133890000000000000
          Width = 79.370130000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Estado civil')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 359.055350000000000000
          Top = 60.472480000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_ESTADO_CIVIL'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_ESTADO_CIVIL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo10: TfrxMemoView
          Left = 438.425480000000000000
          Top = 49.133890000000000000
          Width = 120.944960000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nacionalidade')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 438.425480000000000000
          Top = 60.472480000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_NACIONALIDADE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_NACIONALIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo12: TfrxMemoView
          Left = 559.370440000000000000
          Top = 49.133890000000000000
          Width = 158.740260000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Naturalidade')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 559.370440000000000000
          Top = 60.472480000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_NATURALIDADE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_NATURALIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo14: TfrxMemoView
          Top = 79.370130000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Data de nascimento')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_NASCIMENTO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_NASCIMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo16: TfrxMemoView
          Left = 105.826840000000000000
          Top = 79.370130000000000000
          Width = 177.637910000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Escolaridade')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 105.826840000000000000
          Top = 90.708720000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_ESCOLARIDADE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_ESCOLARIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo18: TfrxMemoView
          Left = 283.464750000000000000
          Top = 79.370130000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RG (n'#250'mero)')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 283.464750000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_RG_NUMERO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_RG_NUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Left = 389.291590000000000000
          Top = 79.370130000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RG ('#243'rg'#227'o emissor)')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 389.291590000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_RG_ORGAO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_RG_ORGAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo22: TfrxMemoView
          Left = 495.118430000000000000
          Top = 79.370130000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'RG (data de emiss'#227'o)')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 495.118430000000000000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_RG_DATA'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_RG_DATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo24: TfrxMemoView
          Left = 600.945270000000000000
          Top = 79.370130000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Membros na fam'#237'lia')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 600.945270000000000000
          Top = 90.708720000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_MEMBROS'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_MEMBROS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo26: TfrxMemoView
          Top = 109.606370000000000000
          Width = 646.299630000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nome da m'#227'e')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Top = 120.944960000000000000
          Width = 646.299630000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_NOME_MAE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_NOME_MAE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Top = 139.842610000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Endere'#231'o e contato')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 158.740260000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 170.078850000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[FormatMaskText('#39'99.999-999;0; '#39',<DtStPrincipal."BEN_CEP">)]')
          ParentFont = False
          WordWrap = False
        end
        object Memo31: TfrxMemoView
          Left = 105.826840000000000000
          Top = 158.740260000000000000
          Width = 540.472790000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 105.826840000000000000
          Top = 170.078850000000000000
          Width = 540.472790000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_ENDERECO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_ENDERECO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo33: TfrxMemoView
          Left = 646.299630000000000000
          Top = 158.740260000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Left = 646.299630000000000000
          Top = 170.078850000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_NUMERO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_NUMERO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Top = 188.976500000000000000
          Width = 514.016080000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 200.315090000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_COMPLEMENTO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_COMPLEMENTO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo37: TfrxMemoView
          Left = 514.016080000000000000
          Top = 188.976500000000000000
          Width = 204.094620000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 514.016080000000000000
          Top = 200.315090000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_BAIRRO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_BAIRRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo39: TfrxMemoView
          Top = 219.212740000000000000
          Width = 241.889920000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Munic'#237'pio')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Top = 230.551330000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_CIDADE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_CIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo41: TfrxMemoView
          Left = 241.889920000000000000
          Top = 219.212740000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Left = 241.889920000000000000
          Top = 230.551330000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_ESTADO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_ESTADO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo43: TfrxMemoView
          Left = 283.464750000000000000
          Top = 219.212740000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 283.464750000000000000
          Top = 230.551330000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_TELEFONE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_TELEFONE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo45: TfrxMemoView
          Left = 385.512060000000000000
          Top = 219.212740000000000000
          Width = 102.047310000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Celular')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 385.512060000000000000
          Top = 230.551330000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_CELULAR'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_CELULAR"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo47: TfrxMemoView
          Left = 487.559370000000000000
          Top = 219.212740000000000000
          Width = 230.551330000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'E-mail')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 487.559370000000000000
          Top = 230.551330000000000000
          Width = 230.551330000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_EMAIL'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_EMAIL"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo49: TfrxMemoView
          Top = 249.448980000000000000
          Width = 359.055350000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Comunidade')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Top = 260.787570000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_COMUNIDADE'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_COMUNIDADE"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo51: TfrxMemoView
          Left = 359.055350000000000000
          Top = 249.448980000000000000
          Width = 359.055350000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Organiza'#231#227'o social')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          Left = 359.055350000000000000
          Top = 260.787570000000000000
          Width = 359.055350000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_ORGANIZACAO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_ORGANIZACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo53: TfrxMemoView
          Left = 646.299630000000000000
          Top = 109.606370000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Ribeirinho?')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          Left = 646.299630000000000000
          Top = 120.944960000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_RIBEIRINHO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_RIBEIRINHO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo55: TfrxMemoView
          Top = 279.685220000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Informa'#231#245'es do registro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          Top = 298.582870000000000000
          Width = 427.086890000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#233'cnico respons'#225'vel')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          Top = 309.921460000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_TECNICO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_TECNICO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo58: TfrxMemoView
          Left = 427.086890000000000000
          Top = 298.582870000000000000
          Width = 291.023810000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Escrit'#243'rio')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          Left = 427.086890000000000000
          Top = 309.921460000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_ESCRITORIO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_ESCRITORIO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo60: TfrxMemoView
          Top = 328.819110000000000000
          Width = 309.921460000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Motivo do cadastro')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          Top = 340.157700000000000000
          Width = 309.921460000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_MOTIVO_CADASTRO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_MOTIVO_CADASTRO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          Left = 309.921460000000000000
          Top = 328.819110000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Data do cadastro')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Left = 309.921460000000000000
          Top = 340.157700000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_DATA'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_DATA"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo64: TfrxMemoView
          Left = 393.071120000000000000
          Top = 328.819110000000000000
          Width = 325.039580000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Situa'#231#227'o do cadastro')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 393.071120000000000000
          Top = 340.157700000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_SITUACAO'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_SITUACAO"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo66: TfrxMemoView
          Top = 377.953000000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Categorias')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Top = 389.291590000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_CATEGORIAS'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_CATEGORIAS"]')
          ParentFont = False
          WordWrap = False
        end
        object Memo68: TfrxMemoView
          Top = 359.055350000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Categorias e atividades produtivas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Top = 408.189240000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Atividades produtivas')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          Top = 419.527830000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEN_ATIVIDADES'
          DataSet = FrxDtStPrincipal
          DataSetName = 'DtStPrincipal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStPrincipal."BEN_ATIVIDADES"]')
          ParentFont = False
          WordWrap = False
        end
      end
      object HeaderDAP: TfrxHeader
        Height = 45.354360000000000000
        Top = 661.417750000000000000
        Width = 718.110700000000000000
        object Memo69: TfrxMemoView
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#250'mero de identifica'#231#227'o social (NIS)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'NIS/DAP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 226.771800000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tipo de DAP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 343.937230000000000000
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#250'mero da DAP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 461.102660000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Data de emiss'#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          Left = 536.693260000000000000
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Data de validade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 612.283860000000000000
          Top = 18.897650000000000000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Origem da DAP')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderFamilia: TfrxHeader
        Height = 37.795300000000000000
        Top = 786.142240000000000000
        Width = 718.110700000000000000
        object Memo81: TfrxMemoView
          Top = 18.897650000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Parentesco')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 117.165430000000000000
          Top = 18.897650000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          Left = 623.622450000000000000
          Top = 18.897650000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Data de nascimento')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Integrantes familiar')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailDataDAP: TfrxDetailData
        Height = 34.015748030000000000
        Top = 729.449290000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStDAP
        DataSetName = 'DtStDAP'
        KeepHeader = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object DtStDAPBDP_NIS: TfrxMemoView
          Top = -0.000000000000000056
          Width = 117.165430000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'BDP_NIS'
          DataSet = FrxDtStDAP
          DataSetName = 'DtStDAP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStDAP."BDP_NIS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStDAPBDP_TIPO: TfrxMemoView
          Left = 117.165430000000000000
          Top = -0.000000000000000056
          Width = 226.771800000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'BDP_TIPO'
          DataSet = FrxDtStDAP
          DataSetName = 'DtStDAP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStDAP."BDP_TIPO"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 343.937230000000000000
          Top = -0.000000000000000056
          Width = 117.165430000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'BDP_DAP'
          DataSet = FrxDtStDAP
          DataSetName = 'DtStDAP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStDAP."BDP_DAP"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStDAPBDP_EMISSAO: TfrxMemoView
          Left = 461.102660000000000000
          Top = -0.000000000000000056
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'BDP_EMISSAO'
          DataSet = FrxDtStDAP
          DataSetName = 'DtStDAP'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStDAP."BDP_EMISSAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          Left = 536.693260000000000000
          Top = -0.000000000000000056
          Width = 75.590600000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'BDP_VALIDADE'
          DataSet = FrxDtStDAP
          DataSetName = 'DtStDAP'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStDAP."BDP_VALIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          Left = 612.283860000000000000
          Top = -0.000000000000000056
          Width = 105.826840000000000000
          Height = 34.015770000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'BDP_ORIGEM'
          DataSet = FrxDtStDAP
          DataSetName = 'DtStDAP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStDAP."BDP_ORIGEM"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailDataFamilia: TfrxDetailData
        Height = 18.897650000000000000
        Top = 846.614720000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStFamilia
        DataSetName = 'DtStFamilia'
        KeepHeader = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object DtStFamiliaFAM_PARENTESCO: TfrxMemoView
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAM_PARENTESCO'
          DataSet = FrxDtStFamilia
          DataSetName = 'DtStFamilia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFamilia."FAM_PARENTESCO"]')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          Left = 117.165430000000000000
          Width = 506.457020000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAM_NOME'
          DataSet = FrxDtStFamilia
          DataSetName = 'DtStFamilia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFamilia."FAM_NOME"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAM_NASCIMENTO'
          DataSet = FrxDtStFamilia
          DataSetName = 'DtStFamilia'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStFamilia."FAM_NASCIMENTO"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      object PageHeaderUnidade: TfrxPageHeader
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Picture1: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
          ShowHint = False
          Center = True
          DataSetName = 'Empresa'
          Picture.Data = {
            0A544A504547496D616765703A0000FFD8FFE000104A46494600010101004800
            480000FFE110E84578696600004D4D002A000000080004013B00020000000A00
            00084A8769000400000001000008549C9D000100000014000010CCEA1C000700
            00080C0000003E000000001CEA00000008000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000043726973746F76616D
            0000059003000200000014000010A29004000200000014000010B69291000200
            00000334370000929200020000000334370000EA1C00070000080C0000089600
            0000001CEA000000080000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000323031343A30353A30322030363A33353A
            323900323031343A30353A30322030363A33353A323900000043007200690073
            0074006F00760061006D000000FFE10B1C687474703A2F2F6E732E61646F6265
            2E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D27EF
            BBBF272069643D2757354D304D7043656869487A7265537A4E54637A6B633964
            273F3E0D0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E
            733A6D6574612F223E3C7264663A52444620786D6C6E733A7264663D22687474
            703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D7379
            6E7461782D6E7323223E3C7264663A4465736372697074696F6E207264663A61
            626F75743D22757569643A66616635626464352D626133642D313164612D6164
            33312D6433336437353138326631622220786D6C6E733A786D703D2268747470
            3A2F2F6E732E61646F62652E636F6D2F7861702F312E302F223E3C786D703A43
            7265617465446174653E323031342D30352D30325430363A33353A32392E3437
            303C2F786D703A437265617465446174653E3C2F7264663A4465736372697074
            696F6E3E3C7264663A4465736372697074696F6E207264663A61626F75743D22
            757569643A66616635626464352D626133642D313164612D616433312D643333
            6437353138326631622220786D6C6E733A64633D22687474703A2F2F7075726C
            2E6F72672F64632F656C656D656E74732F312E312F222F3E3C7264663A446573
            6372697074696F6E207264663A61626F75743D22757569643A66616635626464
            352D626133642D313164612D616433312D643333643735313832663162222078
            6D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F64632F656C656D
            656E74732F312E312F223E3C64633A63726561746F723E3C7264663A53657120
            786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939
            392F30322F32322D7264662D73796E7461782D6E7323223E3C7264663A6C693E
            43726973746F76616D3C2F7264663A6C693E3C2F7264663A5365713E0D0A0909
            093C2F64633A63726561746F723E3C2F7264663A4465736372697074696F6E3E
            3C2F7264663A5244463E3C2F783A786D706D6574613E0D0A2020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020200A202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            200A202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020200A20202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020200A2020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020200A202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020200A20202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020200A2020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020202020202020202020200A
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020200A202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020200A20202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020200A2020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020200A202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020200A20202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020202020202020202020202020200A2020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20200A2020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020200A202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020200A20202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            20202020202020202020202020202020200A2020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            202020202020202020202020202020202020202020200A202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020200A20202020
            2020202020202020202020202020202020202020202020203C3F787061636B65
            7420656E643D2777273F3EFFDB00430003020203020203030303040303040508
            05050404050A070706080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B10161011
            13141515150C0F171816141812141514FFDB0043010304040504050905050914
            0D0B0D1414141414141414141414141414141414141414141414141414141414
            141414141414141414141414141414141414141414FFC000110800A800A80301
            2200021101031101FFC4001F0000010501010101010100000000000000000102
            030405060708090A0BFFC400B5100002010303020403050504040000017D0102
            0300041105122131410613516107227114328191A1082342B1C11552D1F02433
            627282090A161718191A25262728292A3435363738393A434445464748494A53
            5455565758595A636465666768696A737475767778797A838485868788898A92
            939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7
            C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FA
            FFC4001F0100030101010101010101010000000000000102030405060708090A
            0BFFC400B5110002010204040304070504040001027700010203110405213106
            1241510761711322328108144291A1B1C109233352F0156272D10A162434E125
            F11718191A262728292A35363738393A434445464748494A535455565758595A
            636465666768696A737475767778797A82838485868788898A92939495969798
            999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4
            D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002
            110311003F00FD53A28A2800A28A2800A28A2800A4CD04D309C7D2810E073485
            F03A8AE3BE237C5DF0AFC29D30DE788F5682C4104C706ECCD291D913A9AF8E3E
            27FEDFBAFEB32CD6BE0BD3A3D1AD3A2DF5E8124EC3D42745FC735CF52BC292F7
            99E0E619DE0B2D4D569FBDD96E7DDDA96AF67A35AB5CDFDDC1676E832F34F204
            45FA935E21E31FDB5BE1B784AF56CE2BEB9F10DC96D85345844C01CE3EF33283
            F8135F9DBE2DF887E26F1DDD1B8F106B97DAAC99C813CA4A0F603A0F4E057D73
            FB1E7ECB66DFEC9E3BF1759FEF4E24D334F987DC1DA675F53D81E9D6B923899D
            69F2D3565DD9F2D87E23C5E6D88587C052B47AC9EB647D7DE19D79FC47A1D9EA
            4FA7DDE97F698C482D2FD55268C1E8182B3007DB35AD9EB4D08000076A71AF49
            1FA2C534926F5168A28A6585145140051451400514514005145140051451400D
            56CF7CD2E734D039EC3DAA1B9BC86CA0927B8952186352CEF23602A81C926876
            5A92DD95D924920452CC554019249E82BE4AFDA1FF006D9B4F0B4D75E1FF0002
            B45A96AA998E6D54E1A0B73DC27F7DBDFEE8F7AF37FDA8FF006BC9FC6335DF85
            3C1972F6BA1A931DD6A3112AF778FBCA87B27BF535F28E7D8579388C5DBDDA47
            E579F714B8B786C0BF597F97F99A5E21F12EABE2CD567D4F59D42E352BF98EE7
            9EE1CB31FF0001EDD2B380DC70064E7B76FF003ED4004E000493E95F687EC9DF
            B26965B5F1B78CED30C009B4DD2E65E9DD66907AF70BF89AF3A9D295691F9FE0
            32FC4E6D5F92177DDBE9EA709FB1DFC1DF0CF8C3C43FDBFE27D534F64B09B6DA
            E8B2CEA2592507EFBA139DA33C0EE6BF44E1D815563C6D03803A015F9A3F09FE
            0745F1B7C53F11EC62BA6B1D5AC2469EC270DF207F3586D61E8C00FA571AFE39
            F89BF05BC4171A2B6BBABE8B7D68C43DABCECD19F4215B2A54FAE3FC2BBE956F
            ABC1271D3B9F7395E6AB23C2C7DA61DF2C9BF7975B6F7EDE87EB29231480935F
            9F5F0F7F6FCF15E8B2C7078AB4FB7D7ED33F34F6E04338FC07CA7F215F5EFC2D
            FDA0BC17F16ED54E89AAA0BD0017B0B9FDDCE9FF00013D47B8C8AF429E229D5D
            99F7580CFB019834A94ED2ECF43D2B271484E3BD343E7D08FAD2E7D3835D1E67
            D15C7D145140C28A28A0028A28A0028A28A0028A29334011C922C68CCECA8AA3
            2589C015F9EFFB5AFED47378EB50BAF08F85AE9A1F0EDBB18AEAEA26C1BC7070
            541FF9E63FF1EAF52FDB77F6837F0CE967C09A0DC94D52FA3CEA33C4DCC101FF
            009660F666FCC0FAD7C163A63B0E95E462F116FDDC19F9371567CEEF03867B7C
            4D7E5FE627A63B52E338E3AF4C5203CE00CE7F1AFB57F64AFD92F9B3F1B78D6C
            F9E26D3F4A993A7F765907AFA2FE26BCEA54A55A5647C0E599657CD2BAA34D7A
            BEC867EC99FB266F6B3F1A78D6CCE789B4ED2A65E9FDD9641FC97F135F6C3461
            622A06001C014E5450B81C0F6E29653F237AE2BE8A95254972A3F7FCBB2DA195
            E1FD9525EAFAB3E2CFD88E2D9F18BE2767B4A7FF0047357B8FED0DFB3C691F1C
            340F9952CBC416AA7EC7A884E41FEE3FF794FF00F5C62BC67F62D8767C60F8A8
            7A95B923FF0022BD7D91B4673EB5CF422A74795F99E3E4F84A38ACB1D1AD1BA6
            E5F9B3F1BBC67E0CD63C01E23BBD0F5CB392CAFED9B6B230E1876753D194F63F
            FEAAC8B4BCB8D3EEA3B9B59E5B6B888EE49A272AEA7D430E47E15FAA3F1F7F67
            FD13E387874C172AB67ADDB29365A92265E26F46F553DC7E5835F997E3DF006B
            5F0D7C4D75A16BD66D697D01C83D5254ECE87BA9FF00EB1C57975F0F2A2EEB63
            F2DCEF23AD93D5E785DD37B3FF0033E82F827FB726BDE0F920D33C6692788349
            FB9F6D403ED510F53DA41F91F7AFBABC15E3CD0FE2168506AFE1FD461D4AC65E
            0491364AB77561D548EE0F35F8E3EC3A5765F0BFE2DF88FE10F8863D53C3F7AD
            09240B8B590E61B841D9D7BFD4608EC456B431928693D51E9E4DC575F08D51C5
            7BF0EFD51FAF993C52E78AF26F811FB43683F1C344F32D1858EB3028FB5E9B2B
            7EF233FDE5FEF293D08FC706BD5C75EB5EDC6519ABC4FD970F89A58AA6AAD195
            E2C7D1451547505145140051451400D0D5C4FC61F89965F09FC01AA7886F482D
            0478821CF32CA78441F53FA66BB53907D2BF3DBF6F0F8AFF00F09478EEDFC216
            52EED3F451BE70A787B861CFFDF2A40FA935CF5EAAA50E63E7B3CCC565983955
            5F13D17AFF005A9F36F893C457DE2DD7EFF59D4E66B8BEBD99A796463C9627B7
            A01D07D0567633FF00D6E69178240193EDCD7DADFB25FEC9241B3F1AF8D6CC6E
            244DA7E9532F4FEECB20F5F45F4E4FA57814A94AB48FC332FCBF119C627920B7
            DDF6F3637F64BFD9332D67E34F1AD99DDC4DA769732F4FEECB20F5F45F4E4D7D
            B0B1855000DA076142C6A0600C0F6E29CD5F434A94692E58A3F7DCB72DA19650
            54692F57D589F5AE33E2AFC56D0BE11F852E35BD72E0471A8DB0C0A7324F2638
            441DC9FD3A9A8BE2D7C5DD07E0F785E7D675A9C700ADBDAA1FDEDC49D9547F33
            DABF30BE2F7C60D77E3378AE5D63599B6C6095B4B28CE63B68C9FBABEA7D4F7A
            C711898D2565B9E2E7D9FD3CAE1ECE9FBD55F4EDE6CF65FD957E3EE89E0DF8B1
            E24B8D713FB3AD7C4D71BD2E0B652DDCB960AE7B03BBAD7E864170B711A491B0
            747019594E4107BE6BF158F3C7E18AFA97F65AFDADE6F00CD6BE15F17DD3DC78
            759825ADF392CD659E8ADEB1FF00E835C585C4A8FB923E4786F892341AC262B4
            4F67D9BEE7E8477EB5E63F1D3E05689F1BBC346C6FD16DF52832D67A8A282F0B
            FF00553DC57A35A5E437F6D15C5B4A93C12286492360CAC0F420F7AB040E98E7
            DEBD7946335CAF547EAB5A852C5D174EA2BC648FC7AF88DF0E35CF85BE29B9D0
            75DB536F7511CA4833B264CF0E87BA9FE7C1C572FD383CFD6BF5A3E34FC14D0B
            E35F85DF4CD522F2AED017B4BF8D7F796EF8EA3D47A8EF5F98FF0014BE16EBBF
            08FC553E89AEDB949012D05C20263B88FB3A9EFF004EA2BC0C461E549DD6C7E1
            79F641572BA8EA5357A4FAF6F26637857C57AAF8275EB4D6745BC92C351B56DF
            1CB19EBEA08EE0F715FA5DFB387ED1BA6FC70F0FF9726CB1F1259A8179639EBF
            F4D133D57F974AFCBACF18ADCF0678D355F87FE26B1D7745B96B6BFB47DCAC39
            0C3BAB0EEA7B8A9A15DD076E8736479DD5CA2B59EB4DEEBF547EC91245058D79
            DFC0FF008C5A67C69F045B6B36244374BFBBBCB327E7B7940E54FA8EE0F715E8
            7D33CD7D1464A49347EFF42BC3134E35693BA7AA1F4514533A0CFBDD72CB4FBB
            B4B5B9BA860B8BB6296F1C8E034A40C90A3BF157439F6C76AF96FF006F8D12F8
            7813C3FE29D3E796DAEF42D4032CD0B1568FCCC00C0FB32A7E756FF65AFDAB6D
            BE26DAC1E1BF134B1DAF8AA25C4729C2A5EA81F797D1FD57F115CFED92A9ECE4
            7CFF00F6C52A58F9606BFBAF4717DEE7BC7C40F1641E07F05EB5AF5C9022B0B5
            92720F72A381F89C0FC6BF2075AD5EEBC43AD5F6A97AE65BCBD9DE795CF24B31
            C9AFD05FDBDBC5CFA2FC1E834989B126B37D1C2C14FDE8D32EC3F30A31EF5C1F
            EC97FB25797F62F1AF8D6CFE7E25D3B4A9D7EEFF00765907AFA2FA727D2B8F11
            1956A8A9AD91F1FC4387C467398D3C0D05EEC55DBE8AFF00F006FEC97FB26E24
            B4F1A78D6CB2C31369DA5CCBF77FBB2C83D7D17F3CD7DAEA811400001ED4A881
            5401C0A535DD4A94692E589F7396E5B432BA0A8D15EAFAB038AE07E307C64D0B
            E0CF85A6D5F589434AD94B5B3461E65C49D9547F33D85778C4ED20637638CD7C
            95F153F638F177C5DF155C6B9ADF8EEDE49189582DD6CDBCAB78FF0085106EE3
            DCF53DF3455738C7DC572733AD8AA541FD4E9F34DFE07C79F163E2C6BBF187C5
            536B5ADCD90495B7B443FBBB64EC8BFD4F7AE2F3D7A935F62B7FC139B551F77C
            636BFF008067FF008AAE1FE307EC69A97C20F025F789EE7C476DA84568D129B7
            8E064662EE13824F6DC0D7853A355DE7247E278CC8F357CF89C441BEAD9F3966
            971EFEFD69D0A6F95138F9C81F99AFADEC7FE09E3AD5ED9C170BE30B25595038
            CDABF7008EF594294EAFC3D0F27039662F30E6FAB439AC72DFB2FF00ED5B79F0
            AEEA0F0EF892592EFC2B23058E56F99EC49EE3B94F51DBB57E88E95ABD9EB761
            05F58DC477569708248A689B72B83D0835F0E9FF0082736B98FF0091C2C8FBFD
            91BFC6BDD7F677F823E34F826D269D7BE2AB5D6BC36E0B2D9185C3C0FEB1B13D
            0F71F962BD8C3BAD0F72A23F5CE1FF00ED5C25B0D8CA4DC3A3EDFF0000F78239
            F6AE13E2F7C1ED0BE32785A6D2359872D82F6F7683F7B6F276653FCC743E95DF
            5348C1AEE94549599F715A8D3C441D3AAAE99F913F173E116BBF06FC57368DAD
            424A925AD6F114F97731F665F7F51DBF5AE1F1919AFD7AF8ABF0AB42F8BDE16B
            8D135CB6591082D0DC281E6DBC9D9D4F6FE47BD7E627C66F82FAEFC15F14C9A5
            6AF1192D6424D9DFC6BFBBB94CF51E84775FFF005D78388C3CA97BCBE13F0BCF
            F87AA659375A8EB49FE1E4FF00CCD3FD9DFE355DFC13F1FDBEA1B9E4D16E8883
            51B61D1A3CFDF03FBC879FA6477AFD50D2B55B6D6B4CB6BFB3992E2D2E635962
            96339575232083F435F8BA7A0AFB97F60AF8CEDA869F73F0FF00549CB4D68A6E
            34C690F58B3F3C63FDD2723D89F4ADB075ECFD9B3D8E11CDDD2A9F50ACFDD97C
            3EBDBE67D97451457B47EC6719F17BC109F117E1BF883C3F2005AF6D5D6227F8
            641F321FC180AFC8D65BCD07552034969A8594C4064255E37438C83D8839AFDA
            2619047AD7E6C7EDB1F0BBFE103F8AD26B16D0ECD2F5F06E54A8E1671FEB17EA
            490DF8D7978DA774AA2E87E67C658172A70C6D3DE1A3F47B7E27A67C06F8B5E1
            FF008FBE23F0B69FF1164597C45A0073A72CD8105FC8DB70EE0F06450A303B9E
            719E2BED9555070BC003A0AFC58B7B996D2E239E191A19A260F1C91B15646072
            0823A1AFBF7F653FDACA2F1CC56FE13F175C243E2241B2D6F64385BD1D813DA4
            F6EFDB1D29617109FBB3DCC38673FA751FD5B17A4DED2EF6EE7D5B8E7AD00537
            7E403C107BD3BD6BD63F51131C9E6906077C914EED5F2BFC61FDB0BC41F073C6
            773A1EA9E06578F25ED2ED6FF6C77317665FDDF5F51D8F1EE729D454D5E47063
            71D43010F6B5DD96D73EA73CE47A5784FEDB031FB3CF883FEBADB7FE8E4AF17F
            F878E5CFFD0909FF00830FFED75C37C67FDB366F8C3E00D43C2EFE174D305DB4
            6DF6917BE614D8E1BEEEC1D703BD71D5C4539536933E4B31E23CB71182AB4A9D
            4BB716B6EE8F9BAD3FE3F20FFAE8BFCC57ECCF87C0FEC3D3FF00EBDE3FFD0457
            E324327972A498FB8C1B1F4AFB234CFF00828849636305B9F056F1122C6586A0
            39C0C67EE571612AC297373BDCF8FE14CCF0B973AAF132B5ED6F95CFB8E9B806
            BE2B4FF828DA1386F04C99CE30B7E33FFA057AFF00C08FDA4357F8E37D235A78
            2EE34DD1A0CACDA9CD741937E3844017E63EBE9FCFD48622137689FA6E1B3DC0
            632A2A5427793F267BC0A28A5AE93E846115E69F1FF4CF056A9F0EEF61F1C88D
            74B621637E3CE594F09E577DF9E83BF7E2BA5F883F10F46F867E17BBD7B5DBB5
            B5B28071DDE46EC8A3BB1F4FE99AFCFCB8F8A5AE7ED39FB4178520BB5683474D
            450DA69AA7290C4AC1999BD5881D7F2C57257AB18DA3BB7B1F2F9CE69430D158
            5694E75344BD7B9C0FC6BF821ADFC15F11FD8B5046B8D32E3E7B1D455709327A
            1FEEB8EEBF88CD733E00F18DE7C3FF001968FE21B27659EC2E1652071B933F32
            9FAA923F1AFD66F1F7C3CD13E25F85EE340D7AD16EECA64E3B346C3A3A1ECC0F
            435F995F1EBE026B7F03FC466DAF035DE8B3B1FB0EA417E4907F75BD1C0EA3F1
            1C57995F0F2A2F9E3B1F9AE759155CA2AAC5E1BE0BDFCE3FF00FD4DF0F6B7078
            8B42D3F54B560F6D79024F19F5565047F3A2BC33F623F1D8F177C15B3B1964DF
            77A34AF64E09E76E7721FA6D6C7E1457B54E6A71523F63C06256330B4EBAFB49
            7FC13E83E715E47FB4CFC235F8BDF0C6FF004F85036AD69FE9360E4722451F77
            FE04323F115EB9E94D23764629CA0A717166B89A10C551950A9B4958FC579EDE
            4B4B89609E3686689D91E37186565E0823B1CFF2A48A792DE6496291A296360C
            8E870548E8411D0FBD7D8BFB6BFECE4F637971F107C3B6BBAD6521B56B689794
            6FF9EE00EC78DDE9D7D6BE37C639EA2BE6AAD39529B4FF00E1CFE72CCB2FAB95
            62A546A74D9F75DD1F7C7ECA3FB59278BD6DBC23E30B9116B8A025A6A121016E
            C0FE163D9FF9D7D681F23B57E2AC72BC322491B18E442195D0E0A91D083EB5F7
            97ECA1FB5AA78A56D7C1FE32BA11EB2AA12CF5190E16EC7F718F67FE75E9E1B1
            5CDEE4DEA7E8FC37C48AADB078C769747DFD4FAEBF1AE0FE2FFC1FD0BE327856
            6D1F5887E7197B6BB41FBCB7931C329FE63A1AEE849B864608A76DCFAE3AD7A7
            28A92B33F49AB4A9E229BA7555E2CFC8AF8B7F07F5FF00833E289349D6E0CC6C
            49B5BD8C1F2AE53B15F43EABDBF5AE18927BD7EC07C4CF861A0FC58F0BDC689A
            F5A0B8B790131CA389217FEF21EC6BF32BE38FC08D77E07F890D9EA08D75A54E
            49B2D49170932FF74FF75C771F88CD78388C33A57947E13F0DCFF87AA65B375A
            8DE54DFE1E4FFCCF34E9F9503248C1E7FC297B7F9E9DFF002AFA63F660FD92EE
            BE25CF6FE24F14432DA78591B7C36C72AF7A474F4C27BF7ED8EB5CB4E9CAA3B2
            3E6F0180AF98565468C6EFF05EA60FECD9FB2E6A7F196FA2D5756596C3C230B8
            DF3630F7647F047EDEADF966BF47FC39E18D2FC25A2DA693A459C563616C8238
            A18570140FEBEFD6AC697A4DA68D6105958DB456B6702048E18942AA01D00157
            3381CD7D0D1A11A2B4DCFDEB26C9A86514AD0D66F77FE5E42E78AE63E20FC45D
            1BE19786AEF5CD7AE96D6CA01D339691BB2A8EEC7D293E20FC45D13E19785EEF
            5DD76F16D6CE01803AB48DD9107763E9FD335F989F1D3E3A6B5F1BBC4ED7D7CC
            D6BA4C048B2D395B290AFA9C7563DCD457C42A2BCCE6CF73DA59552E586B51EC
            BFCC3E3A7C74D6BE3878A1AF6F59AD74A8188B1D355B290AFF0078F62E7B9FC3
            A715EB9FB00F809B5AF887A9F89A58FF00D1B4983C98D88E0CB271FA283F9D7C
            B20176C28249380A0739FF003C57EA67ECB5F0B8FC2CF847A5D9DC441354BD5F
            B65E71C891C0214FFBA303F0AF370D1956ABED25D0FCEB8728D6CD73478AAEEE
            A3ABF5E88F61C64573FE37F0368DF10BC3777A1EB96697B6172B8647EAA7B329
            EC41E41AE868AF75A4F73F6D9D38D48B84D5D33E55FD9E7E136BFF00B3F7C67D
            6BC3C4497FE13D66D4CF677F8C0578C8F91C766DAE7EB8CFD0AFA94A679F7C8A
            2A214F915A27160F0B4F014FD8D3F86EDAF2BF41FB6803029D45687A256BAB58
            6F6DE58278D66865528F1C832AC08C1041ED5F9C1FB59FECDAFF000935D3AF68
            50337852FE4E100CFD8E527EE13FDD3FC27F0EBC9FD25EF595E28F0B699E33D0
            2F746D5ED92F34FBC8CC534320C820FF0023DC1ED8AE7AF45568DBA9F3D9CE51
            4F36C3B84BE25B3ECCFC68C649CF18F6E684768A45746647460CACA70548E841
            1DEBDBBF687FD9875BF82FA84B7F68926A7E1495BF737A8B96B7FF0062503A7B
            3743EDD2BC43F1CFBFF5FA57CE4A1284AD247F3FE2B095F0359D2ACAD25FD687
            DD5FB287ED6ABAEFD97C1FE33BA54D4F023B1D4A6200B8C74473D9BD0F7AFB08
            3E7A739AFC555728CACA4A3A9DC194E083EB5F727EC9DFB5A8D556CFC17E35BB
            DB7E311586A93B604FE91C87FBDE87BD7AD85C5737B9367E9FC37C49CF6C1E31
            EBF65F7F267D8FB78E49AE6BE217C3FD1BE25785AF743D72D56EAC6E17B81B91
            B1C329ECC3D6BA3F3778CAE08A571846FA57A8D27B9FA655842AD3709ABA68FC
            E9FD97BE04E85E31F8CFE23D2F5D2F7F67E1B9094B7230B72C242AA64F6C0E9D
            EBF44EDAD62B5823821458A28C6D54418000E800F4AF8CFF0063C3FF00190FF1
            4D7B6F90FF00E4C1AFB4475AE3C2452A774BAB3E5B8670F4A8E0DCA11B36DFE6
            04605731F10BE22E8BF0C7C3175AEEBD74B6B656EBD3ABC8DD9107763E949F10
            BE23E89F0C7C3177AE6B976B6D6902F03AB48DD9107763E95F989F1CFE3A6B7F
            1BFC4ED7D7CED6BA5C048B1D3D5B290AFF0078FAB9EE6AABE2234569B979EE7B
            4B2AA768EB51ECBFCC3E39FC75D6FE37F89DEF6F99AD74B818AD8E9AAD94850F
            738EAC7B9FC3A715E69EF464631DEB7BC13E0AD53E20F8A34FD0345B7373A85E
            3EC551D1077663D801C9AF01B95595FAB3F09AB52BE3EBF34AF29C99EC3FB1D7
            C186F89BF11A2D56FADCBE81A1B0B898B0CACB3F548FDF9F98FB01EB5FA5C100
            014718E2B88F83BF0BB4EF843E06D3FC3DA780C625DF713E0069E63F79CFE3FA
            015DC74AFA0C3D254609753F7DC872B8E558454DFC6F597AFF00C01D45252D75
            1F4A21E4514B4500145145002014638A5A2802B5F585B6A5692DADD411DCDB4A
            A55E295432B03D4107A8AF8E7E397EC250DF3DC6B1F0F192D2762647D1A77C44
            C7FE9937F09F63C7BD7D9847146DF4C56552946AAB491E4E619661732A7ECF11
            1BF67D51F8CFE25F0BEAFE0FD565D375BD36E34BBE8C90D05CA156FA8F51EE32
            2B2C31560412194E723823DFDABF60FC7BF0BBC31F12F4C6B1F11E916FA8C447
            CAF22FEF233EAAE3953F435F227C50FF00827E5DDB34B77E07D545C43F7974ED
            44E187B2C9D0FE20578D570738EB0D4FC9B31E11C5E15BA9857CF15F7A353F64
            EFDAD85D9B3F06F8D6EF173C4361AACCD8127A4721FEF760DDFA1AFB359F746C
            46318E0D7E4078C3E1678BBE1F5C98F5ED02FB4EDA7895A22636F70E38FD457D
            59FB277ED6BE72DAF827C6B77FBDC0874FD5666FBC7A08A527A1ECAC7AF435D3
            87C4B4FD9D45F33DEC873FA949FD4730567D1BD3E4C77EC7CDFF00191BF13D7D
            4CBFA5C1AFABBE227C46D13E17F85EEF5DD76E96DACE01C2F57958F4445EEC7D
            3F90CD7C4DF00BE2268DF0D3E357C56D7F59BB482CA059880082F2B79FC2A0FE
            227B015E37F1D3E38EB5F1BFC4EDA85FB1B6D2E0256C74F0D95853D4FAB1EE7F
            0E9C528E223469596FA91473DA79565AE31D6A394ACBE6F561F1C7E396B5F1BB
            C50F7F7ECD6BA6424AD8E9AAD94853D4FAB1EE7F0E9C579A8EB4B9239ADFF03F
            80F5CF88FE208346D02C64BEBD94F2147CA8BFDE73D140EE4FEB5E5B6EA4AEF5
            67E6352A57CC2BB9C9F34E450D03C3DA978AB58B4D2B49B396FF0050BA90470C
            108C9627FA7BF4AFD29FD993F671B2F829A17DAEF963BBF145E20FB55CA8E221
            FF003C90FA0EE7B9AB3FB3BFECD5A37C12D27ED1284D47C4B70816EB5065CED1
            FDC8F3F757F9F7AF6AD82BD9C361553F7E5B9FB170EF0E472F4B138AD6A745DB
            FE08BB7F0A5C7BD2D15E89FA005145140051451400514514005145140098A314
            B45002628DA2968A00AF75656F7B0B45710C73C4C305245041FA8AF19F8B5F09
            3E0EE8FE1FBEF1078ABC37A6595ADB21669A04303B1E8154215CB13C0F7AF58F
            127886CBC29A1DE6ADA8CFE4595A4664964C13803D8726BF397E367C42F1CFED
            33E2E1068DA06AAFE1FB67DB61631DBBE1BB79B2718DC47E42B931138C23B5D9
            F2B9EE328E128DBD9AA9525B2B5FE678D78CF54D2758F12DE5D687A57F64692E
            E7ECF666432B2AE3AB3124927D6B100F980C64E70001CE7D31EBED5F4DFC3BFD
            833C69E2531CFE22BAB6F0DD9B60B479F3AE08F4DA3E51F9D7D5DF0B7F651F00
            FC2FF2AE6DF4C1AA6AA9CFDBF51C48E0FAA2FDD4FC00AF2A185A951DE5A1F98E
            0F86330CC27ED2AC7922FBFE88F8BFE09FEC85E2DF8A92C37DA8C327873C3C70
            C6EAE93134CBFF004CD0F3FF0002381E99AFBFFE18FC21F0CFC23D0574DF0FD8
            2DB82019AE5F0D34E7D5DBBFD3A7A015DA2A2AAE0600F4A53D3AF35EBD2C3C28
            EAB73F53CAB21C2654AF4D734FBBDFE5D8508314B8E2968AE93E9428A28A0028
            A28A0028A28A0028A28A0028A28A0028A28A0028A28A008A6B68AE23292A2C88
            7AAB0041A48ACE180111C6A80F50A00A28A4D26EE4F2A6EF624DA280A067DE8A
            29942E28DB45140AC2D145140C28A28A00414138A28A04009345145033FFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo87: TfrxMemoView
          Left = 68.031540000000000000
          Width = 650.079160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do Esta' +
              'do do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          Left = 68.031540000000000000
          Top = 21.677180000000000000
          Width = 650.079160000000000000
          Height = 34.015760240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'ATER Par'#225' - Sistema de acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo89: TfrxMemoView
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
      object HeaderUnidade: TfrxHeader
        Height = 26.456710000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo90: TfrxMemoView
          Width = 718.110700000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Relat'#243'rio de cadastro do benefici'#225'rio de ATER')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooterUnidade: TfrxPageFooter
        Height = 15.118120000000000000
        Top = 1080.945580000000000000
        Width = 718.110700000000000000
        object Memo91: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'Data e hora da impress'#227'o: [<Date>] [FormatDateTime('#39'hh:nn'#39',<Time' +
              '>)]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          Left = 623.622450000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Usu'#225'rio: [usuario]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 340.157700000000000000
          Width = 283.464750000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[titulo]')
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object MasterDataProducaoFamiliar: TfrxMasterData
        Height = 374.173470000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStProducaoFamiliar
        DataSetName = 'DtStProducaoFamiliar'
        PrintIfDetailEmpty = True
        RowCount = 0
        StartNewPage = True
        object Memo162: TfrxMemoView
          Top = 343.937230000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Programas governamentais')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          Top = 170.078850000000000000
          Width = 230.551330000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CAR (Cadastro de Ambiente Rural)')
          ParentFont = False
        end
        object Memo95: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Informa'#231#245'es da unidade de produ'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStProducaoFamiliarPRO_DENOMINACAO: TfrxMemoView
          Top = 18.897650000000000000
          Width = 718.110700000000000000
          Height = 30.236220470000000000
          ShowHint = False
          DataField = 'PRO_DENOMINACAO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_DENOMINACAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Top = 49.133890000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
        object DtStProducaoFamiliarPRO_CEP: TfrxMemoView
          Top = 60.472480000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '[FormatMaskText('#39'99.999-999;0; '#39',<DtStProducaoFamiliar."PRO_CEP"' +
              '>)]')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          Left = 105.826840000000000000
          Top = 49.133890000000000000
          Width = 517.795610000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Left = 623.622450000000000000
          Top = 49.133890000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#250'mero')
          ParentFont = False
        end
        object DtStProducaoFamiliarPRO_ENDERECO: TfrxMemoView
          Left = 105.826840000000000000
          Top = 60.472480000000000000
          Width = 517.795610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_ENDERECO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_ENDERECO"]')
          ParentFont = False
        end
        object DtStProducaoFamiliarPRO_NUMERO: TfrxMemoView
          Left = 623.622450000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_NUMERO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_NUMERO"]')
          ParentFont = False
        end
        object Memo99: TfrxMemoView
          Top = 79.370130000000000000
          Width = 283.464750000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo100: TfrxMemoView
          Top = 90.708720000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_COMPLEMENTO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_COMPLEMENTO"]')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          Left = 283.464750000000000000
          Top = 79.370130000000000000
          Width = 192.756030000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Bairro')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          Left = 283.464750000000000000
          Top = 90.708720000000000000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_BAIRRO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_BAIRRO"]')
          ParentFont = False
        end
        object Memo103: TfrxMemoView
          Left = 476.220780000000000000
          Top = 79.370130000000000000
          Width = 200.315090000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Munic'#237'pio')
          ParentFont = False
        end
        object Memo104: TfrxMemoView
          Left = 476.220780000000000000
          Top = 90.708720000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_CIDADE'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_CIDADE"]')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Left = 676.535870000000000000
          Top = 79.370130000000000000
          Width = 41.574830000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          Left = 676.535870000000000000
          Top = 90.708720000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_ESTADO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_ESTADO"]')
          ParentFont = False
        end
        object Memo107: TfrxMemoView
          Top = 109.606370000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Via de acesso')
          ParentFont = False
        end
        object Memo108: TfrxMemoView
          Top = 120.944960000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_ACESSO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_ACESSO"]')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          Top = 139.842610000000000000
          Width = 313.700990000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Comunidade')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          Top = 151.181200000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_COMUNIDADE'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_COMUNIDADE"]')
          ParentFont = False
        end
        object Memo111: TfrxMemoView
          Left = 313.700990000000000000
          Top = 139.842610000000000000
          Width = 139.842610000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Proc. de transi'#231#227'o agroecol'#243'gica')
          ParentFont = False
        end
        object Memo112: TfrxMemoView
          Left = 313.700990000000000000
          Top = 151.181200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_PROCESSO_TRANSICAO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_PROCESSO_TRANSICAO"]')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          Left = 453.543600000000000000
          Top = 139.842610000000000000
          Width = 139.842610000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Caracteriza'#231#227'o de dom'#237'nio')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          Left = 453.543600000000000000
          Top = 151.181200000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_CARACTERIZACAO_DOMINIO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_CARACTERIZACAO_DOMINIO"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Left = 593.386210000000000000
          Top = 139.842610000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Receita agropec. bruta anual')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          Left = 593.386210000000000000
          Top = 151.181200000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_RECEITA_ANUAL'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_RECEITA_ANUAL"]')
          ParentFont = False
        end
        object CheckBox1: TfrxCheckBoxView
          Left = 7.559060000000000000
          Top = 185.196970000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_CAR'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo118: TfrxMemoView
          Top = 211.653680000000000000
          Width = 230.551330000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'N'#250'mero do CAR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 109.606370000000000000
          Top = 215.433210000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_CAR_NUMERO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_CAR_NUMERO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Top = 238.110390000000000000
          Width = 230.551330000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Data do CAR:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 109.606370000000000000
          Top = 241.889920000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_CAR_DATA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo122: TfrxMemoView
          Left = 230.551330000000000000
          Top = 170.078850000000000000
          Width = 222.992270000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Energia el'#233'trica')
          ParentFont = False
        end
        object CheckBox2: TfrxCheckBoxView
          Left = 241.889920000000000000
          Top = 185.196970000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_ENERGIA_SITUACAO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo123: TfrxMemoView
          Left = 260.787570000000000000
          Top = 185.196970000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Possui sistema de energia el'#233'trica')
          ParentFont = False
        end
        object CheckBox3: TfrxCheckBoxView
          Left = 260.787570000000000000
          Top = 204.094620000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_ENERGIA_CONCESSIONARIA'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo124: TfrxMemoView
          Left = 279.685220000000000000
          Top = 204.094620000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Concession'#225'ria')
          ParentFont = False
        end
        object CheckBox4: TfrxCheckBoxView
          Left = 260.787570000000000000
          Top = 222.992270000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_ENERGIA_OUTRAS'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo125: TfrxMemoView
          Left = 279.685220000000000000
          Top = 222.992270000000000000
          Width = 139.842610000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Outras fontes')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          Left = 453.543600000000000000
          Top = 170.078850000000000000
          Width = 264.567100000000000000
          Height = 94.488250000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #193'gua')
          ParentFont = False
        end
        object CheckBox5: TfrxCheckBoxView
          Left = 461.102660000000000000
          Top = 185.196970000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_AGUA_SITUACAO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo127: TfrxMemoView
          Left = 480.000310000000000000
          Top = 185.196970000000000000
          Width = 238.110390000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Possui sistema de abastecimento de '#225'gua')
          ParentFont = False
        end
        object CheckBox6: TfrxCheckBoxView
          Left = 480.000310000000000000
          Top = 204.094620000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_AGUA_CONCESSIONARIA'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo128: TfrxMemoView
          Left = 498.897960000000000000
          Top = 204.094620000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Concession'#225'ria')
          ParentFont = False
        end
        object CheckBox7: TfrxCheckBoxView
          Left = 480.000310000000000000
          Top = 222.992270000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_AGUA_POCO_ARTESIANO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo129: TfrxMemoView
          Left = 498.897960000000000000
          Top = 222.992270000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Po'#231'o artesiano')
          ParentFont = False
        end
        object CheckBox8: TfrxCheckBoxView
          Left = 480.000310000000000000
          Top = 241.889920000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_AGUA_POCO_AMAZONICO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo130: TfrxMemoView
          Left = 498.897960000000000000
          Top = 241.889920000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Po'#231'o amaz'#244'nico')
          ParentFont = False
        end
        object CheckBox9: TfrxCheckBoxView
          Left = 612.283860000000000000
          Top = 204.094620000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_AGUA_RIO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo131: TfrxMemoView
          Left = 631.181510000000000000
          Top = 204.094620000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Rio ou igarap'#233)
          ParentFont = False
        end
        object CheckBox10: TfrxCheckBoxView
          Left = 612.283860000000000000
          Top = 222.992270000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          ShowHint = False
          CheckColor = clBlack
          Checked = False
          CheckStyle = csCheck
          DataField = 'PRO_AGUA_OUTRAS'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
        end
        object Memo132: TfrxMemoView
          Left = 631.181510000000000000
          Top = 222.992270000000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Outras fontes')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Left = 26.456710000000000000
          Top = 185.196970000000000000
          Width = 188.976500000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Possui CAR')
          ParentFont = False
        end
        object Memo134: TfrxMemoView
          Top = 264.567100000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              'Informa'#231#245'es geogr'#225'ficas, informa'#231#245'es do registro, condi'#231#227'o da te' +
              'rra e programas governamentais')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Top = 283.464750000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Latitude')
          ParentFont = False
        end
        object Memo136: TfrxMemoView
          Top = 294.803340000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_LATITUDE'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_LATITUDE"]')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Left = 94.488250000000000000
          Top = 283.464750000000000000
          Width = 94.488176770000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Longitude')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Left = 94.488250000000000000
          Top = 294.803340000000000000
          Width = 94.488176770000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_LONGITUDE'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_LONGITUDE"]')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Left = 188.976500000000000000
          Top = 283.464750000000000000
          Width = 272.126160000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#233'cnico')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Left = 188.976500000000000000
          Top = 294.803340000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_TECNICO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_TECNICO"]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Left = 461.102660000000000000
          Top = 283.464750000000000000
          Width = 257.008040000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Escrit'#243'rio')
          ParentFont = False
        end
        object Memo143: TfrxMemoView
          Left = 461.102660000000000000
          Top = 294.803340000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_ESCRITORIO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_ESCRITORIO"]')
          ParentFont = False
        end
        object Memo145: TfrxMemoView
          Top = 313.700990000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #193'rea legal (ha)')
          ParentFont = False
        end
        object Memo146: TfrxMemoView
          Top = 325.039580000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_AREA_LEGAL'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_AREA_LEGAL"]')
          ParentFont = False
        end
        object Memo147: TfrxMemoView
          Left = 94.488250000000000000
          Top = 313.700990000000000000
          Width = 94.488250000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            #193'rea real (ha)')
          ParentFont = False
        end
        object Memo148: TfrxMemoView
          Left = 94.488250000000000000
          Top = 325.039580000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_AREA_REAL'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_AREA_REAL"]')
          ParentFont = False
        end
        object Memo149: TfrxMemoView
          Left = 188.976500000000000000
          Top = 313.700990000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Terra nua (ha)')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 188.976500000000000000
          Top = 325.039580000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_AREA_NUA'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_AREA_NUA"]')
          ParentFont = False
        end
        object Memo151: TfrxMemoView
          Left = 279.685220000000000000
          Top = 313.700990000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Pastagem (ha)')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 279.685220000000000000
          Top = 325.039580000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_AREA_PASTAGEM'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_AREA_PASTAGEM"]')
          ParentFont = False
        end
        object Memo153: TfrxMemoView
          Left = 370.393940000000000000
          Top = 313.700990000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Cultura perm. (ha)')
          ParentFont = False
        end
        object Memo154: TfrxMemoView
          Left = 370.393940000000000000
          Top = 325.039580000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_AREA_PERMANENTE'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_AREA_PERMANENTE"]')
          ParentFont = False
        end
        object Memo155: TfrxMemoView
          Left = 461.102660000000000000
          Top = 313.700990000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Cultura temp. (ha)')
          ParentFont = False
        end
        object Memo156: TfrxMemoView
          Left = 461.102660000000000000
          Top = 325.039580000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_AREA_TEMPORARIA'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_AREA_TEMPORARIA"]')
          ParentFont = False
        end
        object Memo157: TfrxMemoView
          Left = 559.370440000000000000
          Top = 313.700990000000000000
          Width = 90.708720000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Reserva legal (ha)')
          ParentFont = False
        end
        object Memo158: TfrxMemoView
          Left = 559.370440000000000000
          Top = 325.039580000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_AREA_RESERVA'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_AREA_RESERVA"]')
          ParentFont = False
        end
        object Memo159: TfrxMemoView
          Left = 650.079160000000000000
          Top = 313.700990000000000000
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Outros (ha)')
          ParentFont = False
        end
        object Memo160: TfrxMemoView
          Left = 650.079160000000000000
          Top = 325.039580000000000000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_AREA_OUTROS'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_AREA_OUTROS"]')
          ParentFont = False
        end
        object DtStProducaoFamiliarPRO_PROGRAMAS_GOVERNO: TfrxMemoView
          Top = 355.275820000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PRO_PROGRAMAS_GOVERNO'
          DataSet = FrxDtStProducaoFamiliar
          DataSetName = 'DtStProducaoFamiliar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStProducaoFamiliar."PRO_PROGRAMAS_GOVERNO"]')
          ParentFont = False
        end
      end
      object DetailDataBem: TfrxDetailData
        Height = 18.897650000000000000
        Top = 661.417750000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStBem
        DataSetName = 'DtStBem'
        PrintIfDetailEmpty = True
        RowCount = 0
        object DtStBemBEM_TIPO: TfrxMemoView
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEM_TIPO'
          DataSet = FrxDtStBem
          DataSetName = 'DtStBem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStBem."BEM_TIPO"]')
          ParentFont = False
        end
        object DtStBemBEM_DESCRICAO: TfrxMemoView
          Left = 181.417440000000000000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEM_DESCRICAO'
          DataSet = FrxDtStBem
          DataSetName = 'DtStBem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStBem."BEM_DESCRICAO"]')
          ParentFont = False
        end
        object DtStBemBEM_QUANTIDADE: TfrxMemoView
          Left = 661.417750000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStBem
          DataSetName = 'DtStBem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStBem."BEM_QUANTIDADE"] ')
          ParentFont = False
        end
        object DtStBemBEM_ESTADO: TfrxMemoView
          Left = 453.543600000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEM_ESTADO'
          DataSet = FrxDtStBem
          DataSetName = 'DtStBem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStBem."BEM_ESTADO"]')
          ParentFont = False
        end
        object Memo190: TfrxMemoView
          Left = 589.606680000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'BEM_DATA'
          DataSet = FrxDtStBem
          DataSetName = 'DtStBem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[DtStBem."BEM_DATA"]')
          ParentFont = False
        end
      end
      object HeaderBem: TfrxHeader
        Height = 41.574830000000000000
        Top = 597.165740000000000000
        Width = 718.110700000000000000
        object Memo163: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Benfeitorias, m'#225'quinas e equipamentos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          Top = 18.897650000000000000
          Width = 181.417440000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          Left = 181.417440000000000000
          Top = 18.897650000000000000
          Width = 272.126160000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          Left = 661.417750000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          Left = 453.543600000000000000
          Top = 18.897650000000000000
          Width = 136.063080000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          Left = 589.606680000000000000
          Top = 18.897650000000000000
          Width = 71.811070000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Data')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailDataSemovente: TfrxDetailData
        Height = 18.897650000000000000
        Top = 767.244590000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStSemovente
        DataSetName = 'DtStSemovente'
        PrintIfDetailEmpty = True
        RowCount = 0
        object DtStSemoventeSEM_SEMOVENTE: TfrxMemoView
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SEM_SEMOVENTE'
          DataSet = FrxDtStSemovente
          DataSetName = 'DtStSemovente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStSemovente."SEM_SEMOVENTE"]')
          ParentFont = False
        end
        object DtStSemoventeSEM_QUANTIDADE: TfrxMemoView
          Left = 226.771800000000000000
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStSemovente
          DataSetName = 'DtStSemovente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStSemovente."SEM_QUANTIDADE"] ')
          ParentFont = False
        end
        object DtStSemoventeSEM_DIVISAO: TfrxMemoView
          Left = 283.464750000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStSemovente
          DataSetName = 'DtStSemovente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStSemovente."SEM_DIVISAO"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          Left = 438.425480000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SEM_GRUPO'
          DataSet = FrxDtStSemovente
          DataSetName = 'DtStSemovente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStSemovente."SEM_GRUPO"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          Left = 570.709030000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SEM_CLASSE'
          DataSet = FrxDtStSemovente
          DataSetName = 'DtStSemovente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStSemovente."SEM_CLASSE"]')
          ParentFont = False
        end
      end
      object HeaderSemovente: TfrxHeader
        Height = 41.574830000000000000
        Top = 702.992580000000000000
        Width = 718.110700000000000000
        object Memo168: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Semoventes')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          Top = 18.897650000000000000
          Width = 226.771800000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Semovente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          Left = 283.464750000000000000
          Top = 18.897650000000000000
          Width = 154.960730000000000000
          Height = 22.677165354330700000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Divis'#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          Left = 226.771800000000000000
          Top = 18.897650000000000000
          Width = 56.692950000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 570.709030000000000000
          Top = 18.897650000000000000
          Width = 147.401670000000000000
          Height = 22.677165354330700000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Classe')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          Left = 438.425480000000000000
          Top = 18.897650000000000000
          Width = 132.283550000000000000
          Height = 22.677165354330700000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Grupo')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderAtividades: TfrxHeader
        Height = 18.897650000000000000
        Top = 808.819420000000000000
        Width = 718.110700000000000000
        object Memo176: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Atividades produtivas e comercializa'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailDataAtividades: TfrxDetailData
        Height = 30.236240000000000000
        Top = 850.394250000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStAtividade
        DataSetName = 'DtStAtividade'
        KeepTogether = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object Memo177: TfrxMemoView
          Left = 204.094620000000000000
          Width = 64.252010000000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Ano/m'#234's')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          Left = 268.346630000000000000
          Width = 124.724490000000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Sistema produtivo')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          Width = 204.094620000000000000
          Height = 30.236225350000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o do produto')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          Left = 476.220780000000000000
          Width = 83.149660000000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #193'rea plantada (ha)')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          Left = 559.370440000000000000
          Width = 83.149660000000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            #193'rea colhida (ha)')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          Left = 393.071120000000000000
          Width = 83.149660000000000000
          Height = 30.236220470000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
        end
        object DtStAtividadeATV_ANO_MES: TfrxMemoView
          Left = 204.094620000000000000
          Top = 11.338590000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = FrxDtStAtividade
          DataSetName = 'DtStAtividade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            
              '[IIF(<DtStAtividade."ATV_ANO_MES">=0,'#39#39',FormatMaskText('#39'9999/99;' +
              '0; '#39',<DtStAtividade."ATV_ANO_MES">))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStAtividadeATV_SISTEMA_PRODUTIVO: TfrxMemoView
          Left = 268.346630000000000000
          Top = 11.338590000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ATV_SISTEMA_PRODUTIVO'
          DataSet = FrxDtStAtividade
          DataSetName = 'DtStAtividade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStAtividade."ATV_SISTEMA_PRODUTIVO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStAtividadeATV_PRODUTO: TfrxMemoView
          Top = 11.338590000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ATV_PRODUTO'
          DataSet = FrxDtStAtividade
          DataSetName = 'DtStAtividade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStAtividade."ATV_PRODUTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStAtividadeATV_UNIDADE: TfrxMemoView
          Left = 393.071120000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ATV_UNIDADE'
          DataSet = FrxDtStAtividade
          DataSetName = 'DtStAtividade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStAtividade."ATV_UNIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStAtividadeATV_AREA_PLANTADA: TfrxMemoView
          Left = 476.220780000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ATV_AREA_PLANTADA'
          DataSet = FrxDtStAtividade
          DataSetName = 'DtStAtividade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStAtividade."ATV_AREA_PLANTADA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStAtividadeATV_AREA_COLHIDA: TfrxMemoView
          Left = 559.370440000000000000
          Top = 11.338590000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ATV_AREA_COLHIDA'
          DataSet = FrxDtStAtividade
          DataSetName = 'DtStAtividade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStAtividade."ATV_AREA_COLHIDA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStAtividadeATV_QUANTIDADE: TfrxMemoView
          Left = 642.520100000000000000
          Top = 11.338590000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ATV_QUANTIDADE'
          DataSet = FrxDtStAtividade
          DataSetName = 'DtStAtividade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStAtividade."ATV_QUANTIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object SubdetailDataComercializacao: TfrxSubdetailData
        Height = 15.118120000000000000
        Top = 941.102970000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStComercializacao
        DataSetName = 'DtStComercializacao'
        KeepFooter = True
        KeepHeader = True
        KeepTogether = True
        PrintIfDetailEmpty = True
        RowCount = 0
        object DtStComercializacaoPRP_PRODUTO: TfrxMemoView
          Width = 151.181200000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRP_PRODUTO'
          DataSet = FrxDtStComercializacao
          DataSetName = 'DtStComercializacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStComercializacao."PRP_PRODUTO"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object DtStComercializacaoPRP_QTDE_CONSUMIDA: TfrxMemoView
          Left = 362.834880000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRP_QTDE_CONSUMIDA'
          DataSet = FrxDtStComercializacao
          DataSetName = 'DtStComercializacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStComercializacao."PRP_QTDE_CONSUMIDA"]')
          ParentFont = False
          WordWrap = False
          Wysiwyg = False
          VAlign = vaCenter
        end
        object DtStComercializacaoPRP_QTDE_COMERCIALIZADA: TfrxMemoView
          Left = 434.645950000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRP_QTDE_COMERCIALIZADA'
          DataSet = FrxDtStComercializacao
          DataSetName = 'DtStComercializacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStComercializacao."PRP_QTDE_COMERCIALIZADA"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object DtStComercializacaoPRP_UNIDADE: TfrxMemoView
          Left = 506.457020000000000000
          Width = 83.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrxDtStComercializacao
          DataSetName = 'DtStComercializacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[DtStComercializacao."PRP_UNIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object DtStComercializacaoPRP_VALOR_UNITARIO: TfrxMemoView
          Left = 589.606680000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRP_VALOR_UNITARIO'
          DataSet = FrxDtStComercializacao
          DataSetName = 'DtStComercializacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[DtStComercializacao."PRP_VALOR_UNITARIO"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object DtStComercializacaoPRP_VALOR_TOTAL1: TfrxMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = FrxDtStComercializacao
          DataSetName = 'DtStComercializacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haRight
          HideZeros = True
          Memo.UTF8W = (
            '[FormatFloat('#39',##0.00'#39',<DtStComercializacao."PRP_VALOR_TOTAL">)]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object DtStComercializacaoPRP_DESTINOS: TfrxMemoView
          Left = 151.181200000000000000
          Width = 211.653680000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'PRP_DESTINOS'
          DataSet = FrxDtStComercializacao
          DataSetName = 'DtStComercializacao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStComercializacao."PRP_DESTINOS"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object HeaderComercializacao: TfrxHeader
        Height = 15.118120000000000000
        Top = 903.307670000000000000
        Width = 718.110700000000000000
        object Memo139: TfrxMemoView
          Width = 151.181200000000000000
          Height = 15.118110236220500000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o do item comercializado')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 151.181200000000000000
          Width = 211.653680000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Destinos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          Left = 506.457020000000000000
          Width = 83.149660000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Unidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          Left = 589.606680000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor unit. R$')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          Left = 653.858690000000000000
          Width = 64.252010000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor total R$')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          Left = 362.834880000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde consumida')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          Left = 434.645950000000000000
          Width = 71.811070000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Qtde. comercial.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object FooterComercializacao: TfrxFooter
        Top = 978.898270000000000000
        Width = 718.110700000000000000
        object Memo188: TfrxMemoView
          Width = 718.110700000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haRight
          ParentFont = False
        end
      end
      object DetailDataFater: TfrxDetailData
        Height = 18.897650000000000000
        Top = 1001.575450000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStFater
        DataSetName = 'DtStFater'
        PrintIfDetailEmpty = True
        RowCount = 0
        object SubreportFater: TfrxSubreport
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Page = FrxPrincipal.Page4
        end
      end
    end
    object Page4: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      PrintIfEmpty = False
      PrintOnPreviousPage = True
      object HeaderFater: TfrxHeader
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        ReprintOnNewPage = True
        object Memo210: TfrxMemoView
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Informa'#231#245'es da FATER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo211: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Data da a'#231#227'o e'
            'Pr'#243'xima visita')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo212: TfrxMemoView
          Left = 393.071120000000000000
          Top = 18.897650000000000000
          Width = 264.567100000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#233'cnico respons'#225'vel')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo213: TfrxMemoView
          Left = 75.590600000000000000
          Top = 18.897650000000000000
          Width = 166.299320000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Metodologia inicial')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo214: TfrxMemoView
          Left = 657.638220000000000000
          Top = 18.897650000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Participante?')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo215: TfrxMemoView
          Left = 241.889920000000000000
          Top = 18.897650000000000000
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Metodologia final')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataFater: TfrxMasterData
        Height = 151.181200000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStFater
        DataSetName = 'DtStFater'
        KeepHeader = True
        PrintIfDetailEmpty = True
        RowCount = 0
        Stretched = True
        object Memo216: TfrxMemoView
          Top = 37.795300000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Orienta'#231#227'o t'#233'cnica')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo217: TfrxMemoView
          Left = 75.590600000000000000
          Width = 166.299320000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'FAT_METODO_INICIAL'
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFater."FAT_METODO_INICIAL"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo218: TfrxMemoView
          Left = 241.889920000000000000
          Width = 151.181200000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'FAT_METODO_FINAL'
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFater."FAT_METODO_FINAL"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo219: TfrxMemoView
          Left = 393.071120000000000000
          Width = 264.567100000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'FAT_FUNCIONARIO'
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFater."FAT_FUNCIONARIO"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo220: TfrxMemoView
          Left = 657.638220000000000000
          Width = 60.472480000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'FAT_PARTICIPANTE'
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFater."FAT_PARTICIPANTE"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo221: TfrxMemoView
          Top = 56.692950000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFater."FAT_ORIENTACAO"]')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAT_DATA_ACAO'
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStFater."FAT_DATA_ACAO"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          Top = 75.590600000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Tem'#225'tica')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo192: TfrxMemoView
          Top = 94.488250000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'FAT_TEMATICA'
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFater."FAT_TEMATICA"]')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          Top = 113.385900000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Resumo da a'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo194: TfrxMemoView
          Top = 132.283550000000000000
          Width = 718.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataField = 'FAT_RESUMO'
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStFater."FAT_RESUMO"]')
          ParentFont = False
        end
        object Memo195: TfrxMemoView
          Top = 18.897650000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FAT_DATA_VISITA'
          DataSet = FrxDtStFater
          DataSetName = 'DtStFater'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          HideZeros = True
          Memo.UTF8W = (
            '[DtStFater."FAT_DATA_VISITA"]')
          ParentFont = False
          WordBreak = True
          WordWrap = False
          VAlign = vaCenter
        end
      end
      object DetailDataComunidade: TfrxDetailData
        Height = 18.897650000000000000
        Top = 302.362400000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStComunidade
        DataSetName = 'DtStComunidade'
        RowCount = 0
        object DtStComunidadeCOM_NOME: TfrxMemoView
          Width = 419.527830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'COM_NOME'
          DataSet = FrxDtStComunidade
          DataSetName = 'DtStComunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStComunidade."COM_NOME"]')
          ParentFont = False
        end
        object DtStComunidadeCID_NOME: TfrxMemoView
          Left = 419.527830000000000000
          Width = 257.008040000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'CID_NOME'
          DataSet = FrxDtStComunidade
          DataSetName = 'DtStComunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[DtStComunidade."CID_NOME"]')
          ParentFont = False
        end
        object DtStComunidadeUFE_ID: TfrxMemoView
          Left = 676.535870000000000000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'UFE_ID'
          DataSet = FrxDtStComunidade
          DataSetName = 'DtStComunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[DtStComunidade."UFE_ID"]')
          ParentFont = False
        end
      end
      object HeaderComunidade: TfrxHeader
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo196: TfrxMemoView
          Width = 419.527830000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Comunidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          Left = 419.527830000000000000
          Width = 257.008040000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Munic'#237'pio')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          Left = 676.535870000000000000
          Width = 41.574830000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'UF')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderTecnico: TfrxHeader
        Height = 22.677180000000000000
        Top = 343.937230000000000000
        Width = 718.110700000000000000
        object Memo199: TfrxMemoView
          Left = 102.047310000000000000
          Width = 616.063390000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'T'#233'cnico participante')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          Width = 102.047310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            'Matr'#237'cula')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object DetailDataTecnico: TfrxDetailData
        Height = 18.897650000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        DataSet = FrxDtStTecnico
        DataSetName = 'DtStTecnico'
        RowCount = 0
        object DtStTecnicoFUN_MATRICULA: TfrxMemoView
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FUN_MATRICULA'
          DataSet = FrxDtStTecnico
          DataSetName = 'DtStTecnico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStTecnico."FUN_MATRICULA"]')
          ParentFont = False
        end
        object DtStTecnicoFUN_NOME: TfrxMemoView
          Left = 102.047310000000000000
          Width = 616.063390000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'FUN_NOME'
          DataSet = FrxDtStTecnico
          DataSetName = 'DtStTecnico'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[DtStTecnico."FUN_NOME"]')
          ParentFont = False
        end
      end
      object FooterTecnico: TfrxFooter
        Height = 7.559060000000000000
        Top = 430.866420000000000000
        Width = 718.110700000000000000
        object Memo202: TfrxMemoView
          Width = 718.110700000000000000
          Height = 7.559060000000000000
          ShowHint = False
          StretchMode = smActualHeight
          DataSet = FrxDtStComunidade
          DataSetName = 'DtStComunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          ParentFont = False
        end
      end
    end
  end
  object FrxDtStPrincipal: TfrxDBDataset
    UserName = 'DtStPrincipal'
    CloseDataSource = False
    DataSet = DtStPrincipal
    BCDToCurrency = False
    Left = 208
    Top = 72
  end
  object DtStPrincipal: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from stp_rel_base_beneficiario_01(:beneficiario)')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 72
    poSQLINT64ToBCD = True
  end
  object DtSrcPrincipal: TDataSource
    DataSet = DtStPrincipal
    Left = 272
    Top = 72
  end
  object FrxDtStDAP: TfrxDBDataset
    UserName = 'DtStDAP'
    CloseDataSource = False
    DataSet = DtStDAP
    BCDToCurrency = False
    Left = 208
    Top = 104
  end
  object DtStDAP: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  a.bdp_nis,'
      '  b.dtp_descricao as bdp_tipo,'
      '  a.bdp_dap,'
      '  a.bdp_emissao,'
      '  a.bdp_validade,'
      '  c.org_descricao as bdp_origem'
      'from'
      
        '  tab_cad_beneficiario_dap a left join tab_cad_dap_tipo b on (a.' +
        'dtp_id = b.dtp_id) left join'
      '  tab_cad_dap_origem c on (a.org_id = c.org_id)'
      'where (a.ben_id = :ben_id)')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcPrincipal
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 104
    poSQLINT64ToBCD = True
  end
  object DtStFamilia: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  b.par_descricao as fam_parentesco,'
      '  a.fam_nome,'
      '  a.fam_nascimento'
      
        'from tab_cad_familia a left join tab_cad_parentesco b on (a.par_' +
        'id = b.par_id)'
      'where (a.ben_id = :ben_id)'
      'order by a.fam_nome')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcPrincipal
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 136
    poSQLINT64ToBCD = True
  end
  object FrxDtStFamilia: TfrxDBDataset
    UserName = 'DtStFamilia'
    CloseDataSource = False
    DataSet = DtStFamilia
    BCDToCurrency = False
    Left = 208
    Top = 136
  end
  object DtStProducaoFamiliar: TpFIBDataSet
    SelectSQL.Strings = (
      'select * from stp_rel_base_producao_01(:ben_id)')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcPrincipal
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 168
    poSQLINT64ToBCD = True
  end
  object FrxDtStProducaoFamiliar: TfrxDBDataset
    UserName = 'DtStProducaoFamiliar'
    CloseDataSource = False
    DataSet = DtStProducaoFamiliar
    BCDToCurrency = False
    Left = 208
    Top = 168
  end
  object FrxDtStBem: TfrxDBDataset
    UserName = 'DtStBem'
    CloseDataSource = False
    DataSet = DtStBem
    BCDToCurrency = False
    Left = 208
    Top = 200
  end
  object DtStBem: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  c.cls_descricao as bem_tipo,'
      '  b.bem_descricao,'
      '  a.bem_quantidade,'
      '  case a.bem_estado'
      '    when 1 then '#39#211'timo'#39
      '    when 2 then '#39'Bom'#39
      '    when 3 then '#39'Razo'#225'vel'#39
      '    when 4 then '#39'Ruim'#39
      '  end as bem_estado,'
      '  a.bem_data'
      'from'
      
        '  tab_cad_producao_bem a join tab_cad_bem b on (a.bem_id = b.bem' +
        '_id) left join'
      '  tab_cad_bem_classificacao c on (b.cls_id = c.cls_id)'
      'where'
      '  (a.pro_id = :pro_id)'
      'order by'
      '  c.cls_descricao, b.bem_descricao')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcProducaoFamiliar
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 200
    poSQLINT64ToBCD = True
  end
  object DtSrcProducaoFamiliar: TDataSource
    DataSet = DtStProducaoFamiliar
    Left = 272
    Top = 168
  end
  object DtStSemovente: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  a.prd_descricao as sem_semovente,'
      '  s.prd_quantidade as sem_quantidade,'
      '  b.div_descricao as sem_divisao,'
      '  c.grp_descricao as sem_grupo,'
      '  d.cls_descricao as sem_classe'
      'from'
      
        '  tab_cad_producao_semovente s left join tab_cad_produto a on (s' +
        '.prd_id = a.prd_id) left join'
      '  tab_cad_divisao b on (a.div_id = b.div_id) left join'
      '  tab_cad_grupo c on (a.grp_id = c.grp_id) left join'
      '  tab_cad_classe d on (a.cls_id = d.cls_id)'
      'where'
      '  (s.pro_id = :pro_id)'
      'order by'
      '  a.prd_descricao')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcProducaoFamiliar
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 232
    poSQLINT64ToBCD = True
  end
  object FrxDtStSemovente: TfrxDBDataset
    UserName = 'DtStSemovente'
    CloseDataSource = False
    DataSet = DtStSemovente
    BCDToCurrency = False
    Left = 208
    Top = 232
  end
  object FrxDtStAtividade: TfrxDBDataset
    UserName = 'DtStAtividade'
    CloseDataSource = False
    DataSet = DtStAtividade
    BCDToCurrency = False
    Left = 208
    Top = 264
  end
  object DtStAtividade: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  a.atv_id,'
      '  a.atv_periodo_plantio as atv_ano_mes,'
      '  b.sip_descricao as atv_sistema_produtivo,'
      '  c.prd_descricao as atv_produto,'
      '  d.uni_descricao as atv_unidade,'
      '  a.atv_area_plantada,'
      '  a.atv_area_colhida,'
      '  a.atv_quantidade'
      'from'
      
        '  tab_cad_producao_atividade a left join tab_cad_sistema_produti' +
        'vo b on (a.sip_id = b.sip_id) left join'
      '  tab_cad_produto c on (a.prd_id = c.prd_id) left join'
      '  tab_cad_unidade_medida d on (a.uni_id = d.uni_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.atv_excluido = 0)'
      'order by'
      '   a.atv_periodo_plantio, c.prd_descricao')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcProducaoFamiliar
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 264
    poSQLINT64ToBCD = True
  end
  object FrxDtStComercializacao: TfrxDBDataset
    UserName = 'DtStComercializacao'
    CloseDataSource = False
    DataSet = DtStComercializacao
    BCDToCurrency = False
    Left = 208
    Top = 296
  end
  object DtStComercializacao: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  a.prp_id,'
      '  case a.prp_tipo'
      '    when 1 then a.prp_descricao'
      '    when 2 then b.prd_descricao'
      '    when 3 then c.dev_descricao'
      '  end as prp_produto,'
      '  a.prp_qtde_consumida,'
      '  a.prp_qtde_comercializada,'
      '  d.uni_sigla || '#39' ('#39' || d.uni_descricao || '#39')'#39' as prp_unidade,'
      '  a.prp_valor as prp_valor_unitario,'
      '  a.prp_qtde_comercializada * a.prp_valor as prp_valor_total,'
      
        '  (select destinos from stp_rel_base_destino_01(a.prp_id)) as pr' +
        'p_destinos'
      'from'
      
        '  tab_cad_producao_produto a left join tab_cad_produto b on (a.p' +
        'rd_id = b.prd_id) left join'
      '  tab_cad_derivado c on (a.dev_id = c.dev_id) left join'
      '  tab_cad_unidade_medida d on (a.uni_id = d.uni_id)'
      'where'
      '  (a.atv_id = :atv_id) and'
      '  (a.prp_excluido = 0)'
      'order by'
      '  prp_produto')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcAtividade
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 296
    poSQLINT64ToBCD = True
  end
  object DtSrcAtividade: TDataSource
    DataSet = DtStAtividade
    Left = 272
    Top = 264
  end
  object FrxDtStFater: TfrxDBDataset
    UserName = 'DtStFater'
    CloseDataSource = False
    DataSet = DtStFater
    BCDToCurrency = False
    Left = 208
    Top = 328
  end
  object DtStFater: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  b.fat_id,'
      '  b.fat_data_acao,'
      '  c.met_descricao as fat_metodo_inicial,'
      '  d.met_descricao as fat_metodo_final,'
      '  e.fun_nome as fat_funcionario,'
      '  b.fat_orientacao,'
      '  b.fat_tematica,'
      '  b.fat_resumo,'
      '  b.fat_data_visita,'
      '  '#39#39' as fat_participante'
      'from'
      
        '  tab_prd_fater_beneficiario a join tab_prd_fater b on (a.fat_id' +
        ' = b.fat_id) left join'
      '  tab_prd_metodo c on (b.met_id_inicial = c.met_id) left join'
      '  tab_prd_metodo d on (b.met_id_final = d.met_id) left join'
      '  tab_pes_funcionario e on (b.fun_id = e.fun_id)'
      'where'
      '  (a.ben_id = :ben_id) and'
      '  (b.fat_excluido = 0) and'
      '  (b.fat_situacao in (1,2))'
      ''
      'union'
      ''
      'select'
      '  h.fat_id,'
      '  h.fat_data_acao,'
      '  i.met_descricao as fat_metodo_inicial,'
      '  j.met_descricao as fat_metodo_final,'
      '  k.fun_nome as fat_funcionario,'
      '  h.fat_orientacao,'
      '  h.fat_tematica,'
      '  h.fat_resumo,'
      '  h.fat_data_visita,'
      '  '#39'Sim'#39' as fat_participante'
      ''
      'from'
      
        '  tab_cad_beneficiario f join tab_prd_fater_participante g on (f' +
        '.ben_cpf = g.prt_cpf) join'
      '  tab_prd_fater h on (g.fat_id = h.fat_id) left join'
      '  tab_prd_metodo i on (h.met_id_inicial = i.met_id) left join'
      '  tab_prd_metodo j on (h.met_id_final = j.met_id) left join'
      '  tab_pes_funcionario k on (h.fun_id = k.fun_id)'
      'where'
      '  (f.ben_id = :ben_id) and'
      '  (h.fat_excluido = 0) and'
      '  (h.fat_situacao in (1,2))'
      ''
      'order by 1')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcPrincipal
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 328
    poSQLINT64ToBCD = True
  end
  object DtStPesquisar: TpFIBDataSet
    SelectSQL.Strings = (
      'select b.ben_id, b.ben_cpf, b.ben_nome'
      'from tab_cad_beneficiario b'
      'where (b.ben_cpf = :ben_cpf) and (b.ben_excluido = 0)')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 320
    Top = 328
    poSQLINT64ToBCD = True
    object DtStPesquisarBEN_ID: TFIBBCDField
      FieldName = 'BEN_ID'
      Size = 0
    end
    object DtStPesquisarBEN_CPF: TFIBStringField
      FieldName = 'BEN_CPF'
      Size = 11
      Transliterate = False
      EmptyStrToNull = True
    end
    object DtStPesquisarBEN_NOME: TFIBStringField
      FieldName = 'BEN_NOME'
      Size = 150
      Transliterate = False
      EmptyStrToNull = True
    end
  end
  object DtSrcFater: TDataSource
    DataSet = DtStFater
    Left = 272
    Top = 328
  end
  object FrxDtStComunidade: TfrxDBDataset
    UserName = 'DtStComunidade'
    CloseDataSource = False
    DataSet = DtStComunidade
    BCDToCurrency = False
    Left = 208
    Top = 360
  end
  object DtStComunidade: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  a.fat_id,'
      '  b.com_nome,'
      '  c.cid_nome,'
      '  c.ufe_id'
      'from'
      
        '  tab_prd_fater_comunidade a join tab_cad_comunidade b on (a.com' +
        '_id = b.com_id) join'
      '  tab_dne_cidade c on (b.cid_id = c.cid_id)'
      'where'
      '  (a.fat_id = :fat_id)'
      'order by'
      '  b.com_nome')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcFater
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 360
    poSQLINT64ToBCD = True
  end
  object FrxDtStTecnico: TfrxDBDataset
    UserName = 'DtStTecnico'
    CloseDataSource = False
    DataSet = DtStTecnico
    BCDToCurrency = False
    Left = 208
    Top = 392
  end
  object DtStTecnico: TpFIBDataSet
    SelectSQL.Strings = (
      'select'
      '  b.fun_nome,'
      '  b.fun_matricula'
      'from'
      
        '  tab_prd_fater_funcionario a join tab_pes_funcionario b on (a.f' +
        'un_id = b.fun_id) join'
      '  tab_dne_cidade c on (b.cid_id = c.cid_id)'
      'where'
      '  (a.fat_id = :fat_id)'
      'order by'
      '  b.fun_nome')
    Transaction = DtmConexaoModulo.ReadTransaction
    Database = DtmConexaoModulo.pFIBDatabase
    UpdateTransaction = DtmConexaoModulo.WriteTransaction
    AutoCommit = True
    DataSource = DtSrcFater
    DefaultFormats.DateTimeDisplayFormat = 'dd/mm/yyyy hh:mm'
    DefaultFormats.DisplayFormatDate = 'dd/mm/yyyy'
    DefaultFormats.DisplayFormatTime = 'hh:mm'
    Left = 240
    Top = 392
    poSQLINT64ToBCD = True
  end
end