inherited FrmCadastroUnidade: TFrmCadastroUnidade
  Tag = 1
  Left = 423
  Top = 114
  Hint = 'Cadastro de unidades de produ'#231#227'o familiar.'
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSizeable
  Caption = 'Unidade de Produ'#231#227'o Familiar'
  ClientHeight = 630
  ClientWidth = 820
  ExplicitWidth = 836
  ExplicitHeight = 669
  DesignSize = (
    820
    630)
  PixelsPerInch = 96
  TextHeight = 13
  inherited BtnSelecionar: TcxButton
    Left = 658
    Top = 598
    ExplicitLeft = 658
    ExplicitTop = 598
  end
  inherited PgCntrlMain: TcxPageControl
    Top = 34
    Width = 805
    Height = 558
    ParentFont = False
    ExplicitTop = 34
    ExplicitWidth = 805
    ExplicitHeight = 558
    ClientRectBottom = 558
    ClientRectRight = 805
    inherited TbShtPrincipal: TcxTabSheet
      ExplicitWidth = 805
      ExplicitHeight = 534
      object GRpBxPrincipal: TcxGroupBox
        Left = 8
        Top = 0
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es da unidade de produ'#231#227'o'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          777
          303)
        Height = 303
        Width = 777
        object Label1: TLabel
          Tag = 2
          Left = 104
          Top = 16
          Width = 68
          Height = 13
          Caption = 'Denomina'#231#227'o:'
          FocusControl = DbEdtDenominacao
          Transparent = True
        end
        object Label2: TLabel
          Left = 464
          Top = 16
          Width = 49
          Height = 13
          Caption = 'Endere'#231'o:'
          FocusControl = DbEdtEndereco
          Transparent = True
        end
        object Label3: TLabel
          Left = 720
          Top = 16
          Width = 41
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'N'#250'mero:'
          FocusControl = DbEdtNumero
          Transparent = True
          ExplicitLeft = 728
        end
        object Label4: TLabel
          Left = 8
          Top = 56
          Width = 69
          Height = 13
          Caption = 'Complemento:'
          FocusControl = DbEdtComplemento
          Transparent = True
        end
        object Label5: TLabel
          Left = 280
          Top = 56
          Width = 32
          Height = 13
          Caption = 'Bairro:'
          FocusControl = DbEdtBairro
          Transparent = True
        end
        object Label17: TLabel
          Tag = 2
          Left = 448
          Top = 56
          Width = 47
          Height = 13
          Caption = 'Munic'#237'pio:'
          Transparent = True
        end
        object Label18: TLabel
          Left = 744
          Top = 56
          Width = 17
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'UF:'
          Transparent = True
          ExplicitLeft = 752
        end
        object Label6: TLabel
          Left = 8
          Top = 96
          Width = 69
          Height = 13
          Caption = 'Via de acesso:'
          FocusControl = DbEdtVia
          Transparent = True
        end
        object Label22: TLabel
          Left = 8
          Top = 136
          Width = 63
          Height = 13
          Caption = 'Comunidade:'
          Transparent = True
        end
        object Label16: TLabel
          Left = 392
          Top = 16
          Width = 23
          Height = 13
          Caption = 'CEP:'
          Transparent = True
        end
        object Label7: TLabel
          Tag = 2
          Left = 592
          Top = 136
          Width = 130
          Height = 13
          Caption = 'Caracteriza'#231#227'o de dom'#237'nio:'
          Transparent = True
        end
        object Label8: TLabel
          Left = 368
          Top = 136
          Width = 178
          Height = 13
          Caption = 'Processo de transi'#231#227'o agroecol'#243'gica:'
          Transparent = True
        end
        object LblReceita: TLabel
          Left = 8
          Top = 188
          Width = 164
          Height = 13
          Caption = 'Receita agropecu'#225'ria bruta anual:'
          FocusControl = DbEdtReceita
          Transparent = True
          WordWrap = True
        end
        object Label43: TLabel
          Tag = 2
          Left = 8
          Top = 16
          Width = 87
          Height = 13
          Caption = 'Data do cadastro:'
          FocusControl = DbEdtData
          Transparent = True
        end
        object DbEdtDenominacao: TcxDBTextEdit
          Left = 104
          Top = 32
          DataBinding.DataField = 'PRO_DENOMINACAO'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.OnChange = DbEdtDenominacaoPropertiesChange
          TabOrder = 0
          Width = 281
        end
        object DbEdtEndereco: TcxDBTextEdit
          Left = 464
          Top = 32
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'PRO_ENDERECO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 2
          Width = 249
        end
        object DbEdtNumero: TcxDBTextEdit
          Left = 720
          Top = 32
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'PRO_NUMERO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 3
          Width = 49
        end
        object DbEdtComplemento: TcxDBTextEdit
          Left = 8
          Top = 72
          DataBinding.DataField = 'PRO_COMPLEMENTO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 4
          Width = 265
        end
        object DbEdtBairro: TcxDBTextEdit
          Left = 280
          Top = 72
          DataBinding.DataField = 'PRO_BAIRRO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 5
          Width = 161
        end
        object DbLkpCmbBxMunicipio: TcxDBLookupComboBox
          Left = 448
          Top = 72
          Anchors = [akLeft, akTop, akRight]
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
          Properties.PostPopupValueOnTab = True
          TabOrder = 6
          Width = 289
        end
        object DbEdtUF: TcxDBTextEdit
          Left = 744
          Top = 72
          TabStop = False
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'UFE_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 7
          Width = 25
        end
        object DbEdtVia: TcxDBTextEdit
          Left = 8
          Top = 112
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'PRO_ACESSO'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 8
          Width = 761
        end
        object DbLkpCmbBxComunidade: TcxDBLookupComboBox
          Left = 8
          Top = 152
          DataBinding.DataField = 'COM_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownWidth = 500
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'COM_ID'
          Properties.ListColumns = <
            item
              FieldName = 'COM_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          TabOrder = 9
          Width = 329
        end
        object BtnComunidadeBuscar: TcxButton
          Tag = 1
          Left = 340
          Top = 153
          Width = 21
          Height = 19
          Hint = 'Cadastrar nova comunidade'
          Description = 'Acessa o cadastro de comunidades e cria um novo registro.'
          OptionsImage.ImageIndex = 100
          OptionsImage.Images = DtmRecursoModulo.ImgLstPequenas
          TabOrder = 10
          OnClick = BtnComunidadeBuscarClick
        end
        object DbEdtCEP: TcxDBMaskEdit
          Left = 392
          Top = 32
          DataBinding.DataField = 'PRO_CEP'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.AlwaysShowBlanksAndLiterals = True
          Properties.ClearKey = 46
          Properties.EditMask = '99.999-999;0; '
          TabOrder = 1
          Width = 65
        end
        object GrpBxCAR: TcxGroupBox
          Left = 8
          Top = 202
          Caption = 'CAR'
          ParentBackground = False
          ParentColor = False
          TabOrder = 14
          Height = 85
          Width = 265
          object LblCARNumero: TLabel
            Left = 8
            Top = 34
            Width = 80
            Height = 13
            Caption = 'N'#250'mero do CAR:'
            Enabled = False
            FocusControl = DbEdtCARNumero
            Transparent = True
          end
          object LblCARData: TLabel
            Left = 160
            Top = 34
            Width = 66
            Height = 13
            Caption = 'Data do CAR:'
            Enabled = False
            FocusControl = DbEdtCARNumero
            Transparent = True
          end
          object DbEdtCARNumero: TcxDBTextEdit
            Left = 8
            Top = 50
            DataBinding.DataField = 'PRO_CAR_NUMERO'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            TabOrder = 1
            Width = 145
          end
          object DbChckBxCAR: TcxDBCheckBox
            Left = 8
            Top = 13
            Caption = 'Possui CAR (Cadastro de Ambiente Rural):'
            DataBinding.DataField = 'PRO_CAR'
            DataBinding.DataSource = DtSrcPrincipal
            ParentColor = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 0
            Transparent = True
            OnClick = DbChckBxCARClick
            Width = 225
          end
          object DbEdtCARData: TcxDBDateEdit
            Left = 160
            Top = 50
            DataBinding.DataField = 'PRO_CAR_DATA'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            TabOrder = 2
            Width = 97
          end
        end
        object GrpBxEnergia: TcxGroupBox
          Left = 280
          Top = 174
          Caption = 'Energia el'#233'trica'
          ParentBackground = False
          ParentColor = False
          TabOrder = 15
          Height = 113
          Width = 225
          object DbChckBxEnergia: TcxDBCheckBox
            Left = 8
            Top = 16
            Caption = 'Possui sistema de energia el'#233'trica:'
            DataBinding.DataField = 'PRO_ENERGIA_SITUACAO'
            DataBinding.DataSource = DtSrcPrincipal
            ParentColor = False
            Properties.Alignment = taLeftJustify
            Properties.ImmediatePost = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 0
            Transparent = True
            OnClick = DbChckBxEnergiaClick
            Width = 189
          end
          object DbChckBxEnergiaConcessioaria: TcxDBCheckBox
            Left = 24
            Top = 40
            Caption = 'Concession'#225'ria'
            DataBinding.DataField = 'PRO_ENERGIA_CONCESSIONARIA'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 1
            Transparent = True
            Width = 105
          end
          object DbChckBxEnergiaOutras: TcxDBCheckBox
            Left = 24
            Top = 61
            Caption = 'Outras fontes'
            DataBinding.DataField = 'PRO_ENERGIA_OUTRAS'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 2
            Transparent = True
            Width = 105
          end
        end
        object GrpBxAgua: TcxGroupBox
          Left = 512
          Top = 174
          Anchors = [akLeft, akTop, akRight]
          Caption = #193'gua'
          ParentBackground = False
          ParentColor = False
          TabOrder = 16
          Height = 113
          Width = 257
          object DbChckBxAgua: TcxDBCheckBox
            Left = 8
            Top = 16
            Caption = 'Possui sistema de abastecimento de '#225'gua:'
            DataBinding.DataField = 'PRO_AGUA_SITUACAO'
            DataBinding.DataSource = DtSrcPrincipal
            ParentColor = False
            Properties.ImmediatePost = True
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 0
            Transparent = True
            OnClick = DbChckBxAguaClick
            Width = 224
          end
          object DbChckBxAguaConcessionaria: TcxDBCheckBox
            Left = 24
            Top = 40
            Caption = 'Concession'#225'ria'
            DataBinding.DataField = 'PRO_AGUA_CONCESSIONARIA'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 1
            Transparent = True
            Width = 105
          end
          object DbChckBxAguaPocoArtesiano: TcxDBCheckBox
            Left = 24
            Top = 61
            Caption = 'Po'#231'o artesiano'
            DataBinding.DataField = 'PRO_AGUA_POCO_ARTESIANO'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 2
            Transparent = True
            Width = 105
          end
          object DbChckBxAguaPocoAmazonico: TcxDBCheckBox
            Left = 24
            Top = 82
            Caption = 'Po'#231'o amaz'#244'nico'
            DataBinding.DataField = 'PRO_AGUA_POCO_AMAZONICO'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 3
            Transparent = True
            Width = 105
          end
          object DbChckBxAguaRio: TcxDBCheckBox
            Left = 144
            Top = 40
            Caption = 'Rio ou igarap'#233
            DataBinding.DataField = 'PRO_AGUA_RIO'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 4
            Transparent = True
            Width = 105
          end
          object DbChckBxAguaOutras: TcxDBCheckBox
            Left = 144
            Top = 61
            Caption = 'Outras fontes'
            DataBinding.DataField = 'PRO_AGUA_OUTRAS'
            DataBinding.DataSource = DtSrcPrincipal
            Enabled = False
            ParentColor = False
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            Style.StyleController = DtmRecursoModulo.cxEditStyleController
            TabOrder = 5
            Transparent = True
            Width = 105
          end
        end
        object DbLkpCmbBxOcupacao: TcxDBLookupComboBox
          Left = 592
          Top = 152
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'OCT_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'OCT_ID'
          Properties.ListColumns = <
            item
              FieldName = 'OCT_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          TabOrder = 12
          Width = 177
        end
        object DbLkpCmbBxDocumento: TcxDBLookupComboBox
          Left = 368
          Top = 152
          DataBinding.DataField = 'DCT_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'DCT_ID'
          Properties.ListColumns = <
            item
              FieldName = 'DCT_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          TabOrder = 11
          Width = 217
        end
        object DbEdtReceita: TcxDBCurrencyEdit
          Left = 176
          Top = 184
          DataBinding.DataField = 'PRO_RECEITA_ANUAL'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 13
          Width = 97
        end
        object DbEdtData: TcxDBDateEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'PRO_DATA'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 17
          Width = 89
        end
      end
      object GrpBxGeo: TcxGroupBox
        Left = 8
        Top = 304
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es geogr'#225'ficas'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        DesignSize = (
          373
          99)
        Height = 99
        Width = 373
        object Label15: TLabel
          Left = 8
          Top = 19
          Width = 43
          Height = 13
          Caption = 'Latitude:'
          Transparent = True
        end
        object Label19: TLabel
          Left = 8
          Top = 43
          Width = 51
          Height = 13
          Caption = 'Longitude:'
          Transparent = True
        end
        object Label40: TLabel
          Left = 156
          Top = 43
          Width = 8
          Height = 13
          Caption = '='
          Transparent = True
        end
        object Label41: TLabel
          Left = 156
          Top = 19
          Width = 8
          Height = 13
          Caption = '='
          Transparent = True
        end
        object Label42: TLabel
          Left = 219
          Top = 19
          Width = 5
          Height = 13
          Caption = #186
          FocusControl = DbEdtLatGraus
          Transparent = True
        end
        object Label48: TLabel
          Left = 219
          Top = 43
          Width = 5
          Height = 13
          Caption = #186
          FocusControl = DbEdtLatGraus
          Transparent = True
        end
        object Label11: TLabel
          Left = 291
          Top = 19
          Width = 2
          Height = 13
          Caption = #39
          FocusControl = DbEdtLatMinutos
          Transparent = True
        end
        object Label14: TLabel
          Left = 291
          Top = 43
          Width = 2
          Height = 13
          Caption = #39
          FocusControl = DbEdtLatMinutos
          Transparent = True
        end
        object Label49: TLabel
          Left = 365
          Top = 19
          Width = 4
          Height = 13
          Caption = #39#39
          FocusControl = DbEdtLatMinutos
          Transparent = True
        end
        object Label50: TLabel
          Left = 365
          Top = 43
          Width = 4
          Height = 13
          Caption = #39#39
          FocusControl = DbEdtLatMinutos
          Transparent = True
        end
        object Label13: TLabel
          Left = 8
          Top = 67
          Width = 39
          Height = 13
          Caption = 'DATUM:'
          Transparent = True
        end
        object DbEdtLatGraus: TcxDBTextEdit
          Left = 168
          Top = 15
          DataBinding.DataField = 'PRO_LATITUDE_GRAUS'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.MaxLength = 2
          TabOrder = 1
          Width = 49
        end
        object DbEdtLatMinutos: TcxDBTextEdit
          Left = 240
          Top = 15
          DataBinding.DataField = 'PRO_LATITUDE_MINUTOS'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.MaxLength = 2
          TabOrder = 2
          Width = 49
        end
        object DbEdtLatSegundos: TcxDBTextEdit
          Left = 312
          Top = 15
          DataBinding.DataField = 'PRO_LATITUDE_SEGUNDOS'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.MaxLength = 5
          TabOrder = 3
          Width = 49
        end
        object DbEdtLongGraus: TcxDBTextEdit
          Left = 168
          Top = 39
          DataBinding.DataField = 'PRO_LONGITUDE_GRAUS'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.MaxLength = 2
          TabOrder = 5
          Width = 49
        end
        object DbEdtLongMinutos: TcxDBTextEdit
          Left = 240
          Top = 39
          DataBinding.DataField = 'PRO_LONGITUDE_MINUTOS'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.MaxLength = 2
          TabOrder = 6
          Width = 49
        end
        object DbEdtLongSegundos: TcxDBTextEdit
          Left = 312
          Top = 39
          DataBinding.DataField = 'PRO_LONGITUDE_SEGUNDOS'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.MaxLength = 5
          TabOrder = 7
          Width = 49
        end
        object DbImgCmbBxLatHemisferio: TcxDBImageComboBox
          Left = 80
          Top = 15
          DataBinding.DataField = 'PRO_LATITUDE_HEMISFERIO'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.Items = <
            item
              Description = 'N - Norte'
              ImageIndex = 0
              Value = 'N'
            end
            item
              Description = 'S - Sul'
              Value = 'S'
            end
            item
              Description = 'E - Leste'
              Value = 'E'
            end
            item
              Description = 'W - Oeste'
              Value = 'W'
            end>
          TabOrder = 0
          Width = 73
        end
        object DbImgCmbBxHemisferio: TcxDBImageComboBox
          Left = 80
          Top = 39
          DataBinding.DataField = 'PRO_LONGITUDE_HEMISFERIO'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.Items = <
            item
              Description = 'N - Norte'
              ImageIndex = 0
              Value = 'N'
            end
            item
              Description = 'S - Sul'
              Value = 'S'
            end
            item
              Description = 'E - Leste'
              Value = 'E'
            end
            item
              Description = 'W - Oeste'
              Value = 'W'
            end>
          TabOrder = 4
          Width = 73
        end
        object DbLkpCmbBxDatum: TcxDBLookupComboBox
          Left = 80
          Top = 63
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'DAT_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'DAT_ID'
          Properties.ListColumns = <
            item
              FieldName = 'DAT_NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          TabOrder = 8
          Width = 277
        end
      end
      object GrpBxTerra: TcxGroupBox
        Left = 388
        Top = 304
        Anchors = [akTop, akRight]
        Caption = 'Condi'#231#227'o da terra'
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        Height = 217
        Width = 397
        object Shape2: TShape
          Left = 240
          Top = 183
          Width = 145
          Height = 18
          Brush.Style = bsClear
          Pen.Color = 4092194
        end
        object DbTxtTotal: TDBText
          Left = 328
          Top = 185
          Width = 53
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'PRO_AREA_TOTAL_PERC'
          DataSource = DtSrcPrincipal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Tag = 2
          Left = 8
          Top = 24
          Width = 75
          Height = 13
          Caption = #193'rea legal (ha):'
          FocusControl = DbEdtAreaLegal
          Transparent = True
        end
        object Label21: TLabel
          Tag = 2
          Left = 8
          Top = 64
          Width = 71
          Height = 13
          Caption = #193'rea real (ha):'
          FocusControl = DbEdtAreaReal
          Transparent = True
        end
        object Label23: TLabel
          Left = 197
          Top = 43
          Width = 40
          Height = 13
          Caption = 'APP (*):'
          FocusControl = DbEdtTerraNua
          Transparent = True
        end
        object Label24: TLabel
          Left = 186
          Top = 67
          Width = 51
          Height = 13
          Caption = 'Pastagem:'
          FocusControl = DbEdtPastagem
          Transparent = True
        end
        object Label25: TLabel
          Left = 137
          Top = 92
          Width = 100
          Height = 13
          Caption = 'Cultura permanente:'
          FocusControl = DbEdtPermanente
          Transparent = True
        end
        object Label26: TLabel
          Left = 143
          Top = 116
          Width = 94
          Height = 13
          Caption = 'Cultura tempor'#225'ria:'
          FocusControl = DbEdtTemporaria
          Transparent = True
        end
        object Label27: TLabel
          Left = 168
          Top = 139
          Width = 69
          Height = 13
          Caption = 'Reserva legal:'
          FocusControl = DbEdtReserva
          Transparent = True
        end
        object Label28: TLabel
          Left = 200
          Top = 163
          Width = 37
          Height = 13
          Caption = 'Outros:'
          FocusControl = DbEdtOutros
          Transparent = True
        end
        object Label29: TLabel
          Left = 240
          Top = 24
          Width = 71
          Height = 13
          Caption = #193'rea real (ha):'
          FocusControl = DbEdtAreaReal
          Transparent = True
        end
        object Label30: TLabel
          Left = 344
          Top = 24
          Width = 15
          Height = 13
          Caption = '%:'
          FocusControl = DbEdtAreaReal
          Transparent = True
        end
        object Label9: TLabel
          Left = 209
          Top = 185
          Width = 28
          Height = 13
          Caption = 'Total:'
          FocusControl = DbEdtAreaReal
          Transparent = True
        end
        object DbTxtTotalArea: TDBText
          Left = 241
          Top = 185
          Width = 76
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'PRO_AREA_TOTAL_REAL'
          DataSource = DtSrcPrincipal
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label12: TLabel
          Left = 8
          Top = 187
          Width = 183
          Height = 13
          Caption = '(*) '#193'rea de preserva'#231#227'o permanente.'
          FocusControl = DbEdtTerraNua
          Transparent = True
        end
        object DbEdtAreaLegal: TcxDBCalcEdit
          Left = 8
          Top = 40
          DataBinding.DataField = 'PRO_AREA_LEGAL'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 0
          Width = 113
        end
        object DbEdtAreaReal: TcxDBCalcEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'PRO_AREA_REAL'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 1
          Width = 113
        end
        object DbEdtTerraNua: TcxDBCalcEdit
          Left = 240
          Top = 39
          DataBinding.DataField = 'PRO_AREA_NUA'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 2
          Width = 97
        end
        object DbEdtPastagem: TcxDBCalcEdit
          Left = 240
          Top = 63
          DataBinding.DataField = 'PRO_AREA_PASTAGEM'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 4
          Width = 97
        end
        object DbEdtPermanente: TcxDBCalcEdit
          Left = 240
          Top = 87
          DataBinding.DataField = 'PRO_AREA_PERMANENTE'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 6
          Width = 97
        end
        object DbEdtTemporaria: TcxDBCalcEdit
          Left = 240
          Top = 111
          DataBinding.DataField = 'PRO_AREA_TEMPORARIA'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 8
          Width = 97
        end
        object DbEdtReserva: TcxDBCalcEdit
          Left = 240
          Top = 135
          DataBinding.DataField = 'PRO_AREA_RESERVA'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 10
          Width = 97
        end
        object DbEdtOutros: TcxDBCalcEdit
          Left = 240
          Top = 159
          DataBinding.DataField = 'PRO_AREA_OUTROS'
          DataBinding.DataSource = DtSrcPrincipal
          TabOrder = 12
          Width = 97
        end
        object DbEdtTerraNuaPerc: TcxDBTextEdit
          Left = 344
          Top = 39
          TabStop = False
          DataBinding.DataField = 'PRO_AREA_NUA_PERC'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ReadOnly = True
          TabOrder = 3
          Width = 41
        end
        object DbEdtPastagemPerc: TcxDBTextEdit
          Left = 344
          Top = 63
          TabStop = False
          DataBinding.DataField = 'PRO_AREA_PASTAGEM_PERC'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ReadOnly = True
          TabOrder = 5
          Width = 41
        end
        object DbEdtPermanentePerc: TcxDBTextEdit
          Left = 344
          Top = 87
          TabStop = False
          DataBinding.DataField = 'PRO_AREA_PERMANENTE_PERC'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ReadOnly = True
          TabOrder = 7
          Width = 41
        end
        object DbEdtTemporariaPerc: TcxDBTextEdit
          Left = 344
          Top = 111
          TabStop = False
          DataBinding.DataField = 'PRO_AREA_TEMPORARIA_PERC'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ReadOnly = True
          TabOrder = 9
          Width = 41
        end
        object DbEdtReservaPerc: TcxDBTextEdit
          Left = 344
          Top = 135
          TabStop = False
          DataBinding.DataField = 'PRO_AREA_RESERVA_PERC'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ReadOnly = True
          TabOrder = 11
          Width = 41
        end
        object DbEdtOutrosPerc: TcxDBTextEdit
          Left = 344
          Top = 159
          TabStop = False
          DataBinding.DataField = 'PRO_AREA_OUTROS_PERC'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.ReadOnly = True
          TabOrder = 13
          Width = 41
        end
      end
      object GrpBxRegistro: TcxGroupBox
        Left = 8
        Top = 403
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es do registro'
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        DesignSize = (
          373
          118)
        Height = 118
        Width = 373
        object Label31: TLabel
          Left = 8
          Top = 44
          Width = 48
          Height = 13
          Caption = 'Escrit'#243'rio:'
          Transparent = True
        end
        object Label32: TLabel
          Tag = 2
          Left = 8
          Top = 20
          Width = 101
          Height = 13
          Caption = 'T'#233'cnico respons'#225'vel:'
          Transparent = True
        end
        object Label44: TLabel
          Left = 8
          Top = 64
          Width = 121
          Height = 13
          Caption = 'Data da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoData
          Transparent = True
        end
        object Label45: TLabel
          Left = 136
          Top = 64
          Width = 134
          Height = 13
          Caption = 'Usu'#225'rio da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoUsuario
          Transparent = True
        end
        object DbLkpCmbBxTecnico: TcxDBLookupComboBox
          Left = 120
          Top = 16
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'FUN_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'FUN_ID'
          Properties.ListColumns = <
            item
              FieldName = 'FUN_NOME'
            end
            item
              FieldName = 'FUN_MATRICULA'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          TabOrder = 0
          Width = 241
        end
        object DbLkpCmbBxUnidade: TcxDBLookupComboBox
          Left = 120
          Top = 40
          TabStop = False
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'UND_ID'
          DataBinding.DataSource = DtSrcPrincipal
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'UND_ID'
          Properties.ListColumns = <
            item
              FieldName = 'UND_NOME_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.PostPopupValueOnTab = True
          Properties.ReadOnly = True
          TabOrder = 1
          Width = 241
        end
        object DbEdtModificadoData: TcxDBTextEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'REG_MODIFICADO'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 2
          Width = 121
        end
        object DbEdtModificadoUsuario: TcxDBTextEdit
          Left = 136
          Top = 80
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'PRO_MODIFICADO_USUARIO_NOME'
          DataBinding.DataSource = DtSrcPrincipal
          Enabled = False
          TabOrder = 3
          Width = 225
        end
      end
    end
    object TbShtBeneficiarios: TcxTabSheet
      Caption = 'Benefici'#225'rios'
      ImageIndex = 6
      OnShow = TbShtBeneficiariosShow
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        805
        534)
      object GrdBen: TcxGrid
        Left = 8
        Top = 40
        Width = 777
        Height = 470
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 781
        ExplicitHeight = 476
        object GrdBenTbl: TcxGridDBTableView
          OnDblClick = GrdBenTblDblClick
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
          DataController.DataSource = DtSrcProducaoBeneficiario
          DataController.KeyFieldNames = 'BEN_ID'
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
          object GrdBenTblBEN_NOME: TcxGridDBColumn
            DataBinding.FieldName = 'BEN_NOME'
            Width = 292
          end
          object GrdBenTblBEN_CPF: TcxGridDBColumn
            DataBinding.FieldName = 'BEN_CPF'
            Width = 109
          end
          object GrdBenTblBEN_SEXO: TcxGridDBColumn
            DataBinding.FieldName = 'BEN_SEXO'
            Width = 89
          end
          object GrdBenTblBEN_NASCIMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'BEN_NASCIMENTO'
            Width = 101
          end
        end
        object GrdBenLvl: TcxGridLevel
          GridView = GrdBenTbl
        end
      end
      object BtnBenExcluir: TcxButton
        Tag = 1
        Left = 128
        Top = 8
        Width = 113
        Height = 25
        Hint = 'Excluir benefici'#225'rio da unidade'
        Caption = 'Excluir benefici'#225'rio'
        Description = 'Exclui o benefici'#225'rio vinculado a esta unidade de produ'#231#227'o.'
        TabOrder = 1
        OnClick = BtnBenExcluirClick
      end
      object BtnBenIncluir: TcxButton
        Tag = 1
        Left = 8
        Top = 8
        Width = 113
        Height = 25
        Hint = 'Inserir benefici'#225'rio na unidade'
        Caption = 'Incluir benefici'#225'rio...'
        Description = 'Insere um benefici'#225'rio vinculado a esta unidade de produ'#231#227'o.'
        TabOrder = 0
        OnClick = BtnBenIncluirClick
      end
      object BtnBenVisualizar: TcxButton
        Tag = 1
        Left = 248
        Top = 8
        Width = 113
        Height = 25
        Hint = 'Visualizar benefici'#225'rio da unidade'
        Caption = 'Visualizar benefici'#225'rio'
        Description = 'Visualiza o benefici'#225'rio atualmente selecionado.'
        TabOrder = 2
        OnClick = BtnBenVisualizarClick
      end
    end
    object TbShtBenfeitorias: TcxTabSheet
      Caption = 'Benfeitorias'
      ImageIndex = 2
      OnShow = TbShtBenfeitoriasShow
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        805
        534)
      object GrdPrdBem: TcxGrid
        Left = 8
        Top = 184
        Width = 777
        Height = 326
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
        ExplicitWidth = 781
        ExplicitHeight = 332
        object GrdPrdBemTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcProducaoBem
          DataController.KeyFieldNames = 'PBE_ID'
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
          object GrdPrdBemTblBEM_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o da benfeitoria'
            DataBinding.FieldName = 'BEM_DESCRICAO'
            Width = 390
          end
          object GrdPrdBemTblBEM_ESTADO: TcxGridDBColumn
            DataBinding.FieldName = 'BEM_ESTADO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                Description = #211'timo'
                ImageIndex = 48
                Value = 1
              end
              item
                Description = 'Bom'
                ImageIndex = 108
                Value = 2
              end
              item
                Description = 'Razo'#225'vel'
                ImageIndex = 115
                Value = 3
              end
              item
                Description = 'Ruim'
                ImageIndex = 47
                Value = 4
              end>
            Width = 133
          end
          object GrdPrdBemTblBEM_DATA: TcxGridDBColumn
            DataBinding.FieldName = 'BEM_DATA'
            MinWidth = 75
          end
          object GrdPrdBemTblBEM_QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'BEM_QUANTIDADE'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object GrdPrdBemTblCLS_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'CLS_DESCRICAO'
            Width = 137
          end
        end
        object GrdPrdBemLvl: TcxGridLevel
          GridView = GrdPrdBemTbl
        end
      end
      object GRpBxBenfeitorias: TcxGroupBox
        Left = 8
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es da benfeitoria'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          777
          81)
        Height = 81
        Width = 777
        object Label10: TLabel
          Tag = 2
          Left = 8
          Top = 24
          Width = 120
          Height = 13
          Caption = 'Descri'#231#227'o da benfeitoria:'
          Transparent = True
        end
        object Label33: TLabel
          Left = 656
          Top = 24
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Quantidade:'
          FocusControl = DbEdtQuantidade
          Transparent = True
          ExplicitLeft = 664
        end
        object Label34: TLabel
          Tag = 2
          Left = 408
          Top = 24
          Width = 37
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Estado:'
          Transparent = True
          ExplicitLeft = 416
        end
        object Label46: TLabel
          Left = 552
          Top = 24
          Width = 87
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Data de cadastro:'
          FocusControl = EdtDataBem
          Transparent = True
          ExplicitLeft = 560
        end
        object DbLkpCmbBxBenfeitoria: TcxDBLookupComboBox
          Left = 8
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'BEM_ID'
          DataBinding.DataSource = DtSrcProducaoBem
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'BEM_ID'
          Properties.ListColumns = <
            item
              FieldName = 'BEM_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcBem
          Properties.PostPopupValueOnTab = True
          TabOrder = 0
          Width = 393
        end
        object DbEdtQuantidade: TcxDBSpinEdit
          Left = 656
          Top = 40
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'BEM_QUANTIDADE'
          DataBinding.DataSource = DtSrcProducaoBem
          TabOrder = 3
          ExplicitLeft = 660
          Width = 113
        end
        object DbImgCmbBxEstado: TcxDBImageComboBox
          Left = 408
          Top = 40
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'BEM_ESTADO'
          DataBinding.DataSource = DtSrcProducaoBem
          Properties.Images = DtmRecursoModulo.ImgLstPequenas
          Properties.Items = <
            item
              Description = #211'timo'
              ImageIndex = 48
              Value = 1
            end
            item
              Description = 'Bom'
              ImageIndex = 108
              Value = 2
            end
            item
              Description = 'Razo'#225'vel'
              ImageIndex = 115
              Value = 3
            end
            item
              Description = 'Ruim'
              ImageIndex = 47
              Value = 4
            end>
          TabOrder = 1
          ExplicitLeft = 412
          Width = 137
        end
        object EdtDataBem: TcxDBDateEdit
          Left = 552
          Top = 40
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'BEM_DATA'
          DataBinding.DataSource = DtSrcProducaoBem
          Properties.ReadOnly = False
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 2
          ExplicitLeft = 556
          Width = 97
        end
      end
      object BtnBemNovo: TcxButton
        Tag = 1
        Left = 8
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Inserir nova benfeitoria'
        Caption = 'Novo'
        Description = 'Cria um novo registro de benfeitoria.'
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnBemNovoClick
      end
      object BtnBemSalvar: TcxButton
        Tag = 1
        Left = 88
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Salvar altera'#231#245'es na benfeitoria'
        Caption = 'Salvar'
        Description = 'Salva as altera'#231#245'es realizadas na benfeitoria.'
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnBemSalvarClick
      end
      object BtnBemCancelar: TcxButton
        Tag = 1
        Left = 168
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Cancelar altera'#231#245'es na benfeitoria'
        Caption = 'Cancelar'
        Description = 'Cancela as altera'#231#245'es realizadas na benfeitoria.'
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnBemCancelarClick
      end
      object BtnBemExcluir: TcxButton
        Tag = 1
        Left = 248
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Excluir benfeitoria'
        Caption = 'Excluir'
        Description = 'Exclui a benfeitoria atualmente selecionada.'
        TabOrder = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnBemExcluirClick
      end
      object GrpBxBeneficiario: TcxGroupBox
        Left = 8
        Top = 0
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Benefici'#225'rio'
        ParentBackground = False
        ParentColor = False
        TabOrder = 6
        DesignSize = (
          777
          59)
        Height = 59
        Width = 777
        object cxDBNavigator1: TcxDBNavigator
          Left = 8
          Top = 19
          Width = 94
          Height = 25
          Buttons.CustomButtons = <>
          Buttons.PriorPage.Visible = False
          Buttons.NextPage.Visible = False
          Buttons.Insert.Visible = False
          Buttons.Append.Visible = False
          Buttons.Delete.Visible = False
          Buttons.Edit.Visible = False
          Buttons.Post.Visible = False
          Buttons.Cancel.Visible = False
          Buttons.Refresh.Visible = False
          Buttons.SaveBookmark.Visible = False
          Buttons.GotoBookmark.Visible = False
          Buttons.Filter.Visible = False
          DataSource = DtSrcProducaoBeneficiario
          TabOrder = 0
        end
        object DbEdtBeneficiario: TcxDBTextEdit
          Left = 108
          Top = 18
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'BEN_NOME'
          DataBinding.DataSource = DtSrcProducaoBeneficiario
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 487
        end
        object DbEdtCPF: TcxDBTextEdit
          Left = 600
          Top = 18
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'BEN_CPF'
          DataBinding.DataSource = DtSrcProducaoBeneficiario
          ParentFont = False
          Properties.Alignment.Horz = taCenter
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          ExplicitLeft = 604
          Width = 169
        end
      end
    end
    object TbShtMaquinas: TcxTabSheet
      Caption = 'M'#225'quinas e equipamentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      OnShow = TbShtMaquinasShow
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        805
        534)
      object GrdPrdMaq: TcxGrid
        Left = 8
        Top = 184
        Width = 777
        Height = 326
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
        ExplicitWidth = 781
        ExplicitHeight = 332
        object GrdPrdMaqTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcProducaoBem
          DataController.KeyFieldNames = 'PBE_ID'
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
          object GrdPrdMaqTblBEM_DESCRICAO: TcxGridDBColumn
            Caption = 'Descri'#231#227'o da m'#225'quina ou equipamento'
            DataBinding.FieldName = 'BEM_DESCRICAO'
            Width = 390
          end
          object GrdPrdMaqTblBEM_ESTADO: TcxGridDBColumn
            DataBinding.FieldName = 'BEM_ESTADO'
            PropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.Images = DtmRecursoModulo.ImgLstPequenas
            Properties.Items = <
              item
                Description = #211'timo'
                ImageIndex = 48
                Value = 1
              end
              item
                Description = 'Bom'
                ImageIndex = 108
                Value = 2
              end
              item
                Description = 'Razo'#225'vel'
                ImageIndex = 115
                Value = 3
              end
              item
                Description = 'Ruim'
                ImageIndex = 47
                Value = 4
              end>
            Width = 133
          end
          object GrdPrdMaqTblBEM_DATA: TcxGridDBColumn
            DataBinding.FieldName = 'BEM_DATA'
            MinWidth = 75
          end
          object GrdPrdMaqTblBEM_QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'BEM_QUANTIDADE'
            HeaderAlignmentHorz = taCenter
            Width = 65
          end
          object GrdPrdMaqTblCLS_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'CLS_DESCRICAO'
            Width = 137
          end
        end
        object GrdPrdMaqLvl: TcxGridLevel
          GridView = GrdPrdMaqTbl
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 8
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es da m'#225'quina ou equipamento'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        DesignSize = (
          777
          81)
        Height = 81
        Width = 777
        object Label35: TLabel
          Tag = 2
          Left = 8
          Top = 24
          Width = 188
          Height = 13
          Caption = 'Descri'#231#227'o da m'#225'quina ou equipamento:'
          Transparent = True
        end
        object Label36: TLabel
          Left = 656
          Top = 24
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Quantidade:'
          FocusControl = DbEdtMaquinaQtde
          Transparent = True
          ExplicitLeft = 664
        end
        object Label37: TLabel
          Tag = 2
          Left = 408
          Top = 24
          Width = 37
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Estado:'
          Transparent = True
          ExplicitLeft = 416
        end
        object Label47: TLabel
          Left = 552
          Top = 24
          Width = 87
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Data de cadastro:'
          FocusControl = EdtDataEquipamento
          Transparent = True
          ExplicitLeft = 560
        end
        object DbLkpCmbBxMaquina: TcxDBLookupComboBox
          Left = 8
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'BEM_ID'
          DataBinding.DataSource = DtSrcProducaoBem
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'BEM_ID'
          Properties.ListColumns = <
            item
              FieldName = 'BEM_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcBem
          Properties.PostPopupValueOnTab = True
          TabOrder = 0
          Width = 393
        end
        object DbEdtMaquinaQtde: TcxDBSpinEdit
          Left = 656
          Top = 40
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'BEM_QUANTIDADE'
          DataBinding.DataSource = DtSrcProducaoBem
          TabOrder = 3
          ExplicitLeft = 660
          Width = 113
        end
        object DbImgCmbBxMaquinaEstado: TcxDBImageComboBox
          Left = 408
          Top = 40
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'BEM_ESTADO'
          DataBinding.DataSource = DtSrcProducaoBem
          Properties.Images = DtmRecursoModulo.ImgLstPequenas
          Properties.Items = <
            item
              Description = #211'timo'
              ImageIndex = 48
              Value = 1
            end
            item
              Description = 'Bom'
              ImageIndex = 108
              Value = 2
            end
            item
              Description = 'Razo'#225'vel'
              ImageIndex = 115
              Value = 3
            end
            item
              Description = 'Ruim'
              ImageIndex = 47
              Value = 4
            end>
          TabOrder = 1
          ExplicitLeft = 412
          Width = 137
        end
        object EdtDataEquipamento: TcxDBDateEdit
          Left = 552
          Top = 40
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'BEM_DATA'
          DataBinding.DataSource = DtSrcProducaoBem
          Properties.ReadOnly = False
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 2
          ExplicitLeft = 556
          Width = 97
        end
      end
      object BtnMaqNovo: TcxButton
        Tag = 1
        Left = 8
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Inserir nova m'#225'quina ou equipamento'
        Caption = 'Novo'
        Description = 'Cria um novo registro de m'#225'quina ou equipamento.'
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnBemNovoClick
      end
      object BtnMaqSalvar: TcxButton
        Tag = 1
        Left = 88
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Salvar altera'#231#245'es na m'#225'quina ou equipamento'
        Caption = 'Salvar'
        Description = 
          'Salva as altera'#231#245'es realizadas no registro da m'#225'quina ou equipam' +
          'ento.'
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnBemSalvarClick
      end
      object BtnMaqCancelar: TcxButton
        Tag = 1
        Left = 168
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Cancelar altera'#231#245'es na m'#225'quina ou equipamento'
        Caption = 'Cancelar'
        Description = 
          'Cancela as altera'#231#245'es realizadas no registro da m'#225'quina ou equip' +
          'amento.'
        TabOrder = 4
        OnClick = BtnBemCancelarClick
      end
      object BtnMaqExcluir: TcxButton
        Tag = 1
        Left = 248
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Excluir m'#225'quina ou equipamento'
        Caption = 'Excluir'
        Description = 'Exclui a m'#225'quina ou equipamento atualmente selecionada.'
        TabOrder = 5
        OnClick = BtnBemExcluirClick
      end
    end
    object TbShtSemoventes: TcxTabSheet
      Caption = 'Semoventes'
      ImageIndex = 4
      OnShow = TbShtSemoventesShow
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        805
        534)
      object GrdPrdSem: TcxGrid
        Left = 8
        Top = 184
        Width = 777
        Height = 326
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
        ExplicitWidth = 781
        ExplicitHeight = 332
        object GrdPrdSemTbl: TcxGridDBTableView
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
          DataController.DataSource = DtSrcProducaoSemovente
          DataController.KeyFieldNames = 'PSE_ID'
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
          object GrdPrdSemTblPRD_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_DESCRICAO'
            Width = 696
          end
          object GrdPrdSemTblPRD_QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_QUANTIDADE'
            Width = 83
          end
        end
        object GrdPrdSemLvl: TcxGridLevel
          GridView = GrdPrdSemTbl
        end
      end
      object GrpBxSemovente: TcxGroupBox
        Left = 8
        Top = 64
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Informa'#231#245'es do semovente'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        DesignSize = (
          777
          81)
        Height = 81
        Width = 777
        object Label38: TLabel
          Tag = 2
          Left = 8
          Top = 24
          Width = 121
          Height = 13
          Caption = 'Descri'#231#227'o do semovente:'
          Transparent = True
        end
        object Label39: TLabel
          Left = 680
          Top = 24
          Width = 60
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Quantidade:'
          FocusControl = DbEdtSemoventeQtde
          Transparent = True
          ExplicitLeft = 684
        end
        object DbLkpCmbBxSemovente: TcxDBLookupComboBox
          Left = 8
          Top = 40
          Anchors = [akLeft, akTop, akRight]
          DataBinding.DataField = 'PRD_ID'
          DataBinding.DataSource = DtSrcProducaoSemovente
          Properties.DropDownRows = 16
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'PRD_ID'
          Properties.ListColumns = <
            item
              FieldName = 'PRD_DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DtSrcSemovente
          Properties.PostPopupValueOnTab = True
          TabOrder = 0
          Width = 665
        end
        object DbEdtSemoventeQtde: TcxDBSpinEdit
          Left = 680
          Top = 40
          Anchors = [akTop, akRight]
          DataBinding.DataField = 'PRD_QUANTIDADE'
          DataBinding.DataSource = DtSrcProducaoSemovente
          TabOrder = 1
          ExplicitLeft = 684
          Width = 89
        end
      end
      object BtnSemNovo: TcxButton
        Tag = 1
        Left = 8
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Inserir novo semovente'
        Caption = 'Novo'
        Description = 'Cria um novo registro de semovente.'
        TabOrder = 2
        OnClick = BtnSemNovoClick
      end
      object BtnSemSalvar: TcxButton
        Tag = 1
        Left = 88
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Salvar altera'#231#245'es no semovente'
        Caption = 'Salvar'
        Description = 'Salva as altera'#231#245'es realizadas no registro do semovente.'
        TabOrder = 3
        OnClick = BtnSemSalvarClick
      end
      object BtnSemCancelar: TcxButton
        Tag = 1
        Left = 168
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Cancelar altera'#231#245'es no semovente'
        Caption = 'Cancelar'
        Description = 'Cancela as altera'#231#245'es realizadas no registro do semovente.'
        TabOrder = 4
        OnClick = BtnSemCancelarClick
      end
      object BtnSemExcluir: TcxButton
        Tag = 1
        Left = 248
        Top = 152
        Width = 75
        Height = 25
        Hint = 'Excluir semovente'
        Caption = 'Excluir'
        Description = 'Exclui o semovente atualmente selecionado.'
        TabOrder = 5
        OnClick = BtnSemExcluirClick
      end
    end
    object TbShtAtividades: TcxTabSheet
      Caption = 'Atividades produtivas e comercializa'#231#227'o'
      ImageIndex = 5
      OnShow = TbShtAtividadesShow
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        805
        534)
      object GrdPrdAtv: TcxGrid
        Left = 8
        Top = 99
        Width = 777
        Height = 193
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 781
        object GrdPrdAtvTbl: TcxGridDBTableView
          OnDblClick = GrdPrdAtvTblDblClick
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
          DataController.DataSource = DtSrcProducaoAtividade
          DataController.KeyFieldNames = 'ATV_ID'
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
          object GrdPrdAtvTblATV_PERIODO_PLANTIO: TcxGridDBColumn
            DataBinding.FieldName = 'ATV_PERIODO'
            Width = 68
          end
          object GrdPrdAtvTblSIP_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'SIP_DESCRICAO'
            Width = 139
          end
          object GrdPrdAtvTblPRD_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'PRD_DESCRICAO'
            Width = 218
          end
          object GrdPrdAtvTblATV_AREA_PLANTADA: TcxGridDBColumn
            DataBinding.FieldName = 'ATV_AREA_PLANTADA'
            Width = 106
          end
          object GrdPrdAtvTblATV_AREA_COLHIDA: TcxGridDBColumn
            DataBinding.FieldName = 'ATV_AREA_COLHIDA'
            Width = 97
          end
          object GrdPrdAtvTblATV_QUANTIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'ATV_QUANTIDADE'
            Width = 75
          end
          object GrdPrdAtvTblUNI_DESCRICAO: TcxGridDBColumn
            DataBinding.FieldName = 'UNI_DESCRICAO'
            Width = 80
          end
        end
        object GrdPrdAtvLvl: TcxGridLevel
          GridView = GrdPrdAtvTbl
        end
      end
      object BtnAtvIncluir: TcxButton
        Tag = 1
        Left = 8
        Top = 67
        Width = 137
        Height = 25
        Hint = 'Inserir atividade produtiva'
        Caption = 'Incluir produ'#231#227'o...'
        Description = 
          'Cria um novo registro de atividade produtiva na unidade de produ' +
          #231#227'o familiar.'
        TabOrder = 1
        OnClick = BtnAtvIncluirClick
      end
      object BtnAtvExcluir: TcxButton
        Tag = 1
        Left = 296
        Top = 67
        Width = 137
        Height = 25
        Hint = 'Excluir atividade produtiva'
        Caption = 'Excluir produ'#231#227'o'
        Description = 'Exclui o registro de atividade produtiva atualmente selecionado.'
        TabOrder = 2
        OnClick = BtnAtvExcluirClick
      end
      object GrdPrd: TcxGrid
        Left = 8
        Top = 336
        Width = 777
        Height = 174
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = True
        ExplicitWidth = 781
        ExplicitHeight = 180
        object GrdPrdTbl: TcxGridDBTableView
          OnDblClick = GrdPrdTblDblClick
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
          DataController.DataSource = DtSrcProducaoProduto
          DataController.KeyFieldNames = 'PRP_ID'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '#,##0.00'
              Kind = skSum
              Column = GrdPrdTblPRP_VALOR_TOTAL
            end>
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
          OptionsView.Footer = True
          OptionsView.GridLines = glNone
          OptionsView.GroupByBox = False
          OptionsView.HeaderEndEllipsis = True
          OptionsView.HeaderHeight = 21
          Styles.ContentEven = DtmRecursoModulo.cxStyleEven
          Styles.Inactive = DtmRecursoModulo.cxStyleSelection
          Styles.Selection = DtmRecursoModulo.cxStyleSelection
          object GrdPrdTblPRP_DESCRICAO_PRODUTO_DERIVADO: TcxGridDBColumn
            DataBinding.FieldName = 'PRP_DESCRICAO_PRODUTO_DERIVADO'
            Width = 206
          end
          object GrdPrdTblPRP_QTDE_CONSUMIDA: TcxGridDBColumn
            DataBinding.FieldName = 'PRP_QTDE_CONSUMIDA'
            Width = 86
          end
          object GrdPrdTblPRP_QTDE_COMERCIALIZADA: TcxGridDBColumn
            DataBinding.FieldName = 'PRP_QTDE_COMERCIALIZADA'
            Width = 90
          end
          object GrdPrdTblUNI_UNIDADE: TcxGridDBColumn
            DataBinding.FieldName = 'UNI_UNIDADE'
            Width = 77
          end
          object GrdPrdTblPRP_VALOR: TcxGridDBColumn
            DataBinding.FieldName = 'PRP_VALOR'
            Width = 88
          end
          object GrdPrdTblPRP_VALOR_TOTAL: TcxGridDBColumn
            DataBinding.FieldName = 'PRP_VALOR_TOTAL'
            Width = 95
          end
          object GrdPrdTblDESTINO: TcxGridDBColumn
            DataBinding.FieldName = 'DESTINO'
            Width = 141
          end
        end
        object GrdPrdLvl: TcxGridLevel
          GridView = GrdPrdTbl
        end
      end
      object BtnPrdIncluir: TcxButton
        Tag = 1
        Left = 8
        Top = 304
        Width = 137
        Height = 25
        Hint = 'Inserir detalhes da comercializa'#231#227'o da produ'#231#227'o'
        Caption = 'Incluir comercializa'#231#227'o...'
        Description = 
          'Cria um novo registro de detalhes da comercializa'#231#227'o da produ'#231#227'o' +
          '.'
        TabOrder = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = BtnPrdIncluirClick
      end
      object BtnPrdExcluir: TcxButton
        Tag = 1
        Left = 296
        Top = 304
        Width = 137
        Height = 25
        Hint = 'Excluir detalhes da comercializa'#231#227'o da produ'#231#227'o'
        Caption = 'Excluir comercializa'#231#227'o'
        Description = 
          'Exclui o registro dos detalhes da comercializa'#231#227'o da produ'#231#227'o at' +
          'ualmente selecionado.'
        TabOrder = 5
        OnClick = BtnPrdExcluirClick
      end
      object BtnAtvEditar: TcxButton
        Tag = 1
        Left = 152
        Top = 67
        Width = 137
        Height = 25
        Hint = 'Editar atividade produtiva'
        Caption = 'Editar produ'#231#227'o...'
        Description = 'Edita o registro de atividade produtiva atualmente selecionado.'
        TabOrder = 6
        OnClick = BtnAtvEditarClick
      end
      object BtnPrdEditar: TcxButton
        Tag = 1
        Left = 152
        Top = 304
        Width = 137
        Height = 25
        Hint = 'Editar detalhes da comercializa'#231#227'o da produ'#231#227'o'
        Caption = 'Editar comercializa'#231#227'o...'
        Description = 
          'Edita o registro atualmente selecionado dos detalhes da comercia' +
          'liza'#231#227'o da produ'#231#227'o.'
        TabOrder = 7
        OnClick = BtnPrdEditarClick
      end
    end
  end
  inherited BtnNovo: TcxButton
    Tag = 1
    Top = 598
    Hint = 'Inserir nova unidade de produ'#231#227'o'
    Description = 'Cria um novo registro de unidade de produ'#231#227'o.'
    ExplicitTop = 598
  end
  inherited BtnSalvar: TcxButton
    Tag = 1
    Top = 598
    Hint = 'Salvar altera'#231#245'es na unidade de produ'#231#227'o'
    Description = 
      'Salva as altera'#231#245'es realizadas no registro da unidade de produ'#231#227 +
      'o.'
    ExplicitTop = 598
  end
  inherited BtnCancelar: TcxButton
    Tag = 1
    Top = 598
    Hint = 'Cancelar altera'#231#245'es na unidade de produ'#231#227'o'
    Description = 
      'Cancela as altera'#231#245'es realizadas no registro da unidade de produ' +
      #231#227'o.'
    ExplicitTop = 598
  end
  inherited BtnExcluir: TcxButton
    Tag = 1
    Top = 598
    Hint = 'Excluir unidade de produ'#231#227'o'
    Description = 'Exclui a unidade de produ'#231#227'o atualmente selecionada.'
    ExplicitTop = 598
  end
  inherited BtnFechar: TcxButton
    Left = 738
    Top = 598
    ExplicitLeft = 738
    ExplicitTop = 598
  end
  inherited BtnRelatorio: TcxButton
    Top = 598
    ExplicitTop = 598
  end
  object PnlTop: TPanel [8]
    Left = 0
    Top = 0
    Width = 820
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    Color = 4551200
    ParentBackground = False
    TabOrder = 8
    object LblTitulo: TLabel
      Left = 0
      Top = 0
      Width = 743
      Height = 29
      Align = alClient
      AutoSize = False
      Caption = '      Unidade de Produ'#231#227'o Familiar'
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
      Left = 743
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
  inherited DtSrcPrincipal: TDataSource
    Left = 440
    Top = 168
  end
  inherited QryPrincipal: TFDQuery
    AfterPost = QryPrincipalAfterPost
    AfterScroll = QryPrincipalAfterScroll
    OnCalcFields = QryPrincipalCalcFields
    SQL.Strings = (
      'select '
      '  a.pro_id, '
      '  a.pro_data,'
      '  a.pro_denominacao, '
      '  a.pro_endereco, '
      '  a.pro_numero, '
      '  a.pro_complemento, '
      '  a.pro_bairro, '
      '  a.pro_cep,'
      '  a.pro_acesso, '
      '  a.pro_energia_situacao, '
      '  a.pro_energia_concessionaria, '
      '  a.pro_energia_outras, '
      '  a.pro_agua_situacao, '
      '  a.pro_agua_concessionaria, '
      '  a.pro_agua_poco_artesiano, '
      '  a.pro_agua_poco_amazonico, '
      '  a.pro_agua_rio, '
      '  a.pro_agua_outras, '
      '  a.pro_car, '
      '  a.pro_car_numero, '
      '  a.pro_car_data, '
      '  a.pro_receita_anual, '
      '  a.pro_latitude_graus, '
      '  a.pro_latitude_minutos, '
      '  a.pro_latitude_segundos, '
      '  a.pro_latitude_hemisferio, '
      '  a.pro_longitude_graus, '
      '  a.pro_longitude_minutos, '
      '  a.pro_longitude_segundos, '
      '  a.pro_longitude_hemisferio, '
      '  a.pro_area_legal, '
      '  a.pro_area_real, '
      '  a.pro_area_nua, '
      '  a.pro_area_pastagem, '
      '  a.pro_area_permanente, '
      '  a.pro_area_temporaria, '
      '  a.pro_area_reserva, '
      '  a.pro_area_outros, '
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.cid_id, '
      '  a.com_id, '
      '  a.fun_id, '
      '  a.und_id, '
      '  a.oct_id, '
      '  a.dct_id,'
      '  a.dat_id,'
      '  b.ufe_id,'
      
        '  '#39'('#39' || coalesce(c.usr_login, '#39'N'#227'o identificado'#39') || '#39') '#39' || co' +
        'alesce(d.fun_nome, '#39#39') as pro_modificado_usuario_nome'
      'from '
      
        '  tab_cad_producao_familiar a left join tab_dne_cidade b on (a.c' +
        'id_id = b.cid_id) left join'
      '  tab_sis_usuario c on (a.reg_usuario = c.usr_login) left join'
      '  tab_pes_funcionario d on (c.usr_id = d.usr_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.und_id in (select und_id from vwt_sis_unidade_local)) and'
      '  (a.pro_id = :pro_id)')
    Left = 376
    Top = 168
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QryPrincipalPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryPrincipalPRO_DENOMINACAO: TStringField
      DisplayLabel = 'Denomina'#231#227'o'
      FieldName = 'PRO_DENOMINACAO'
      Origin = 'PRO_DENOMINACAO'
      Required = True
      Size = 100
    end
    object QryPrincipalPRO_ENDERECO: TStringField
      FieldName = 'PRO_ENDERECO'
      Origin = 'PRO_ENDERECO'
      Size = 100
    end
    object QryPrincipalPRO_NUMERO: TStringField
      FieldName = 'PRO_NUMERO'
      Origin = 'PRO_NUMERO'
      Size = 10
    end
    object QryPrincipalPRO_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'PRO_DATA'
      Origin = 'PRO_DATA'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryPrincipalPRO_COMPLEMENTO: TStringField
      FieldName = 'PRO_COMPLEMENTO'
      Origin = 'PRO_COMPLEMENTO'
      Size = 50
    end
    object QryPrincipalPRO_BAIRRO: TStringField
      FieldName = 'PRO_BAIRRO'
      Origin = 'PRO_BAIRRO'
      Size = 50
    end
    object QryPrincipalPRO_CEP: TStringField
      FieldName = 'PRO_CEP'
      Origin = 'PRO_CEP'
      FixedChar = True
      Size = 8
    end
    object QryPrincipalPRO_ACESSO: TStringField
      FieldName = 'PRO_ACESSO'
      Origin = 'PRO_ACESSO'
      Size = 100
    end
    object QryPrincipalPRO_ENERGIA_SITUACAO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_ENERGIA_SITUACAO'
      Origin = 'PRO_ENERGIA_SITUACAO'
      Required = True
    end
    object QryPrincipalPRO_ENERGIA_CONCESSIONARIA: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_ENERGIA_CONCESSIONARIA'
      Origin = 'PRO_ENERGIA_CONCESSIONARIA'
      Required = True
    end
    object QryPrincipalPRO_ENERGIA_OUTRAS: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_ENERGIA_OUTRAS'
      Origin = 'PRO_ENERGIA_OUTRAS'
      Required = True
    end
    object QryPrincipalPRO_AGUA_SITUACAO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_AGUA_SITUACAO'
      Origin = 'PRO_AGUA_SITUACAO'
      Required = True
    end
    object QryPrincipalPRO_AGUA_CONCESSIONARIA: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_AGUA_CONCESSIONARIA'
      Origin = 'PRO_AGUA_CONCESSIONARIA'
      Required = True
    end
    object QryPrincipalPRO_AGUA_POCO_ARTESIANO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_AGUA_POCO_ARTESIANO'
      Origin = 'PRO_AGUA_POCO_ARTESIANO'
      Required = True
    end
    object QryPrincipalPRO_AGUA_POCO_AMAZONICO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_AGUA_POCO_AMAZONICO'
      Origin = 'PRO_AGUA_POCO_AMAZONICO'
      Required = True
    end
    object QryPrincipalPRO_AGUA_RIO: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_AGUA_RIO'
      Origin = 'PRO_AGUA_RIO'
      Required = True
    end
    object QryPrincipalPRO_AGUA_OUTRAS: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_AGUA_OUTRAS'
      Origin = 'PRO_AGUA_OUTRAS'
      Required = True
    end
    object QryPrincipalPRO_CAR: TSmallintField
      Alignment = taLeftJustify
      FieldName = 'PRO_CAR'
      Origin = 'PRO_CAR'
      Required = True
    end
    object QryPrincipalPRO_CAR_NUMERO: TStringField
      FieldName = 'PRO_CAR_NUMERO'
      Origin = 'PRO_CAR_NUMERO'
    end
    object QryPrincipalPRO_CAR_DATA: TDateField
      FieldName = 'PRO_CAR_DATA'
      Origin = 'PRO_CAR_DATA'
    end
    object QryPrincipalPRO_RECEITA_ANUAL: TBCDField
      DefaultExpression = '0'
      FieldName = 'PRO_RECEITA_ANUAL'
      Origin = 'PRO_RECEITA_ANUAL'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object QryPrincipalPRO_LATITUDE_GRAUS: TCurrencyField
      FieldName = 'PRO_LATITUDE_GRAUS'
      Origin = 'PRO_LATITUDE_GRAUS'
      DisplayFormat = '##'
      EditFormat = '0'
    end
    object QryPrincipalPRO_LATITUDE_MINUTOS: TCurrencyField
      FieldName = 'PRO_LATITUDE_MINUTOS'
      Origin = 'PRO_LATITUDE_MINUTOS'
      DisplayFormat = '##'
      EditFormat = '0'
    end
    object QryPrincipalPRO_LATITUDE_SEGUNDOS: TCurrencyField
      FieldName = 'PRO_LATITUDE_SEGUNDOS'
      Origin = 'PRO_LATITUDE_SEGUNDOS'
      DisplayFormat = '##.00'
      EditFormat = '0.00'
    end
    object QryPrincipalPRO_LATITUDE_HEMISFERIO: TStringField
      FieldName = 'PRO_LATITUDE_HEMISFERIO'
      Origin = 'PRO_LATITUDE_HEMISFERIO'
      FixedChar = True
      Size = 1
    end
    object QryPrincipalPRO_LONGITUDE_GRAUS: TCurrencyField
      FieldName = 'PRO_LONGITUDE_GRAUS'
      Origin = 'PRO_LONGITUDE_GRAUS'
      DisplayFormat = '##'
      EditFormat = '0'
    end
    object QryPrincipalPRO_LONGITUDE_MINUTOS: TCurrencyField
      FieldName = 'PRO_LONGITUDE_MINUTOS'
      Origin = 'PRO_LONGITUDE_MINUTOS'
      DisplayFormat = '##'
      EditFormat = '0'
    end
    object QryPrincipalPRO_LONGITUDE_SEGUNDOS: TCurrencyField
      DisplayLabel = 'PRO_LATITUDE_SEGUNDOS'
      FieldName = 'PRO_LONGITUDE_SEGUNDOS'
      Origin = 'PRO_LONGITUDE_SEGUNDOS'
      DisplayFormat = '##.00'
      EditFormat = '0.00'
    end
    object QryPrincipalPRO_LONGITUDE_HEMISFERIO: TStringField
      FieldName = 'PRO_LONGITUDE_HEMISFERIO'
      Origin = 'PRO_LONGITUDE_HEMISFERIO'
      FixedChar = True
      Size = 1
    end
    object QryPrincipalPRO_AREA_LEGAL: TCurrencyField
      DisplayLabel = #193'rea legal (ha)'
      FieldName = 'PRO_AREA_LEGAL'
      Origin = 'PRO_AREA_LEGAL'
      DisplayFormat = ',##0.000'
    end
    object QryPrincipalPRO_AREA_REAL: TCurrencyField
      DisplayLabel = #193'rea real (ha)'
      FieldName = 'PRO_AREA_REAL'
      Origin = 'PRO_AREA_REAL'
      Required = True
      DisplayFormat = ',##0.000'
    end
    object QryPrincipalPRO_AREA_NUA: TCurrencyField
      FieldName = 'PRO_AREA_NUA'
      Origin = 'PRO_AREA_NUA'
      DisplayFormat = ',##0.000'
    end
    object QryPrincipalPRO_AREA_PASTAGEM: TCurrencyField
      FieldName = 'PRO_AREA_PASTAGEM'
      Origin = 'PRO_AREA_PASTAGEM'
      DisplayFormat = ',##0.000'
    end
    object QryPrincipalPRO_AREA_PERMANENTE: TCurrencyField
      FieldName = 'PRO_AREA_PERMANENTE'
      Origin = 'PRO_AREA_PERMANENTE'
      DisplayFormat = ',##0.000'
    end
    object QryPrincipalPRO_AREA_TEMPORARIA: TCurrencyField
      FieldName = 'PRO_AREA_TEMPORARIA'
      Origin = 'PRO_AREA_TEMPORARIA'
      DisplayFormat = ',##0.000'
    end
    object QryPrincipalPRO_AREA_RESERVA: TCurrencyField
      FieldName = 'PRO_AREA_RESERVA'
      Origin = 'PRO_AREA_RESERVA'
      DisplayFormat = ',##0.000'
    end
    object QryPrincipalPRO_AREA_OUTROS: TCurrencyField
      FieldName = 'PRO_AREA_OUTROS'
      Origin = 'PRO_AREA_OUTROS'
      DisplayFormat = ',##0.000'
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
      DisplayLabel = 'Munic'#237'pio do endere'#231'o'
      FieldName = 'CID_ID'
      Origin = 'CID_ID'
      Required = True
    end
    object QryPrincipalCOM_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'COM_ID'
      Origin = 'COM_ID'
    end
    object QryPrincipalFUN_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'T'#233'cnico respons'#225'vel'
      FieldName = 'FUN_ID'
      Origin = 'FUN_ID'
      Required = True
    end
    object QryPrincipalUND_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
    end
    object QryPrincipalOCT_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Caracteriza'#231#227'o de dom'#237'nio'
      FieldName = 'OCT_ID'
      Origin = 'OCT_ID'
      Required = True
    end
    object QryPrincipalDCT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'DCT_ID'
      Origin = 'DCT_ID'
    end
    object QryPrincipalDAT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'DAT_ID'
      Origin = 'DAT_ID'
    end
    object QryPrincipalUFE_ID: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UFE_ID'
      Origin = 'UFE_ID'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object QryPrincipalPRO_AREA_NUA_PERC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRO_AREA_NUA_PERC'
      DisplayFormat = '#,##0.00'
      EditFormat = '0'
      Calculated = True
    end
    object QryPrincipalPRO_AREA_PASTAGEM_PERC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRO_AREA_PASTAGEM_PERC'
      DisplayFormat = '#,##0.00'
      EditFormat = '0'
      Calculated = True
    end
    object QryPrincipalPRO_AREA_PERMANENTE_PERC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRO_AREA_PERMANENTE_PERC'
      DisplayFormat = '#,##0.00'
      EditFormat = '0'
      Calculated = True
    end
    object QryPrincipalPRO_AREA_TEMPORARIA_PERC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRO_AREA_TEMPORARIA_PERC'
      DisplayFormat = '#,##0.00'
      EditFormat = '0'
      Calculated = True
    end
    object QryPrincipalPRO_AREA_RESERVA_PERC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRO_AREA_RESERVA_PERC'
      DisplayFormat = '#,##0.00'
      EditFormat = '0'
      Calculated = True
    end
    object QryPrincipalPRO_AREA_OUTROS_PERC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRO_AREA_OUTROS_PERC'
      DisplayFormat = '#,##0.00'
      EditFormat = '0'
      Calculated = True
    end
    object QryPrincipalPRO_AREA_TOTAL_PERC: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRO_AREA_TOTAL_PERC'
      DisplayFormat = '#,##0%'
      EditFormat = '0%'
      Calculated = True
    end
    object QryPrincipalPRO_AREA_TOTAL_REAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRO_AREA_TOTAL_REAL'
      Calculated = True
    end
    object QryPrincipalPRO_MODIFICADO_USUARIO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRO_MODIFICADO_USUARIO_NOME'
      Origin = 'PRO_MODIFICADO_USUARIO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 153
    end
  end
  inherited UpdtPrincipal: TFDUpdateSQL
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUCAO_FAMILIAR'
      '(PRO_ID, PRO_DATA, PRO_DENOMINACAO, PRO_ENDERECO, '
      '  PRO_NUMERO, PRO_COMPLEMENTO, PRO_BAIRRO, '
      '  PRO_CEP, PRO_ACESSO, PRO_ENERGIA_SITUACAO, '
      '  PRO_ENERGIA_CONCESSIONARIA, PRO_ENERGIA_OUTRAS, '
      
        '  PRO_AGUA_SITUACAO, PRO_AGUA_CONCESSIONARIA, PRO_AGUA_POCO_ARTE' +
        'SIANO, '
      '  PRO_AGUA_POCO_AMAZONICO, PRO_AGUA_RIO, PRO_AGUA_OUTRAS, '
      '  PRO_CAR, PRO_CAR_NUMERO, PRO_CAR_DATA, PRO_RECEITA_ANUAL, '
      
        '  PRO_LATITUDE_GRAUS, PRO_LATITUDE_MINUTOS, PRO_LATITUDE_SEGUNDO' +
        'S, '
      '  PRO_LATITUDE_HEMISFERIO, PRO_LONGITUDE_GRAUS, '
      '  PRO_LONGITUDE_MINUTOS, PRO_LONGITUDE_SEGUNDOS, '
      '  PRO_LONGITUDE_HEMISFERIO, PRO_AREA_LEGAL, PRO_AREA_REAL, '
      '  PRO_AREA_NUA, PRO_AREA_PASTAGEM, PRO_AREA_PERMANENTE, '
      '  PRO_AREA_TEMPORARIA, PRO_AREA_RESERVA, PRO_AREA_OUTROS, '
      '  CID_ID, COM_ID, FUN_ID, UND_ID, DCT_ID, '
      '  OCT_ID, DAT_ID, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PRO_ID, :NEW_PRO_DATA, :NEW_PRO_DENOMINACAO, :NEW_P' +
        'RO_ENDERECO, '
      '  :NEW_PRO_NUMERO, :NEW_PRO_COMPLEMENTO, :NEW_PRO_BAIRRO, '
      '  :NEW_PRO_CEP, :NEW_PRO_ACESSO, :NEW_PRO_ENERGIA_SITUACAO, '
      '  :NEW_PRO_ENERGIA_CONCESSIONARIA, :NEW_PRO_ENERGIA_OUTRAS, '
      
        '  :NEW_PRO_AGUA_SITUACAO, :NEW_PRO_AGUA_CONCESSIONARIA, :NEW_PRO' +
        '_AGUA_POCO_ARTESIANO, '
      
        '  :NEW_PRO_AGUA_POCO_AMAZONICO, :NEW_PRO_AGUA_RIO, :NEW_PRO_AGUA' +
        '_OUTRAS, '
      
        '  :NEW_PRO_CAR, :NEW_PRO_CAR_NUMERO, :NEW_PRO_CAR_DATA, :NEW_PRO' +
        '_RECEITA_ANUAL, '
      
        '  :NEW_PRO_LATITUDE_GRAUS, :NEW_PRO_LATITUDE_MINUTOS, :NEW_PRO_L' +
        'ATITUDE_SEGUNDOS, '
      '  :NEW_PRO_LATITUDE_HEMISFERIO, :NEW_PRO_LONGITUDE_GRAUS, '
      '  :NEW_PRO_LONGITUDE_MINUTOS, :NEW_PRO_LONGITUDE_SEGUNDOS, '
      
        '  :NEW_PRO_LONGITUDE_HEMISFERIO, :NEW_PRO_AREA_LEGAL, :NEW_PRO_A' +
        'REA_REAL, '
      
        '  :NEW_PRO_AREA_NUA, :NEW_PRO_AREA_PASTAGEM, :NEW_PRO_AREA_PERMA' +
        'NENTE, '
      
        '  :NEW_PRO_AREA_TEMPORARIA, :NEW_PRO_AREA_RESERVA, :NEW_PRO_AREA' +
        '_OUTROS, '
      
        '  :NEW_CID_ID, :NEW_COM_ID, :NEW_FUN_ID, :NEW_UND_ID, :NEW_DCT_I' +
        'D, '
      
        '  :NEW_OCT_ID, :NEW_DAT_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLICAD' +
        'O, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUCAO_FAMILIAR'
      
        'SET PRO_ID = :NEW_PRO_ID, PRO_DATA = :NEW_PRO_DATA, PRO_DENOMINA' +
        'CAO = :NEW_PRO_DENOMINACAO, '
      
        '  PRO_ENDERECO = :NEW_PRO_ENDERECO, PRO_NUMERO = :NEW_PRO_NUMERO' +
        ', '
      
        '  PRO_COMPLEMENTO = :NEW_PRO_COMPLEMENTO, PRO_BAIRRO = :NEW_PRO_' +
        'BAIRRO, '
      
        '  PRO_CEP = :NEW_PRO_CEP, PRO_ACESSO = :NEW_PRO_ACESSO, PRO_ENER' +
        'GIA_SITUACAO = :NEW_PRO_ENERGIA_SITUACAO, '
      '  PRO_ENERGIA_CONCESSIONARIA = :NEW_PRO_ENERGIA_CONCESSIONARIA, '
      
        '  PRO_ENERGIA_OUTRAS = :NEW_PRO_ENERGIA_OUTRAS, PRO_AGUA_SITUACA' +
        'O = :NEW_PRO_AGUA_SITUACAO, '
      '  PRO_AGUA_CONCESSIONARIA = :NEW_PRO_AGUA_CONCESSIONARIA, '
      '  PRO_AGUA_POCO_ARTESIANO = :NEW_PRO_AGUA_POCO_ARTESIANO, '
      '  PRO_AGUA_POCO_AMAZONICO = :NEW_PRO_AGUA_POCO_AMAZONICO, '
      
        '  PRO_AGUA_RIO = :NEW_PRO_AGUA_RIO, PRO_AGUA_OUTRAS = :NEW_PRO_A' +
        'GUA_OUTRAS, '
      '  PRO_CAR = :NEW_PRO_CAR, PRO_CAR_NUMERO = :NEW_PRO_CAR_NUMERO, '
      
        '  PRO_CAR_DATA = :NEW_PRO_CAR_DATA, PRO_RECEITA_ANUAL = :NEW_PRO' +
        '_RECEITA_ANUAL, '
      
        '  PRO_LATITUDE_GRAUS = :NEW_PRO_LATITUDE_GRAUS, PRO_LATITUDE_MIN' +
        'UTOS = :NEW_PRO_LATITUDE_MINUTOS, '
      
        '  PRO_LATITUDE_SEGUNDOS = :NEW_PRO_LATITUDE_SEGUNDOS, PRO_LATITU' +
        'DE_HEMISFERIO = :NEW_PRO_LATITUDE_HEMISFERIO, '
      
        '  PRO_LONGITUDE_GRAUS = :NEW_PRO_LONGITUDE_GRAUS, PRO_LONGITUDE_' +
        'MINUTOS = :NEW_PRO_LONGITUDE_MINUTOS, '
      
        '  PRO_LONGITUDE_SEGUNDOS = :NEW_PRO_LONGITUDE_SEGUNDOS, PRO_LONG' +
        'ITUDE_HEMISFERIO = :NEW_PRO_LONGITUDE_HEMISFERIO, '
      
        '  PRO_AREA_LEGAL = :NEW_PRO_AREA_LEGAL, PRO_AREA_REAL = :NEW_PRO' +
        '_AREA_REAL, '
      
        '  PRO_AREA_NUA = :NEW_PRO_AREA_NUA, PRO_AREA_PASTAGEM = :NEW_PRO' +
        '_AREA_PASTAGEM, '
      
        '  PRO_AREA_PERMANENTE = :NEW_PRO_AREA_PERMANENTE, PRO_AREA_TEMPO' +
        'RARIA = :NEW_PRO_AREA_TEMPORARIA, '
      
        '  PRO_AREA_RESERVA = :NEW_PRO_AREA_RESERVA, PRO_AREA_OUTROS = :N' +
        'EW_PRO_AREA_OUTROS, '
      
        '  CID_ID = :NEW_CID_ID, COM_ID = :NEW_COM_ID, FUN_ID = :NEW_FUN_' +
        'ID, '
      
        '  UND_ID = :NEW_UND_ID, DCT_ID = :NEW_DCT_ID, OCT_ID = :NEW_OCT_' +
        'ID, '
      '  DAT_ID = :NEW_DAT_ID, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PRO_ID = :OLD_PRO_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUCAO_FAMILIAR'
      'WHERE PRO_ID = :OLD_PRO_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRO_ID, PRO_DATA, PRO_DENOMINACAO, PRO_ENDERECO, PRO_NUME' +
        'RO, '
      
        '  PRO_COMPLEMENTO, PRO_BAIRRO, PRO_CEP, PRO_ACESSO, PRO_ENERGIA_' +
        'SITUACAO, '
      
        '  PRO_ENERGIA_CONCESSIONARIA, PRO_ENERGIA_OUTRAS, PRO_AGUA_SITUA' +
        'CAO, '
      
        '  PRO_AGUA_CONCESSIONARIA, PRO_AGUA_POCO_ARTESIANO, PRO_AGUA_POC' +
        'O_AMAZONICO, '
      '  PRO_AGUA_RIO, PRO_AGUA_OUTRAS, PRO_CAR, PRO_CAR_NUMERO, '
      
        '  PRO_CAR_DATA, PRO_RECEITA_ANUAL, PRO_LATITUDE_GRAUS, PRO_LATIT' +
        'UDE_MINUTOS, '
      
        '  PRO_LATITUDE_SEGUNDOS, PRO_LATITUDE_HEMISFERIO, PRO_LONGITUDE_' +
        'GRAUS, '
      
        '  PRO_LONGITUDE_MINUTOS, PRO_LONGITUDE_SEGUNDOS, PRO_LONGITUDE_H' +
        'EMISFERIO, '
      
        '  PRO_AREA_LEGAL, PRO_AREA_REAL, PRO_AREA_NUA, PRO_AREA_PASTAGEM' +
        ', '
      '  PRO_AREA_PERMANENTE, PRO_AREA_TEMPORARIA, PRO_AREA_RESERVA, '
      '  PRO_AREA_OUTROS, CID_ID, COM_ID, FUN_ID, UND_ID, DCT_ID, '
      '  OCT_ID, DAT_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_PRODUCAO_FAMILIAR'
      'WHERE PRO_ID = :PRO_ID')
    Left = 408
    Top = 168
  end
  object DtSrcProducaoBem: TDataSource
    DataSet = QryProducaoBem
    OnStateChange = DtSrcProducaoBemStateChange
    Left = 440
    Top = 232
  end
  object DtSrcBem: TDataSource
    DataSet = QryBem
    Left = 552
    Top = 200
  end
  object DtSrcProducaoSemovente: TDataSource
    DataSet = QryProducaoSemovente
    OnStateChange = DtSrcProducaoSemoventeStateChange
    Left = 440
    Top = 264
  end
  object DtSrcSemovente: TDataSource
    DataSet = QrySemovente
    Left = 552
    Top = 232
  end
  object DtSrcProducaoAtividade: TDataSource
    DataSet = QryProducaoAtividade
    OnStateChange = DtSrcProducaoAtividadeStateChange
    Left = 440
    Top = 296
  end
  object DtSrcProduto: TDataSource
    DataSet = QryProduto
    Left = 552
    Top = 264
  end
  object DtSrcProducaoProduto: TDataSource
    DataSet = QryProducaoProduto
    OnStateChange = DtSrcProducaoProdutoStateChange
    Left = 440
    Top = 328
  end
  object DtSrcDestino: TDataSource
    DataSet = QryDestino
    Left = 552
    Top = 328
  end
  object DtSrcProducaoBeneficiario: TDataSource
    DataSet = QryProducaoBeneficiario
    OnStateChange = DtSrcProducaoBeneficiarioStateChange
    Left = 440
    Top = 200
  end
  object QryProducaoBem: TFDQuery
    BeforePost = QryProducaoBemBeforePost
    AfterPost = QryProducaoBemAfterPost
    OnNewRecord = QryProducaoBemNewRecord
    MasterSource = DtSrcProducaoBeneficiario
    MasterFields = 'PRO_ID;BEN_ID'
    DetailFields = 'PRO_ID;BEN_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtProducaoBem
    SQL.Strings = (
      'select'
      '  a.pbe_id,'
      '  a.ben_id,'
      '  a.pro_id,'
      '  a.bem_id,'
      '  a.bem_estado,'
      '  a.bem_data,'
      '  a.bem_quantidade,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.bem_descricao,'
      '  b.cls_id,'
      '  c.cls_descricao'
      'from'
      
        '  tab_cad_producao_bem a join tab_cad_bem b on (a.bem_id = b.bem' +
        '_id) left join'
      '  tab_cad_bem_classificacao c on (b.cls_id = c.cls_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.ben_id = :ben_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.bem_descricao')
    Left = 376
    Top = 232
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'BEN_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryProducaoBemPBE_ID: TLargeintField
      FieldName = 'PBE_ID'
      Origin = 'PBE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProducaoBemBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
    end
    object QryProducaoBemPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryProducaoBemBEM_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Descri'#231#227'o da benfeitoria/m'#225'quina/equipamento'
      FieldName = 'BEM_ID'
      Origin = 'BEM_ID'
      Required = True
    end
    object QryProducaoBemBEM_ESTADO: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Estado'
      FieldName = 'BEM_ESTADO'
      Origin = 'BEM_ESTADO'
      Required = True
    end
    object QryProducaoBemBEM_DATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'BEM_DATA'
      Origin = 'BEM_DATA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryProducaoBemBEM_QUANTIDADE: TSmallintField
      DisplayLabel = 'Quantidade'
      FieldName = 'BEM_QUANTIDADE'
      Origin = 'BEM_QUANTIDADE'
    end
    object QryProducaoBemREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryProducaoBemREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryProducaoBemREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryProducaoBemREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryProducaoBemBEM_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Benfeitoria'
      FieldName = 'BEM_DESCRICAO'
      Origin = 'BEM_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryProducaoBemCLS_ID: TIntegerField
      Alignment = taLeftJustify
      AutoGenerateValue = arDefault
      FieldName = 'CLS_ID'
      Origin = 'CLS_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryProducaoBemCLS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Tipo'
      FieldName = 'CLS_DESCRICAO'
      Origin = 'CLS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object UpdtProducaoBem: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUCAO_BEM'
      '(PBE_ID, BEN_ID, PRO_ID, BEM_ID, BEM_ESTADO, '
      '  BEM_DATA, BEM_QUANTIDADE, REG_EXCLUIDO, REG_REPLICADO, '
      '  REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PBE_ID, :NEW_BEN_ID, :NEW_PRO_ID, :NEW_BEM_ID, :NEW' +
        '_BEM_ESTADO, '
      
        '  :NEW_BEM_DATA, :NEW_BEM_QUANTIDADE, :NEW_REG_EXCLUIDO, :NEW_RE' +
        'G_REPLICADO, '
      '  :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUCAO_BEM'
      
        'SET PBE_ID = :NEW_PBE_ID, BEN_ID = :NEW_BEN_ID, PRO_ID = :NEW_PR' +
        'O_ID, '
      
        '  BEM_ID = :NEW_BEM_ID, BEM_ESTADO = :NEW_BEM_ESTADO, BEM_DATA =' +
        ' :NEW_BEM_DATA, '
      
        '  BEM_QUANTIDADE = :NEW_BEM_QUANTIDADE, REG_EXCLUIDO = :NEW_REG_' +
        'EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE PBE_ID = :OLD_PBE_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUCAO_BEM'
      'WHERE PBE_ID = :OLD_PBE_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PBE_ID, BEN_ID, PRO_ID, BEM_ID, BEM_ESTADO, BEM_DATA, BEM' +
        '_QUANTIDADE, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_PRODUCAO_BEM'
      'WHERE PBE_ID = :PBE_ID')
    Left = 408
    Top = 232
  end
  object QryProducaoSemovente: TFDQuery
    BeforePost = QryProducaoSemoventeBeforePost
    AfterPost = QryProducaoSemoventeAfterPost
    OnNewRecord = QryProducaoSemoventeNewRecord
    MasterSource = DtSrcProducaoBeneficiario
    MasterFields = 'PRO_ID;BEN_ID'
    DetailFields = 'PRO_ID;BEN_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtProducaoSemovente
    SQL.Strings = (
      'select'
      '  s.pse_id,'
      '  s.ben_id,'
      '  s.pro_id,'
      '  s.prd_id,'
      '  s.prd_quantidade,'
      '  a.prd_descricao,'
      '  s.reg_excluido,'
      '  s.reg_replicado,'
      '  s.reg_usuario,'
      '  s.reg_modificado,'
      '  b.div_descricao,'
      '  c.grp_descricao,'
      '  d.cls_descricao'
      'from'
      
        '  tab_cad_producao_semovente s left join tab_cad_produto a on (s' +
        '.prd_id = a.prd_id) left join'
      '  tab_cad_divisao b on (a.div_id = b.div_id) left join'
      '  tab_cad_grupo c on (a.grp_id = c.grp_id) left join'
      '  tab_cad_classe d on (a.cls_id = d.cls_id)'
      'where'
      '  (s.pro_id = :pro_id) and'
      '  (s.ben_id = :ben_id) and'
      '  (s.reg_excluido = 0)'
      'order by'
      '  a.prd_descricao')
    Left = 376
    Top = 264
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'BEN_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryProducaoSemoventePSE_ID: TLargeintField
      FieldName = 'PSE_ID'
      Origin = 'PSE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProducaoSemoventeBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
    end
    object QryProducaoSemoventePRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryProducaoSemoventePRD_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Descri'#231#227'o do semovente'
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
      Required = True
    end
    object QryProducaoSemoventePRD_QUANTIDADE: TCurrencyField
      DisplayLabel = 'Quantidade'
      FieldName = 'PRD_QUANTIDADE'
      Origin = 'PRD_QUANTIDADE'
      DisplayFormat = '0'
      EditFormat = '0'
    end
    object QryProducaoSemoventePRD_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Semovente'
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      Size = 50
    end
    object QryProducaoSemoventeDIV_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Divis'#227'o'
      FieldName = 'DIV_DESCRICAO'
      Origin = 'DIV_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProducaoSemoventeGRP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Grupo'
      FieldName = 'GRP_DESCRICAO'
      Origin = 'GRP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProducaoSemoventeCLS_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Classe'
      FieldName = 'CLS_DESCRICAO'
      Origin = 'CLS_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProducaoSemoventeREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryProducaoSemoventeREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryProducaoSemoventeREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryProducaoSemoventeREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
  end
  object UpdtProducaoSemovente: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUCAO_SEMOVENTE'
      '(PSE_ID, BEN_ID, PRO_ID, PRD_ID, PRD_QUANTIDADE, '
      '  REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_PSE_ID, :NEW_BEN_ID, :NEW_PRO_ID, :NEW_PRD_ID, :NEW' +
        '_PRD_QUANTIDADE, '
      '  :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_USUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUCAO_SEMOVENTE'
      
        'SET PSE_ID = :NEW_PSE_ID, BEN_ID = :NEW_BEN_ID, PRO_ID = :NEW_PR' +
        'O_ID, '
      '  PRD_ID = :NEW_PRD_ID, PRD_QUANTIDADE = :NEW_PRD_QUANTIDADE, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PSE_ID = :OLD_PSE_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUCAO_SEMOVENTE'
      'WHERE PSE_ID = :OLD_PSE_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PSE_ID, BEN_ID, PRO_ID, PRD_ID, PRD_QUANTIDADE, REG_EXCLU' +
        'IDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_PRODUCAO_SEMOVENTE'
      'WHERE PSE_ID = :PSE_ID')
    Left = 408
    Top = 264
  end
  object QryProducaoAtividade: TFDQuery
    BeforePost = QryProducaoAtividadeBeforePost
    AfterPost = QryProducaoAtividadeAfterPost
    AfterScroll = QryProducaoAtividadeAfterScroll
    OnNewRecord = QryProducaoAtividadeNewRecord
    MasterSource = DtSrcProducaoBeneficiario
    MasterFields = 'PRO_ID;BEN_ID'
    DetailFields = 'PRO_ID;BEN_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtProducaoAtividade
    SQL.Strings = (
      'select'
      '  a.atv_id,'
      '  a.atv_area_plantada,'
      '  a.atv_area_colhida,'
      '  a.atv_area_perdida,'
      '  a.atv_ano,'
      '  a.atv_periodo_plantio,'
      '  a.atv_periodo_colheita,'
      '  a.atv_quantidade,'
      '  a.atv_data_visita,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.pro_id,'
      '  a.ben_id,'
      '  a.sip_id,'
      '  a.prd_id,'
      '  a.uni_id,'
      '  a.und_id,'
      '  a.fun_id,'
      '  b.sip_descricao,'
      '  c.prd_descricao,'
      '  d.uni_descricao,'
      '  coalesce(cast(a.atv_ano as varchar(4)),'
      
        '    substring(cast(a.atv_periodo_colheita as varchar(6)) from 5 ' +
        'for 2) || '#39'/'#39' ||'
      
        '    substring(cast(a.atv_periodo_colheita as varchar(6)) from 1 ' +
        'for 4)'
      '    )'
      '  as atv_periodo'
      'from'
      
        '  tab_cad_producao_atividade a left join tab_cad_sistema_produti' +
        'vo b on (a.sip_id = b.sip_id) left join'
      '  tab_cad_produto c on (a.prd_id = c.prd_id) left join'
      '  tab_cad_unidade_medida d on (a.uni_id = d.uni_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.ben_id = :ben_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      
        '   coalesce(a.atv_ano, cast(substring(a.atv_periodo_colheita fro' +
        'm 1 for 4) as integer)) desc, c.prd_descricao')
    Left = 376
    Top = 296
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end
      item
        Name = 'BEN_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end>
    object QryProducaoAtividadeATV_ID: TLargeintField
      FieldName = 'ATV_ID'
      Origin = 'ATV_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryProducaoAtividadeATV_AREA_PLANTADA: TCurrencyField
      DisplayLabel = #193'rea plantada (ha)'
      FieldName = 'ATV_AREA_PLANTADA'
      Origin = 'ATV_AREA_PLANTADA'
      DisplayFormat = ',##0.###'
      EditFormat = '0.000'
    end
    object QryProducaoAtividadeATV_AREA_COLHIDA: TCurrencyField
      DisplayLabel = #193'rea colhida (ha)'
      FieldName = 'ATV_AREA_COLHIDA'
      Origin = 'ATV_AREA_COLHIDA'
      DisplayFormat = ',##0.###'
      EditFormat = '0.000'
    end
    object QryProducaoAtividadeATV_AREA_PERDIDA: TCurrencyField
      DisplayLabel = 'Perda da lavoura (ha)'
      FieldName = 'ATV_AREA_PERDIDA'
      Origin = 'ATV_AREA_PERDIDA'
      DisplayFormat = ',##0.###'
      EditFormat = '0.000'
    end
    object QryProducaoAtividadeATV_QUANTIDADE: TCurrencyField
      DisplayLabel = 'Quantidade'
      FieldName = 'ATV_QUANTIDADE'
      Origin = 'ATV_QUANTIDADE'
      DisplayFormat = ',##0.###'
      EditFormat = '0.000'
    end
    object QryProducaoAtividadeATV_DATA_VISITA: TDateField
      DisplayLabel = 'Data da visita'
      FieldName = 'ATV_DATA_VISITA'
      Origin = 'ATV_DATA_VISITA'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QryProducaoAtividadePRO_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryProducaoAtividadeBEN_ID: TLargeintField
      Alignment = taLeftJustify
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
    end
    object QryProducaoAtividadeSIP_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Sistema de produ'#231#227'o'
      FieldName = 'SIP_ID'
      Origin = 'SIP_ID'
      Required = True
    end
    object QryProducaoAtividadePRD_ID: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Produto'
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
      Required = True
    end
    object QryProducaoAtividadeUNI_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'UNI_ID'
      Origin = 'UNI_ID'
    end
    object QryProducaoAtividadeUND_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
    end
    object QryProducaoAtividadeFUN_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FUN_ID'
      Origin = 'FUN_ID'
    end
    object QryProducaoAtividadeSIP_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sistema de produ'#231#227'o'
      FieldName = 'SIP_DESCRICAO'
      Origin = 'SIP_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProducaoAtividadePRD_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o do produto'
      FieldName = 'PRD_DESCRICAO'
      Origin = 'PRD_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProducaoAtividadeUNI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProducaoAtividadeATV_ANO: TIntegerField
      FieldName = 'ATV_ANO'
      Origin = 'ATV_ANO'
    end
    object QryProducaoAtividadeATV_PERIODO_PLANTIO: TIntegerField
      FieldName = 'ATV_PERIODO_PLANTIO'
      Origin = 'ATV_PERIODO_PLANTIO'
      OnGetText = QryProducaoAtividadeATV_PERIODO_PLANTIOGetText
      OnSetText = QryProducaoAtividadeATV_PERIODO_PLANTIOSetText
    end
    object QryProducaoAtividadeATV_PERIODO_COLHEITA: TIntegerField
      FieldName = 'ATV_PERIODO_COLHEITA'
      Origin = 'ATV_PERIODO_COLHEITA'
      OnGetText = QryProducaoAtividadeATV_PERIODO_PLANTIOGetText
      OnSetText = QryProducaoAtividadeATV_PERIODO_PLANTIOSetText
    end
    object QryProducaoAtividadeREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryProducaoAtividadeREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryProducaoAtividadeREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryProducaoAtividadeREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryProducaoAtividadeATV_PERIODO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'M'#234's/ano'
      FieldName = 'ATV_PERIODO'
      Origin = 'ATV_PERIODO'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
  end
  object UpdtProducaoAtividade: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUCAO_ATIVIDADE'
      '(ATV_ID, ATV_ANO, ATV_PERIODO_PLANTIO, ATV_PERIODO_COLHEITA, '
      '  ATV_AREA_PLANTADA, ATV_AREA_COLHIDA, ATV_AREA_PERDIDA, '
      '  ATV_QUANTIDADE, ATV_DATA_VISITA, PRO_ID, '
      '  BEN_ID, SIP_ID, PRD_ID, UNI_ID, UND_ID, '
      '  FUN_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO)'
      
        'VALUES (:NEW_ATV_ID, :NEW_ATV_ANO, :NEW_ATV_PERIODO_PLANTIO, :NE' +
        'W_ATV_PERIODO_COLHEITA, '
      
        '  :NEW_ATV_AREA_PLANTADA, :NEW_ATV_AREA_COLHIDA, :NEW_ATV_AREA_P' +
        'ERDIDA, '
      '  :NEW_ATV_QUANTIDADE, :NEW_ATV_DATA_VISITA, :NEW_PRO_ID, '
      
        '  :NEW_BEN_ID, :NEW_SIP_ID, :NEW_PRD_ID, :NEW_UNI_ID, :NEW_UND_I' +
        'D, '
      
        '  :NEW_FUN_ID, :NEW_REG_EXCLUIDO, :NEW_REG_REPLICADO, :NEW_REG_U' +
        'SUARIO, '
      '  :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUCAO_ATIVIDADE'
      
        'SET ATV_ID = :NEW_ATV_ID, ATV_ANO = :NEW_ATV_ANO, ATV_PERIODO_PL' +
        'ANTIO = :NEW_ATV_PERIODO_PLANTIO, '
      
        '  ATV_PERIODO_COLHEITA = :NEW_ATV_PERIODO_COLHEITA, ATV_AREA_PLA' +
        'NTADA = :NEW_ATV_AREA_PLANTADA, '
      
        '  ATV_AREA_COLHIDA = :NEW_ATV_AREA_COLHIDA, ATV_AREA_PERDIDA = :' +
        'NEW_ATV_AREA_PERDIDA, '
      
        '  ATV_QUANTIDADE = :NEW_ATV_QUANTIDADE, ATV_DATA_VISITA = :NEW_A' +
        'TV_DATA_VISITA, '
      
        '  PRO_ID = :NEW_PRO_ID, BEN_ID = :NEW_BEN_ID, SIP_ID = :NEW_SIP_' +
        'ID, '
      
        '  PRD_ID = :NEW_PRD_ID, UNI_ID = :NEW_UNI_ID, UND_ID = :NEW_UND_' +
        'ID, '
      '  FUN_ID = :NEW_FUN_ID, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE ATV_ID = :OLD_ATV_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUCAO_ATIVIDADE'
      'WHERE ATV_ID = :OLD_ATV_ID')
    FetchRowSQL.Strings = (
      
        'SELECT ATV_ID, ATV_ANO, ATV_PERIODO_PLANTIO, ATV_PERIODO_COLHEIT' +
        'A, '
      
        '  ATV_AREA_PLANTADA, ATV_AREA_COLHIDA, ATV_AREA_PERDIDA, ATV_QUA' +
        'NTIDADE, '
      '  ATV_DATA_VISITA, PRO_ID, BEN_ID, SIP_ID, PRD_ID, UNI_ID, '
      '  UND_ID, FUN_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, '
      '  REG_MODIFICADO'
      'FROM TAB_CAD_PRODUCAO_ATIVIDADE'
      'WHERE ATV_ID = :ATV_ID')
    Left = 408
    Top = 296
  end
  object QryProducaoProduto: TFDQuery
    BeforePost = QryProducaoProdutoBeforePost
    AfterPost = QryProducaoProdutoAfterPost
    OnCalcFields = QryProducaoProdutoCalcFields
    OnNewRecord = QryProducaoProdutoNewRecord
    MasterSource = DtSrcProducaoAtividade
    MasterFields = 'ATV_ID'
    DetailFields = 'ATV_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtProducaoProduto
    SQL.Strings = (
      'select'
      '  a.prp_id,'
      '  a.prp_tipo,'
      '  a.prp_descricao,'
      '  a.prp_qtde_consumida,'
      '  a.prp_qtde_comercializada,'
      '  a.prp_valor,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  a.atv_id,'
      '  a.prd_id,'
      '  a.dev_id,'
      '  a.uni_id,'
      '  a.des_id,'
      '  case a.prp_tipo'
      '    when 1 then a.prp_descricao'
      '    when 2 then b.prd_descricao'
      '    when 3 then c.dev_descricao'
      '  end as prp_descricao_produto_derivado,'
      '  d.uni_sigla || '#39' ('#39' || d.uni_descricao || '#39')'#39' as uni_unidade,'
      '  e.des_descricao as destino'
      'from'
      
        '  tab_cad_producao_produto a left join tab_cad_produto b on (a.p' +
        'rd_id = b.prd_id) left join'
      '  tab_cad_derivado c on (a.dev_id = c.dev_id) left join'
      '  tab_cad_unidade_medida d on (a.uni_id = d.uni_id) left join'
      '  tab_cad_destino e on (a.des_id = e.des_id)'
      'where'
      '  (a.atv_id = :atv_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  prp_descricao_produto_derivado')
    Left = 376
    Top = 328
    ParamData = <
      item
        Name = 'ATV_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = Null
      end>
    object QryProducaoProdutoPRP_ID: TIntegerField
      FieldName = 'PRP_ID'
      Origin = 'PRP_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryProducaoProdutoPRP_TIPO: TSmallintField
      DisplayLabel = 'Tipo de item'
      FieldName = 'PRP_TIPO'
      Origin = 'PRP_TIPO'
      Required = True
    end
    object QryProducaoProdutoPRP_DESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o do item comercializado'
      FieldName = 'PRP_DESCRICAO'
      Origin = 'PRP_DESCRICAO'
      Size = 50
    end
    object QryProducaoProdutoPRP_QTDE_CONSUMIDA: TCurrencyField
      DisplayLabel = 'Qtde consumida'
      FieldName = 'PRP_QTDE_CONSUMIDA'
      Origin = 'PRP_QTDE_CONSUMIDA'
      DisplayFormat = ',##0.###'
      EditFormat = '0.000'
    end
    object QryProducaoProdutoPRP_QTDE_COMERCIALIZADA: TCurrencyField
      DisplayLabel = 'Qtde comercializada'
      FieldName = 'PRP_QTDE_COMERCIALIZADA'
      Origin = 'PRP_QTDE_COMERCIALIZADA'
      DisplayFormat = ',##0.###'
      EditFormat = '0.000'
    end
    object QryProducaoProdutoPRP_VALOR: TBCDField
      DefaultExpression = '0'
      DisplayLabel = 'Valor unit'#225'rio R$'
      FieldName = 'PRP_VALOR'
      Origin = 'PRP_VALOR'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Precision = 18
      Size = 2
    end
    object QryProducaoProdutoATV_ID: TLargeintField
      Alignment = taLeftJustify
      FieldName = 'ATV_ID'
      Origin = 'ATV_ID'
      Required = True
    end
    object QryProducaoProdutoPRD_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'PRD_ID'
      Origin = 'PRD_ID'
    end
    object QryProducaoProdutoDEV_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'DEV_ID'
      Origin = 'DEV_ID'
    end
    object QryProducaoProdutoUNI_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'UNI_ID'
      Origin = 'UNI_ID'
    end
    object QryProducaoProdutoDES_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'DES_ID'
      Origin = 'DES_ID'
    end
    object QryProducaoProdutoPRP_DESCRICAO_PRODUTO_DERIVADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o do item comercializado'
      FieldName = 'PRP_DESCRICAO_PRODUTO_DERIVADO'
      Origin = 'PRP_DESCRICAO_PRODUTO_DERIVADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryProducaoProdutoUNI_UNIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Unidade'
      FieldName = 'UNI_UNIDADE'
      Origin = 'UNI_UNIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 63
    end
    object QryProducaoProdutoPRP_VALOR_TOTAL: TBCDField
      DisplayLabel = 'Valor total R$'
      FieldKind = fkCalculated
      FieldName = 'PRP_VALOR_TOTAL'
      DisplayFormat = '#,##0.00'
      EditFormat = '0.00'
      Size = 8
      Calculated = True
    end
    object QryProducaoProdutoREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
    end
    object QryProducaoProdutoREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
    end
    object QryProducaoProdutoREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryProducaoProdutoREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryProducaoProdutoDESTINO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Destino'
      FieldName = 'DESTINO'
      Origin = 'DES_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object UpdtProducaoProduto: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUCAO_PRODUTO'
      '(PRP_ID, PRP_TIPO, PRP_DESCRICAO, PRP_QTDE_CONSUMIDA, '
      '  PRP_QTDE_COMERCIALIZADA, PRP_VALOR, ATV_ID, '
      '  PRD_ID, DEV_ID, UNI_ID, DES_ID, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_PRP_ID, :NEW_PRP_TIPO, :NEW_PRP_DESCRICAO, :NEW_PRP' +
        '_QTDE_CONSUMIDA, '
      '  :NEW_PRP_QTDE_COMERCIALIZADA, :NEW_PRP_VALOR, :NEW_ATV_ID, '
      
        '  :NEW_PRD_ID, :NEW_DEV_ID, :NEW_UNI_ID, :NEW_DES_ID, :NEW_REG_E' +
        'XCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUCAO_PRODUTO'
      
        'SET PRP_ID = :NEW_PRP_ID, PRP_TIPO = :NEW_PRP_TIPO, PRP_DESCRICA' +
        'O = :NEW_PRP_DESCRICAO, '
      
        '  PRP_QTDE_CONSUMIDA = :NEW_PRP_QTDE_CONSUMIDA, PRP_QTDE_COMERCI' +
        'ALIZADA = :NEW_PRP_QTDE_COMERCIALIZADA, '
      
        '  PRP_VALOR = :NEW_PRP_VALOR, ATV_ID = :NEW_ATV_ID, PRD_ID = :NE' +
        'W_PRD_ID, '
      
        '  DEV_ID = :NEW_DEV_ID, UNI_ID = :NEW_UNI_ID, DES_ID = :NEW_DES_' +
        'ID, '
      
        '  REG_EXCLUIDO = :NEW_REG_EXCLUIDO, REG_REPLICADO = :NEW_REG_REP' +
        'LICADO, '
      
        '  REG_USUARIO = :NEW_REG_USUARIO, REG_MODIFICADO = :NEW_REG_MODI' +
        'FICADO'
      'WHERE PRP_ID = :OLD_PRP_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUCAO_PRODUTO'
      'WHERE PRP_ID = :OLD_PRP_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRP_ID, PRP_TIPO, PRP_DESCRICAO, PRP_QTDE_CONSUMIDA, PRP_' +
        'QTDE_COMERCIALIZADA, '
      
        '  PRP_VALOR, ATV_ID, PRD_ID, DEV_ID, UNI_ID, DES_ID, REG_EXCLUID' +
        'O, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_PRODUCAO_PRODUTO'
      'WHERE PRP_ID = :PRP_ID')
    Left = 408
    Top = 328
  end
  object QryProducaoBeneficiario: TFDQuery
    AfterPost = QryProducaoBeneficiarioAfterPost
    AfterScroll = QryProducaoBeneficiarioAfterScroll
    MasterSource = DtSrcPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    UpdateObject = UpdtProducaoBeneficiario
    SQL.Strings = (
      'select'
      '  a.bpr_id,'
      '  a.ben_id,'
      '  a.pro_id,'
      '  a.bpr_data,'
      '  a.reg_excluido,'
      '  a.reg_replicado,'
      '  a.reg_usuario,'
      '  a.reg_modificado,'
      '  b.ben_nome,'
      '  b.ben_cpf,'
      '  case b.ben_sexo'
      '    when '#39'M'#39' then '#39'Masculino'#39
      '    when '#39'F'#39' then '#39'Feminino'#39
      '  end as ben_sexo,'
      '  b.ben_nascimento'
      'from'
      
        '  tab_cad_beneficiario_producao a join tab_cad_beneficiario b on' +
        ' (a.ben_id = b.ben_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.ben_nome')
    Left = 376
    Top = 200
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QryProducaoBeneficiarioBPR_ID: TLargeintField
      FieldName = 'BPR_ID'
      Origin = 'BPR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProducaoBeneficiarioBEN_ID: TLargeintField
      FieldName = 'BEN_ID'
      Origin = 'BEN_ID'
      Required = True
    end
    object QryProducaoBeneficiarioPRO_ID: TIntegerField
      FieldName = 'PRO_ID'
      Origin = 'PRO_ID'
      Required = True
    end
    object QryProducaoBeneficiarioBPR_DATA: TDateField
      FieldName = 'BPR_DATA'
      Origin = 'BPR_DATA'
    end
    object QryProducaoBeneficiarioREG_EXCLUIDO: TSmallintField
      FieldName = 'REG_EXCLUIDO'
      Origin = 'REG_EXCLUIDO'
      Required = True
    end
    object QryProducaoBeneficiarioREG_REPLICADO: TSmallintField
      FieldName = 'REG_REPLICADO'
      Origin = 'REG_REPLICADO'
      Required = True
    end
    object QryProducaoBeneficiarioREG_USUARIO: TStringField
      FieldName = 'REG_USUARIO'
      Origin = 'REG_USUARIO'
      Size = 50
    end
    object QryProducaoBeneficiarioREG_MODIFICADO: TSQLTimeStampField
      FieldName = 'REG_MODIFICADO'
      Origin = 'REG_MODIFICADO'
    end
    object QryProducaoBeneficiarioBEN_NOME: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome do benefici'#225'rio'
      FieldName = 'BEN_NOME'
      Origin = 'BEN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 150
    end
    object QryProducaoBeneficiarioBEN_CPF: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'BEN_CPF'
      Origin = 'BEN_CPF'
      ProviderFlags = []
      ReadOnly = True
      EditMask = '000.000.000\-00;0; '
      Size = 11
    end
    object QryProducaoBeneficiarioBEN_SEXO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'BEN_SEXO'
      Origin = 'BEN_SEXO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 9
    end
    object QryProducaoBeneficiarioBEN_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nascimento'
      FieldName = 'BEN_NASCIMENTO'
      Origin = 'BEN_NASCIMENTO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object UpdtProducaoBeneficiario: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_BENEFICIARIO_PRODUCAO'
      '(BPR_ID, BEN_ID, PRO_ID, BPR_DATA, REG_EXCLUIDO, '
      '  REG_REPLICADO, REG_USUARIO, REG_MODIFICADO)'
      
        'VALUES (:NEW_BPR_ID, :NEW_BEN_ID, :NEW_PRO_ID, :NEW_BPR_DATA, :N' +
        'EW_REG_EXCLUIDO, '
      '  :NEW_REG_REPLICADO, :NEW_REG_USUARIO, :NEW_REG_MODIFICADO)')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_BENEFICIARIO_PRODUCAO'
      
        'SET BPR_ID = :NEW_BPR_ID, BEN_ID = :NEW_BEN_ID, PRO_ID = :NEW_PR' +
        'O_ID, '
      '  BPR_DATA = :NEW_BPR_DATA, REG_EXCLUIDO = :NEW_REG_EXCLUIDO, '
      
        '  REG_REPLICADO = :NEW_REG_REPLICADO, REG_USUARIO = :NEW_REG_USU' +
        'ARIO, '
      '  REG_MODIFICADO = :NEW_REG_MODIFICADO'
      'WHERE BPR_ID = :OLD_BPR_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_BENEFICIARIO_PRODUCAO'
      'WHERE BPR_ID = :OLD_BPR_ID')
    FetchRowSQL.Strings = (
      
        'SELECT BPR_ID, BEN_ID, PRO_ID, BPR_DATA, REG_EXCLUIDO, REG_REPLI' +
        'CADO, '
      '  REG_USUARIO, REG_MODIFICADO'
      'FROM TAB_CAD_BENEFICIARIO_PRODUCAO'
      'WHERE BPR_ID = :BPR_ID')
    Left = 408
    Top = 200
  end
  object QryBem: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.bem_id,'
      '  a.bem_descricao,'
      '  a.cls_id'
      'from'
      '  tab_cad_bem a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.bem_descricao')
    Left = 488
    Top = 200
  end
  object QrySemovente: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.prd_id,'
      '  a.prd_descricao,'
      '  b.div_descricao,'
      '  c.grp_descricao,'
      '  d.cls_descricao'
      'from'
      
        '  tab_cad_produto a left join tab_cad_divisao b on (a.div_id = b' +
        '.div_id) left join'
      '  tab_cad_grupo c on (a.grp_id = c.grp_id) left join'
      '  tab_cad_classe d on (a.cls_id = d.cls_id)'
      'where'
      '  (a.prd_semovente = 1) and'
      '  (a.reg_excluido = 0) and'
      '  (d.cls_id <> 100000006)'
      'order by'
      '  a.prd_descricao')
    Left = 488
    Top = 232
  end
  object QryProduto: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    UpdateObject = UpdtProduto
    SQL.Strings = (
      'select'
      '  a.prd_id,'
      '  a.prd_descricao,'
      '  a.div_id,'
      '  b.div_descricao,'
      '  b.div_tipo,'
      '  c.grp_descricao,'
      '  d.cls_descricao,'
      '  e.uni_descricao,'
      '  e.uni_id'
      'from'
      
        '  tab_cad_produto a left join tab_cad_divisao b on (a.div_id = b' +
        '.div_id) left join'
      '  tab_cad_grupo c on (a.grp_id = c.grp_id) left join'
      '  tab_cad_classe d on (a.cls_id = d.cls_id) left join'
      '  tab_cad_unidade_medida e on (a.uni_id = e.uni_id)'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.prd_descricao')
    Left = 488
    Top = 264
  end
  object UpdtProduto: TFDUpdateSQL
    Connection = DtmConexaoModulo.FDConnection
    InsertSQL.Strings = (
      'INSERT INTO TAB_CAD_PRODUTO'
      '(PRD_ID, PRD_DESCRICAO, DIV_ID)'
      'VALUES (:NEW_PRD_ID, :NEW_PRD_DESCRICAO, :NEW_DIV_ID)'
      'RETURNING UNI_ID')
    ModifySQL.Strings = (
      'UPDATE TAB_CAD_PRODUTO'
      
        'SET PRD_ID = :NEW_PRD_ID, PRD_DESCRICAO = :NEW_PRD_DESCRICAO, DI' +
        'V_ID = :NEW_DIV_ID'
      'WHERE PRD_ID = :OLD_PRD_ID'
      'RETURNING UNI_ID')
    DeleteSQL.Strings = (
      'DELETE FROM TAB_CAD_PRODUTO'
      'WHERE PRD_ID = :OLD_PRD_ID')
    FetchRowSQL.Strings = (
      
        'SELECT PRD_ID, PRD_DESCRICAO, PRD_SEMOVENTE, DIV_ID, GRP_ID, CLS' +
        '_ID, '
      
        '  UNI_ID, REG_EXCLUIDO, REG_REPLICADO, REG_USUARIO, REG_MODIFICA' +
        'DO'
      'FROM TAB_CAD_PRODUTO'
      'WHERE PRD_ID = :PRD_ID')
    Left = 520
    Top = 264
  end
  object QryDerivado: TFDQuery
    MasterSource = DtSrcProducaoAtividade
    MasterFields = 'PRD_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.dev_id,'
      '  b.dev_descricao,'
      '  c.uni_id,'
      '  c.uni_descricao'
      'from'
      
        '  tab_cad_produto_derivado a join tab_cad_derivado b on (a.dev_i' +
        'd = b.dev_id) join'
      '  tab_cad_unidade_medida c on (a.uni_id = c.uni_id)'
      'where'
      '  (a.prd_id = :prd_id) and'
      '  (b.reg_excluido = 0) and'
      '  (c.reg_excluido = 0)'
      'order by'
      '  b.dev_descricao, c.uni_descricao')
    Left = 488
    Top = 296
    ParamData = <
      item
        Name = 'PRD_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = Null
      end>
    object QryDerivadoDEV_ID: TIntegerField
      FieldName = 'DEV_ID'
      Origin = 'DEV_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDerivadoDEV_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEV_DESCRICAO'
      Origin = 'DEV_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryDerivadoUNI_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UNI_ID'
      Origin = 'UNI_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryDerivadoUNI_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNI_DESCRICAO'
      Origin = 'UNI_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object QryDestino: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select'
      '  a.des_id,'
      '  a.des_descricao'
      'from'
      '  tab_cad_destino a'
      'where'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.des_descricao')
    Left = 488
    Top = 328
    object QryDestinoDES_ID: TIntegerField
      FieldName = 'DES_ID'
      Origin = 'DES_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryDestinoDES_DESCRICAO: TStringField
      FieldName = 'DES_DESCRICAO'
      Origin = 'DES_DESCRICAO'
      Required = True
      Size = 50
    end
  end
end
