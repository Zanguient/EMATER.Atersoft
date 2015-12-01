inherited FrmProdutividadeFaterParticipante: TFrmProdutividadeFaterParticipante
  Left = 519
  Top = 256
  Caption = 'Participante'
  ClientHeight = 308
  ClientWidth = 461
  OnShow = FormShow
  ExplicitLeft = 519
  ExplicitTop = 256
  ExplicitWidth = 477
  ExplicitHeight = 347
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlPrincipal: TcxPageControl
    Width = 445
    Height = 262
    ExplicitWidth = 445
    ExplicitHeight = 262
    ClientRectBottom = 260
    ClientRectRight = 443
    inherited TbShtPrincipal: TcxTabSheet
      Caption = 'Detalhes do participante da FATER'
      object GrpBxParticipante: TcxGroupBox
        Left = 8
        Top = 0
        Caption = 'Informa'#231#245'es do participante'
        ParentBackground = False
        ParentColor = False
        TabOrder = 0
        Height = 225
        Width = 425
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 106
          Height = 13
          Caption = 'Nome do participante:'
          FocusControl = DbEdtNome
          Transparent = True
        end
        object Label2: TLabel
          Left = 8
          Top = 64
          Width = 23
          Height = 13
          Caption = 'CPF:'
          Transparent = True
        end
        object Label3: TLabel
          Left = 280
          Top = 64
          Width = 59
          Height = 13
          Caption = 'Nascimento:'
          FocusControl = DbEdtNascimento
          Transparent = True
        end
        object Label4: TLabel
          Left = 8
          Top = 104
          Width = 67
          Height = 13
          Caption = 'Observa'#231#245'es:'
          FocusControl = DbMemoObs
          Transparent = True
        end
        object Label5: TLabel
          Left = 152
          Top = 64
          Width = 28
          Height = 13
          Caption = 'Sexo:'
          Transparent = True
        end
        object DbEdtNome: TcxDBTextEdit
          Left = 8
          Top = 40
          DataBinding.DataField = 'PRT_NOME'
          DataBinding.DataSource = DtSrcFaterParticipante
          TabOrder = 0
          Width = 409
        end
        object DbEdtNascimento: TcxDBDateEdit
          Left = 280
          Top = 80
          DataBinding.DataField = 'PRT_NASCIMENTO'
          DataBinding.DataSource = DtSrcFaterParticipante
          TabOrder = 3
          Width = 137
        end
        object DbMemoObs: TcxDBMemo
          Left = 8
          Top = 120
          DataBinding.DataField = 'PRT_OBSERVACAO'
          DataBinding.DataSource = DtSrcFaterParticipante
          Properties.ScrollBars = ssVertical
          TabOrder = 4
          Height = 89
          Width = 409
        end
        object DBImgCmbBxSexo: TcxDBImageComboBox
          Left = 152
          Top = 80
          DataBinding.DataField = 'PRT_SEXO'
          DataBinding.DataSource = DtSrcFaterParticipante
          Properties.Items = <
            item
              Description = 'Masculino'
              ImageIndex = 103
              Value = 'M'
            end
            item
              Description = 'Feminino'
              ImageIndex = 104
              Value = 'F'
            end>
          TabOrder = 2
          Width = 121
        end
        object DbEdtCPF: TcxDBMaskEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'PRT_CPF'
          DataBinding.DataSource = DtSrcFaterParticipante
          Properties.AlwaysShowBlanksAndLiterals = True
          Properties.ClearKey = 46
          Properties.EditMask = '999.999.999-99;0; '
          TabOrder = 1
          Width = 137
        end
      end
    end
  end
  inherited BtnOK: TcxButton
    Left = 297
    Top = 276
    ModalResult = 0
    OnClick = BtnOKClick
    ExplicitLeft = 297
    ExplicitTop = 276
  end
  inherited BtnCancelar: TcxButton
    Left = 378
    Top = 276
    ExplicitLeft = 378
    ExplicitTop = 276
  end
  object DtSrcFaterParticipante: TDataSource
    DataSet = FrmProdutividadeFater.DtStFaterParticipante
    Left = 256
    Top = 208
  end
  object DtStCPFExiste: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    SQL.Strings = (
      'select count(*) as existe from tab_prd_fater_participante p'
      'where'
      '  (p.fat_id = :fat_id) and'
      '  (p.prt_cpf = :prt_cpf) and'
      '  (p.reg_excluido = 0)')
    Left = 256
    Top = 176
    ParamData = <
      item
        Name = 'FAT_ID'
        DataType = ftLargeint
        ParamType = ptInput
      end
      item
        Name = 'PRT_CPF'
        ParamType = ptInput
      end>
    object DtStCPFExisteTEC_ID: TIntegerField
      FieldName = 'TEC_ID'
      Origin = 'TEC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DtStCPFExisteTEC_DESCRICAO: TStringField
      FieldName = 'TEC_DESCRICAO'
      Origin = 'TEC_DESCRICAO'
      Required = True
      Size = 50
    end
  end
end
