inherited FrmAgendaEvento: TFrmAgendaEvento
  Left = 399
  Top = 175
  Caption = 'Compromisso'
  ClientHeight = 520
  ClientWidth = 512
  ExplicitLeft = 399
  ExplicitTop = 175
  ExplicitWidth = 528
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 496
    Height = 474
    ClientRectBottom = 472
    ClientRectRight = 494
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Geral'
      object cxGroupBox2: TcxGroupBox
        Left = 8
        Top = 0
        Caption = 'Compromisso'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Height = 321
        Width = 473
        object Label2: TLabel
          Left = 16
          Top = 113
          Width = 57
          Height = 37
          AutoSize = False
          Caption = 'Detalhes do assunto:'
          Transparent = True
          WordWrap = True
        end
        object Label1: TLabel
          Left = 16
          Top = 89
          Width = 43
          Height = 13
          Caption = 'Assunto:'
          Transparent = True
        end
        object Label5: TLabel
          Left = 16
          Top = 201
          Width = 65
          Height = 37
          AutoSize = False
          Caption = 'Local do compromisso:'
          Transparent = True
          WordWrap = True
        end
        object Label4: TLabel
          Left = 16
          Top = 52
          Width = 20
          Height = 13
          Caption = 'Fim:'
          Transparent = True
        end
        object Label3: TLabel
          Left = 16
          Top = 28
          Width = 29
          Height = 13
          Caption = 'In'#237'cio:'
          Transparent = True
        end
        object Bevel1: TBevel
          Left = 16
          Top = 77
          Width = 449
          Height = 9
          Shape = bsTopLine
        end
        object Label9: TLabel
          Left = 16
          Top = 289
          Width = 38
          Height = 13
          Caption = 'Evento:'
          Transparent = True
        end
        object Label8: TLabel
          Left = 264
          Top = 265
          Width = 45
          Height = 13
          Caption = 'Situa'#231#227'o:'
          Transparent = True
        end
        object Label6: TLabel
          Left = 16
          Top = 265
          Width = 24
          Height = 13
          Caption = 'Tipo:'
          Transparent = True
        end
        object cxDBMemo1: TcxDBMemo
          Left = 88
          Top = 109
          DataBinding.DataField = 'AGN_DETALHE'
          DataBinding.DataSource = DtSrcAgenda
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 85
          Width = 377
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 88
          Top = 85
          DataBinding.DataField = 'AGN_ASSUNTO'
          DataBinding.DataSource = DtSrcAgenda
          TabOrder = 1
          Width = 377
        end
        object cxDBMemo2: TcxDBMemo
          Left = 88
          Top = 197
          DataBinding.DataField = 'AGN_LOCAL'
          DataBinding.DataSource = DtSrcAgenda
          Properties.ScrollBars = ssVertical
          TabOrder = 2
          Height = 60
          Width = 377
        end
        object cxDBTimeEdit2: TcxDBTimeEdit
          Left = 216
          Top = 48
          DataBinding.DataField = 'AGN_DATA_HORA_FIM'
          DataBinding.DataSource = DtSrcAgenda
          TabOrder = 3
          Width = 81
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 88
          Top = 48
          DataBinding.DataField = 'AGN_DATA_HORA_FIM'
          DataBinding.DataSource = DtSrcAgenda
          TabOrder = 4
          Width = 121
        end
        object cxDBTimeEdit1: TcxDBTimeEdit
          Left = 216
          Top = 24
          DataBinding.DataField = 'AGN_DATA_HORA_INICIO'
          DataBinding.DataSource = DtSrcAgenda
          TabOrder = 5
          Width = 81
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 88
          Top = 24
          DataBinding.DataField = 'AGN_DATA_HORA_INICIO'
          DataBinding.DataSource = DtSrcAgenda
          TabOrder = 6
          Width = 121
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 88
          Top = 285
          Properties.ListColumns = <>
          TabOrder = 7
          Width = 169
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 320
          Top = 261
          Properties.ListColumns = <>
          TabOrder = 8
          Width = 145
        end
        object cxDBImageComboBox1: TcxDBImageComboBox
          Left = 88
          Top = 261
          DataBinding.DataField = 'AGN_EVENTO_TIPO'
          DataBinding.DataSource = DtSrcAgenda
          Properties.Items = <
            item
              Description = 'Interno'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Externo'
              Value = 2
            end>
          TabOrder = 9
          Width = 169
        end
      end
      object GrpBxRegistro: TcxGroupBox
        Left = 8
        Top = 323
        Caption = 'Informa'#231#245'es de registro'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        Height = 110
        Width = 473
        object Label37: TLabel
          Left = 16
          Top = 57
          Width = 121
          Height = 13
          Caption = 'Data da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoData
          Transparent = True
        end
        object Label56: TLabel
          Left = 152
          Top = 57
          Width = 134
          Height = 13
          Caption = 'Usu'#225'rio da '#250'ltima altera'#231#227'o:'
          FocusControl = DbEdtModificadoUsuario
          Transparent = True
        end
        object Label10: TLabel
          Left = 16
          Top = 17
          Width = 109
          Height = 13
          Caption = 'Escrit'#243'rio respons'#225'vel:'
          Transparent = True
        end
        object Label17: TLabel
          Left = 328
          Top = 17
          Width = 79
          Height = 13
          Caption = 'Data de cria'#231#227'o:'
          FocusControl = DbEdtCriacaoData
          Transparent = True
        end
        object DbEdtModificadoUsuario: TcxDBTextEdit
          Left = 152
          Top = 73
          DataBinding.DataField = 'CRD_MODIFICADO_USUARIO_NOME'
          Enabled = False
          TabOrder = 3
          Width = 313
        end
        object DbEdtModificadoData: TcxDBTextEdit
          Left = 16
          Top = 73
          DataBinding.DataField = 'REG_MODIFICADO'
          Enabled = False
          TabOrder = 2
          Width = 129
        end
        object cxDBLookupComboBox3: TcxDBLookupComboBox
          Left = 16
          Top = 33
          TabStop = False
          DataBinding.DataField = 'UND_ID'
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
          Width = 305
        end
        object DbEdtCriacaoData: TcxDBTextEdit
          Left = 328
          Top = 33
          DataBinding.DataField = 'CRD_DATA_HORA_REGISTRO'
          Enabled = False
          TabOrder = 1
          Width = 137
        end
      end
    end
    object TbShtDetalhes: TcxTabSheet
      Caption = 'Detalhes'
      ImageIndex = 1
      ExplicitWidth = 451
      ExplicitHeight = 423
      object cxGroupBox1: TcxGroupBox
        Left = 8
        Top = 0
        Caption = 'T'#233'cnicos envolvidos'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Height = 153
        Width = 473
      end
      object cxGroupBox3: TcxGroupBox
        Left = 8
        Top = 156
        Caption = 'Comunidades'
        ParentBackground = False
        ParentColor = False
        TabOrder = 1
        Height = 153
        Width = 473
      end
      object cxGroupBox4: TcxGroupBox
        Left = 8
        Top = 312
        Caption = 'Participantes'
        ParentBackground = False
        ParentColor = False
        TabOrder = 2
        Height = 121
        Width = 473
        object Label7: TLabel
          Left = 16
          Top = 21
          Width = 65
          Height = 37
          AutoSize = False
          Caption = 'Participantes envolvidos:'
          Transparent = True
          WordWrap = True
        end
        object cxDBMemo3: TcxDBMemo
          Left = 88
          Top = 13
          DataBinding.DataField = 'AGN_PARTICIPANTE'
          DataBinding.DataSource = DtSrcAgenda
          Properties.ScrollBars = ssVertical
          TabOrder = 0
          Height = 92
          Width = 377
        end
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 348
    Top = 488
  end
  inherited BtnCancelar: TcxButton
    Left = 429
    Top = 488
  end
  object DtSrcAgenda: TDataSource
    DataSet = FrmAgenda.QryAgenda
    Left = 368
    Top = 256
  end
end
