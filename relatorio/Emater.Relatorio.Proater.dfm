inherited FrmRelatorioProater: TFrmRelatorioProater
  Left = 615
  Top = 156
  Caption = 'PROATER'
  ClientHeight = 433
  ExplicitLeft = 8
  ExplicitTop = 8
  ExplicitWidth = 584
  ExplicitHeight = 462
  PixelsPerInch = 96
  TextHeight = 13
  inherited PgCntrlRelatorio: TcxPageControl
    inherited TbShtFiltros: TcxTabSheet
      ExplicitLeft = 2
      ExplicitTop = 28
      ExplicitWidth = 557
      ExplicitHeight = 355
      inherited LblTitulo: TLabel
        Caption = ' Modelo Referencial do PROATER Municipal'
      end
      inherited GrpBxFiltro: TcxGroupBox
        Caption = 'PROATER'
        object LblProater: TLabel
          Left = 32
          Top = 32
          Width = 246
          Height = 13
          Caption = 'PROATER MUNICIPAL referente ao per'#237'odo de %s.'
          Transparent = True
        end
      end
      inherited GrpBxOpcoes: TcxGroupBox
        Transparent = True
        inherited LblCampo: TLabel [0]
          Left = 216
          Visible = False
          ExplicitLeft = 216
        end
        inherited LblModo: TLabel [1]
          Left = 8
          ExplicitLeft = 8
        end
        inherited CmbBxCampo: TcxComboBox [2]
          Left = 216
          Visible = False
          ExplicitLeft = 216
          ExplicitWidth = 313
          Width = 313
        end
        inherited CmbBxModo: TcxComboBox [3]
          Left = 8
          Properties.Items.Strings = (
            'Visualizar na tela'
            'Imprimir direto para a impressora')
          Text = 'Visualizar na tela'
          ExplicitLeft = 8
          ExplicitWidth = 201
          Width = 201
        end
      end
    end
  end
  inherited BtnLimpar: TcxButton
    Visible = False
  end
  inherited FrxPrincipal: TfrxReport
    ReportOptions.LastChange = 42474.982642777800000000
    ScriptText.Strings = (
      'var'
      '  N1, N2: Integer;'
      '  SumarioPontos, SumarioTexto, SumarioPagina: String;'
      
        '  Lista: TStringList;                                           ' +
        '     '
      ''
      'function StringOfChar(C: Char; Count: Integer): String;'
      'var'
      '  I: Integer;                                  '
      'begin'
      '  Result := '#39#39';                                     '
      '  for I := 1 to Count do'
      
        '    Result := Result + C;                                       ' +
        '                      '
      'end;'
      ''
      
        'procedure InserirSumario(Texto: String; Negrito: Boolean);      ' +
        '                                       '
      'begin'
      '  if (Engine.FinalPass = False) then'
      '    begin'
      '      if not (Lista.IndexOf(Texto) >= 0) then'
      
        '        begin                                                   ' +
        '                                                               '
      
        '          Lista.Add(Texto);                                     ' +
        '              '
      
        '          SumarioPontos := StringOfChar('#39'.'#39', 80 - Length(Texto))' +
        ';         '
      
        '          if Negrito then                                       ' +
        ' '
      
        '            SumarioTexto := SumarioTexto + '#39'<b>'#39' + Texto + '#39'</b>' +
        #39' + SumarioPontos + #13#10'
      '          else'
      
        '            SumarioTexto := SumarioTexto + Texto + SumarioPontos' +
        ' + #13#10;    '
      '                '
      
        '          SumarioPontos := StringOfChar('#39'.'#39', 12 - Length(<Page>)' +
        ');'
      '          if Negrito then            '
      
        '            SumarioPagina := SumarioPagina + SumarioPontos + '#39'<b' +
        '>'#39' + IntToStr(<Page#>) + '#39'</b>'#39' + #13#10'
      '          else'
      
        '            SumarioPagina := SumarioPagina + SumarioPontos + Int' +
        'ToStr(<Page#>) + #13#10;'
      '        end;                                            '
      '    end;'
      'end;'
      ''
      'procedure MemoProgramaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if Engine.FinalPass then                                      ' +
        '       '
      '    N1 := N1 + 1;                              '
      'end;'
      ''
      
        'procedure PROATERSubprojetoMtodoMET_DESCRICAOOnBeforePrint(Sende' +
        'r: TfrxComponent);'
      'begin'
      
        '  if (<PROATER - Subprojeto - M'#233'todo."MET_TOTAL"> = '#39'Total'#39') the' +
        'n'
      '    begin'
      '      PROATERSubprojetoMtodoMET_DESCRICAO.VAlign := vaTop;'
      '      PROATERSubprojetoMtodoMET_DESCRICAO.HAlign := haCenter;'
      
        '      PROATERSubprojetoMtodoMET_DESCRICAO.GapY := 0;            ' +
        '                                                                ' +
        '      '
      '    end'
      '  else'
      '    begin'
      '      PROATERSubprojetoMtodoMET_DESCRICAO.VAlign := vaCenter;'
      '      PROATERSubprojetoMtodoMET_DESCRICAO.HAlign := haLeft;'
      '      PROATERSubprojetoMtodoMET_DESCRICAO.GapY := 2;          '
      '    end                 '
      'end;'
      ''
      'procedure MemoComunidadeOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39')' +
        ' then'
      '    begin'
      '      MemoComunidade.VAlign := vaTop;'
      '      MemoComunidade.HAlign := haCenter;'
      
        '      MemoComunidade.GapY := 0;                                 ' +
        '                                                 '
      '    end'
      '  else'
      '    begin'
      '      MemoComunidade.VAlign := vaCenter;'
      '      MemoComunidade.HAlign := haLeft;'
      '      MemoComunidade.GapY := 2;          '
      '    end  '
      'end;'
      ''
      'procedure MemoAtividadeOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39')' +
        ' then'
      '    begin'
      '      MemoAtividade.VAlign := vaTop;'
      '      MemoAtividade.HAlign := haCenter;'
      
        '      MemoAtividade.GapY := 0;                                  ' +
        '                                                '
      '    end'
      '  else'
      '    begin'
      '      MemoAtividade.VAlign := vaCenter;'
      '      MemoAtividade.HAlign := haLeft;'
      '      MemoAtividade.GapY := 2;          '
      '    end  '
      'end;'
      ''
      'procedure MemoCategoriaOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39')' +
        ' then'
      '    begin'
      '      MemoCategoria.VAlign := vaTop;'
      '      MemoCategoria.HAlign := haCenter;'
      
        '      MemoCategoria.GapY := 0;                                  ' +
        '                                                '
      '    end'
      '  else'
      '    begin'
      '      MemoCategoria.VAlign := vaCenter;'
      '      MemoCategoria.HAlign := haLeft;'
      '      MemoCategoria.GapY := 2;          '
      '    end  '
      'end;'
      ''
      'procedure MemoFonteOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39') ' +
        'then'
      '    begin'
      '      MemoFonte.VAlign := vaTop;'
      '      MemoFonte.HAlign := haCenter;'
      '      MemoFonte.GapY := 0;'
      ''
      '      MemoDespesa.VAlign := vaTop;'
      '      MemoDespesa.HAlign := haCenter;'
      '      MemoDespesa.GapY := 0;          '
      '    end'
      '  else'
      '    begin'
      '      MemoFonte.VAlign := vaCenter;'
      '      MemoFonte.HAlign := haLeft;'
      '      MemoFonte.GapY := 2;'
      ''
      '      MemoDespesa.VAlign := vaCenter;'
      '      MemoDespesa.HAlign := haLeft;'
      '      MemoDespesa.GapY := 2;          '
      '    end  '
      'end;'
      ''
      'procedure MemoAno1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39') ' +
        'then'
      '    begin                         '
      '      MemoAno1.DisplayFormat.Kind := fkText;'
      '      MemoAno1.DisplayFormat.FormatStr := '#39#39';'
      '      MemoAno2.DisplayFormat.Kind := fkText;'
      '      MemoAno2.DisplayFormat.FormatStr := '#39#39';'
      '      MemoAno3.DisplayFormat.Kind := fkText;'
      '      MemoAno3.DisplayFormat.FormatStr := '#39#39';'
      '      MemoAno4.DisplayFormat.Kind := fkText;'
      '      MemoAno4.DisplayFormat.FormatStr := '#39#39';          '
      '    end'
      '  else                       '
      '    begin                         '
      '      MemoAno1.DisplayFormat.Kind := fkNumeric;'
      '      MemoAno1.DisplayFormat.FormatStr := '#39'%2.2n'#39';'
      '      MemoAno2.DisplayFormat.Kind := fkNumeric;'
      '      MemoAno2.DisplayFormat.FormatStr := '#39'%2.2n'#39';'
      '      MemoAno3.DisplayFormat.Kind := fkNumeric;'
      '      MemoAno3.DisplayFormat.FormatStr := '#39'%2.2n'#39';'
      '      MemoAno4.DisplayFormat.Kind := fkNumeric;'
      '      MemoAno4.DisplayFormat.FormatStr := '#39'%2.2n'#39';          '
      '    end;                                       '
      'end;'
      ''
      'procedure MasterDataSumarioOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if (Engine.FinalPass = False) then'
      '    begin'
      '      MemoSumarioTexto.Text := '#39#39';         '
      '      MemoSumarioPagina.Text := '#39#39';         '
      '      SumarioTexto := '#39#39';'
      '      SumarioPagina := '#39#39';'
      '      Lista.Clear;                                '
      '      N2 := 0;                          '
      '    end'
      '  else'
      '    begin'
      '      MemoSumarioTexto.Text := SumarioTexto;'
      '      MemoSumarioPagina.Text := SumarioPagina;'
      '    end;                                     '
      'end;  '
      ''
      
        'procedure MemoDiagnosticoMunicipioOnAfterPrint(Sender: TfrxCompo' +
        'nent);                                             '
      'begin'
      '  InserirSumario(TfrxMemoView(Sender).Lines[0], True);  '
      'end;'
      ''
      'procedure MemoApresentacaoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  InserirSumario(TfrxMemoView(Sender).Lines[0], True);  '
      'end;'
      ''
      
        'procedure MemoEstatisticasMunicipaisOnAfterPrint(Sender: TfrxCom' +
        'ponent);'
      'begin'
      
        '  InserirSumario('#39'   '#39' + TfrxMemoView(Sender).Lines[0], False); ' +
        ' '
      'end;'
      ''
      'procedure MemoCapacidadeOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  InserirSumario(TfrxMemoView(Sender).Lines[0], True);  '
      'end;'
      ''
      
        'procedure MemoRecursosHumanosOnAfterPrint(Sender: TfrxComponent)' +
        ';'
      'begin'
      
        '  InserirSumario('#39'   '#39' + TfrxMemoView(Sender).Lines[0], False); ' +
        ' '
      'end;'
      ''
      'procedure MemoPlanoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  InserirSumario(TfrxMemoView(Sender).Lines[0], True);  '
      'end;'
      ''
      'procedure MemoProgramaOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  N2 := N2 + 1;                                    '
      
        '  InserirSumario('#39'   3.'#39' + IntToStr(N2) + '#39'. Programa: '#39' + <PROA' +
        'TER - Subprojeto."PRG_NOME">, False);         '
      'end;'
      ''
      'procedure MasterDataDespesaOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  InserirSumario('#39'   '#39' + MemoDespesas.Lines[0], False);  '
      'end;'
      ''
      
        'procedure FrxPrincipalOnReportPrint_inherited(Sender: TfrxCompon' +
        'ent);'
      'begin'
      '  Lista.Free;                      '
      'end;'
      ''
      'procedure MasterDataVeiculoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  InserirSumario('#39'   '#39' + MemoVeiculos.Lines[0], False);  '
      'end;'
      ''
      
        'procedure MasterDataQualificacaoOnAfterPrint(Sender: TfrxCompone' +
        'nt);'
      'begin'
      '  InserirSumario('#39'   '#39' + MemoNecessidade.Lines[0], False);  '
      'end;'
      ''
      
        'procedure MasterDataEquipamentoOnAfterPrint(Sender: TfrxComponen' +
        't);'
      'begin'
      '  InserirSumario('#39'   '#39' + MemoEquipamentos.Lines[0], False);  '
      'end;'
      ''
      
        'procedure MasterDataMobiliarioOnAfterPrint(Sender: TfrxComponent' +
        ');'
      'begin'
      '  InserirSumario('#39'   '#39' + MemoMobiliario.Lines[0], False);  '
      'end;'
      ''
      'procedure MasterDataDemandaOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  InserirSumario('#39'        '#39' + MemoDemanda.Lines[0], False);  '
      'end;'
      ''
      
        'procedure MasterDataFuncionarioOnAfterPrint(Sender: TfrxComponen' +
        't);'
      'begin'
      
        '  InserirSumario('#39'        '#39' + MemoForcaTrabalho.Lines[0], False)' +
        ';  '
      'end;'
      ''
      'procedure MasterDataAcordoOnAfterPrint(Sender: TfrxComponent);'
      'begin'
      '  InserirSumario('#39'   '#39' + MemoAcordo.Lines[0], False);  '
      'end;'
      ''
      
        'procedure MasterDataPotencialOnAfterPrint(Sender: TfrxComponent)' +
        ';'
      'begin'
      '  InserirSumario('#39'   '#39' + MemoProblema.Lines[0], False);  '
      'end;'
      ''
      
        'procedure MasterDataProaterComunidadeOnAfterPrint(Sender: TfrxCo' +
        'mponent);'
      'begin'
      
        '  InserirSumario('#39'   '#39' + MemoBeneficiariosComunidade.Lines[0], F' +
        'alse);  '
      'end;'
      ''
      'begin'
      
        '  Lista := TStringList.Create;                                  ' +
        '                                                                ' +
        '                                                                ' +
        '                                        '
      'end.')
    OnReportPrint = 'FrxPrincipalOnReportPrint_inherited'
    Left = 24
    Top = 208
    Datasets = <
      item
        DataSet = FrxDtStEmaterComissao
        DataSetName = 'Comiss'#227'o de elabora'#231#227'o'
      end
      item
        DataSet = FrxDtStEmaterCorpo
        DataSetName = 'Corpo da EMATER'
      end
      item
        DataSet = FrxDtStProaterAcordo
        DataSetName = 'PROATER - Acordo'
      end
      item
        DataSet = FrxDtStProaterComunidade
        DataSetName = 'PROATER - Comunidade'
      end
      item
        DataSet = FrxDtStProaterCusto
        DataSetName = 'PROATER - Despesa de custeio'
      end
      item
        DataSet = FrxDtStProaterEquipamento
        DataSetName = 'PROATER - Equipamento'
      end
      item
        DataSet = FrxDtStProaterFuncionario
        DataSetName = 'PROATER - Funcion'#225'rio'
      end
      item
        DataSet = FrxDtStProaterMobiliario
        DataSetName = 'PROATER - Mobili'#225'rio'
      end
      item
        DataSet = FrxDtStPotencial
        DataSetName = 'PROATER - Potencial'
      end
      item
        DataSet = FrxDtStProater
        DataSetName = 'PROATER - Principal'
      end
      item
        DataSet = FrxDtStQualificacao
        DataSetName = 'PROATER - Qualifica'#231#227'o'
      end
      item
        DataSet = FrxDtStSubProjeto
        DataSetName = 'PROATER - Subprojeto'
      end
      item
        DataSet = FrxDtStSubComunidade
        DataSetName = 'PROATER - Subprojeto - Comunidade'
      end
      item
        DataSet = FrxDtStSubMeta
        DataSetName = 'PROATER - Subprojeto - Metas'
      end
      item
        DataSet = FrxDtStSubMetodo
        DataSetName = 'PROATER - Subprojeto - M'#233'todo'
      end
      item
        DataSet = FrxDtStSubOrcamento
        DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
      end
      item
        DataSet = FrxDtStResponsavel
        DataSetName = 'PROATER - Subprojeto - Responsavel'
      end
      item
        DataSet = FrxDtStProaterVeiculo
        DataSetName = 'PROATER - Ve'#237'culo'
      end>
    Variables = <
      item
        Name = ' Vari'#225'veis'
        Value = Null
      end
      item
        Name = 'usuario'
        Value = #39'Usu'#225'rio'#39
      end
      item
        Name = 'unidade'
        Value = #39'Unidade'#39
      end
      item
        Name = 'titulo'
        Value = #39'T'#237'tulo'#39
      end>
    Style = <>
    inherited Page1: TfrxReportPage
      inherited PageHeader: TfrxPageHeader
        Visible = False
        inherited PictureLogotipo: TfrxPictureView
          Visible = False
        end
        inherited MemoRazaoSocial: TfrxMemoView
          Visible = False
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
        end
        inherited MemoUnidade: TfrxMemoView
          Top = 18.763769760000000000
          Height = 37.795290240000000000
          Visible = False
          LineSpacing = 5.000000000000000000
          Memo.UTF8W = (
            'SISATER Dektop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
        end
        inherited Memo1: TfrxMemoView
          Visible = False
        end
      end
      inherited PageFooter: TfrxPageFooter
        Height = 49.133890000000000000
        Top = 884.410020000000000000
        inherited MemoDataHora: TfrxMemoView
          Top = 34.015770000000000000
          Visible = False
          Memo.UTF8W = (
            
              'Data e hora da impress'#227'o: [<Date>] [FormatDateTime('#39'hh:nn'#39',<Time' +
              '>)]')
          Formats = <
            item
            end
            item
            end>
        end
        inherited MemoPagina: TfrxMemoView
          Top = 34.015770000000000000
          Visible = False
          Memo.UTF8W = (
            'P'#225'gina [Page] de [TotalPages]')
        end
        inherited MemoUsuario: TfrxMemoView
          Top = 34.015770000000000000
          Visible = False
          Memo.UTF8W = (
            'Usu'#225'rio: [usuario]')
        end
        inherited MemoRelatorio: TfrxMemoView
          Top = 34.015770000000000000
          Visible = False
          Memo.UTF8W = (
            '[titulo]')
        end
        object Memo11: TfrxMemoView
          Left = 204.094620000000000000
          Width = 294.803340000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'M'#234's/Ano')
          ParentFont = False
        end
      end
      inherited Header: TfrxHeader
        Height = 37.795300000000000000
        inherited MemoTitulo: TfrxMemoView
          Height = 37.795300000000000000
          DisplayFormat.DecimalSeparator = ''
          Font.Color = clBlack
          Fill.BackColor = clSilver
          Memo.UTF8W = (
            'ESCRIT'#211'RIO LOCAL DE [unidade]')
        end
      end
      object MasterData: TfrxMasterData
        FillType = ftBrush
        Height = 612.283860000000000000
        Top = 211.653680000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object Memo2: TfrxMemoView
          Left = 119.055195000000000000
          Top = 362.834880000000000000
          Width = 442.205010000000000000
          Height = 147.401670000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PROATER MUNICIPAL'
            ''
            'Modelo Referencial')
          ParentFont = False
        end
      end
    end
    object PageOrgao: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterDataOrgao: TfrxMasterData
        FillType = ftBrush
        Height = 173.858380000000000000
        Top = 151.181200000000000000
        Width = 680.315400000000000000
        DataSet = FrxDtStEmaterCorpo
        DataSetName = 'Corpo da EMATER'
        RowCount = 0
        Stretched = True
        object CorpodaEmaterPAR_VALOR: TfrxMemoView
          Top = 147.401670000000000000
          Width = 680.315400000000000000
          Height = 26.456710000000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataField = 'PAR_VALOR'
          DataSet = FrxDtStEmaterCorpo
          DataSetName = 'Corpo da EMATER'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            '[Corpo da EMATER."PAR_VALOR"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 289.134081615000000000
          Top = 15.118120000000000000
          Width = 102.047236770000000000
          Height = 109.472480000000000000
          Center = True
          DataSetName = 'Empresa'
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000014300
            00015E08060000001F7B7D42000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000000097048597300000B1300000B1301009A9C180000
            000774494D4507E0030F0C220C624D28CB0000FFFF4944415478DAEC9D099C4D
            E51BC79F3BBB7D8FEC654B0B0995225B09115149A5A4B4909222F16F8F4A4529
            ED4A85485242A54222FB9A7D97CA2EFB3233E6FE9FEF7BCEB9CE5C77EEDC1963
            668CFBF8BCCEDC73DF73EE39EF79CFEF7DF6C723610A5398C21426F164F50584
            294C610A5376A030188629CDE43DA413274FCA9F4FB57F98C294151406C330A5
            8B14D05AEBE6526DC315D8D685D0FF46DD5CA06DA2F65F9ED5D71FA64CA37C7E
            2DAFB6FCF6DFB924340C4AD07640DB7E7BEBFCED7C4ECA880B0D8361987C9C9A
            6E0BE8C723FA777C08C7CCD6CD15DADA69FFAF42E83F8ABEDAEED7FE1F05EDFB
            9FFE172BD1E29508ED7BCC7B50AF2F6F568FD259470055516DC5ECADD30032E6
            4941D7B6A0DFE7982CBAE6446DFBC402C97DA9FCBD45DB666DCB9C83C3601826
            430A56D3755357DBD5DA66A526C6BAC0AD9BF67D2784F34FD0CD0D34ED3F2984
            FEB7E80690FD52FBDF9ED5E373869327C0DF6C4B6BAB6437B8F62AF6B65CAA27
            F47852FD2E57AE5C52B97265A954A992142E5CF8D46E40CFB97FFF7ED9BC79B3
            6CDAB449B66DDB2649491643E8F57A831E9BCAF7BAD4CA6BDA0684C1304C8614
            7C86EBE60E9A82CFC810FA0FD24D776D2F6AFF6752E9CB3CFB455B236D976BFF
            79219CFF3DDD3CA8ED39EDFF7C568FCF1944009C036AE76B2BA20D242A6437E7
            EFB86027898E8E9673CF3D578A172F2E254A9430CDF90CB0152A54C8809D4380
            55BE7CF9CCFE82050B4A8102054EFB8D262626CABE7DFB0C48B23D70E04032E0
            3B7EFCB8EFBBBD7BF7CACE9D3B65D5AA55B274E95259B3668DFFE97687C13087
            12A2AF526E6DC7144C8E87D0BF8F6EFA697B4DFBF70AA13F7D5ED5F6A1F67F20
            95BE91BA81F3BC4A5B35BDAA3F53622CBC87F5C5CA6D8E5925D64B7DAD9EFFD7
            10AE873733C988D52A0C79F267E668672A45094A046B7B8E9CE0E6EBDAE39522
            015811111112191999AC016ED75E7BAD69575F7DB5942A552AABEF3120017407
            0F1E4C0678DC13C04D83B89F5028212141EEBBEF3EF9FCF3CF4F9C2B84E35859
            5849F8354726DF91D50313A6E0A4E0F0866EEED6F68402C4B0A07D0FF39F3170
            7CA76D9AF66F18C2F9EFD2CD671CA3FD5BA7D297B93347DB25DA2ED6FEAB4338
            BF33E3E300B810FA4F114BBCBB47FB4F3FFD239CE984BEAE9B58AA869262E9F2
            A202758483AB5EBDBA54AB564DCA942923458A1431DC5A5C5C9CE1E672E7CE6D
            B838A7C5C6C666F5BDA54A7FFCF187F4EBD7CF6C013208508C898931DC2A1C29
            C0983F7F7EB9F8E28BCD3D234657A952456AD5AA2579F3E635FDE903C7F8DB6F
            BFC9575F7D2563C78E757E62823F18322A65B4B1D223329D9BCA35AED4B6581B
            CAF4B9DAB6892583C3971CC9EA013C9B49C1013DDB086DEB151C2A86D01F916A
            BDB6C3DA3F55C717EDDF44373F699BADFDEBA4D29779B548DB79DA2ED2FE1B52
            E95F5337F3B5FDA77D0B0773C5B1396016ECD5F6369FF63D98A9839DF184088B
            9C097F8B91AA93B6640B14622800075777F9E597CB95575E2975EAD4312F7F56
            13A0F3E38F3F1AFD1EE0C3E7F3CE3B4FAA56AD6A3ED3F86ED4A851326BD62C73
            CDF5EAD53B490FC9E765CB96C937DF7C23FFFCF3CFE9B85487B97B59DB1BEE5F
            7F4A58553D9EF3F4E2A31A346820B56BD73617B47DFB7699376F9E91B70391A3
            C814CB04EE586DF66A5B2AD6A4FE53DB0A6DBBB2E8F99C95A440C1F388D05651
            01626308FD1D6EACA8F6DF9D4A5FB83C9EEF3AED5B2995BE88B0B8D3C0DD0086
            5B52E98F2E129DE468ED7B5B08D75D4B37E82159982F5779270151FB0C22C4DD
            2BEDC6C252564EE8F87C54A3460DB9F9E69BA579F3E672CE39E718EE273B7275
            4D9A34919F7FFEF9A4FD707188B160CAE1C38733F22761C23EE6A7B5FDA56D86
            B6D43C22C0A879F6B1FC6DC464846C5C1DEE717A8D1933C60C7A5A889BDBB061
            83AC5FBFDED756AF5E6D8074D7AE5DA6252626F2724ED6C64881AC3851B08AB3
            12B2F6A3DC2DEB6A70A9A13E6DCE8D28F69B365EFCEDDAB68A8837C4E3B335B9
            B9A3509D96B5DFF7BA69A1ED2EEDFF4508FD1D7799548D28DA97179831DEAC7D
            CBA7D297ABC51791675955FB6F4FA5FF18DD30013B6BDF8F53EC7742BFF8A67E
            7C54DB3BDABF5BA8E3683E678EDB0E1C9E63BC807BADAAAD863638E06A810E28
            5AB4A8942C59D2887C37DD7493B46EDD5AA2A2A242FEC18C26444B0C167079FF
            FDF79FECDEBDDB30417CC670B172E54A99366D9A8C1F3FDEE8F532818E8A057C
            DF88C5C89D32018638CE2E108B8390F6EDDBCBC891A91A1343A6F8F8783976EC
            98D9FEFDF7DF66C038FFDCB973CD188BC5AA02C8C99E34E6F84E9D3A19F6DFC5
            799A558581FFE1871F0C2BCE030A40EC3C6237EE6DA8B6B1728693BEC82C0E2F
            E8CB7C4F2880A87DBAE86608F7AE7D535DDDB4FFD39C5FDBE7DAFFEE54FAE234
            CB8A8AFC727E30DF44BB2F13973E80E19E207D99078032407171280EDA7A8C33
            876A6BFFF921F4E77A86EBEC6BE3C99FBA71298D549EEBB0AF1F8E15E083338E
            B15B744A0762C0B8E5965BA469D3A6460C46BF0737753A0950E3B702012D0CCD
            279F7C62DEB32D5BB618E0A339EFB4194BFDECE8F04E134D14319E0E0E530466
            C1CDF19C41DDA319F5439CF81AB1B82943E79F7FBEAC5DBBD6589D4E27B19A7C
            F7DD7706D4162C5860B848375D78E185F2DE7BEF49DDBA75835E0B0F06B00424
            972F5F2EBFFCF28BD143F037F7E1475FDA03C8AACC0AED708D3C4D9C2F57D9FB
            E05C36DAFB36FB9DA382588600AC77D789A502F8C91EC3BF4ED778E90B0CF78C
            B73DB3F67A7DE92787700CD70A4786953555339BF6675C166ADBA4FDCF4BA52F
            FCD41EBB550CA6A7B39DB9195344EF0BB4EF8154CE8B2E9A632E90DCF26F1097
            36FAF30C188B7D7ADE82218EA5C379FEACC73449E3A300D8CAD98DF1BD542C37
            96CADA8AFB77C64001A8390DE3055B383F746828F75147952D5B368D97716A34
            6EDC3879E8A1878CE406952E5DDA88DD0EE0AD58B1C2708399408116519E382A
            35DE2716F354A59A8C207E14A44114F189C9AC14FFFBDFFFE489279EC88C6B30
            838E98FDC1071FC81B6FBC611C2A2140100B58F7EEDDE5E9A79F367F87423C4C
            CE79F4E851193A74A83CFFFCF386B57713E7C63A85E50D02907FFDF55733099C
            D38815E683431220FA83B6FF89257632661E2C57F831D90477D255DB87F6675E
            925BC5E214E05071343E25EE545FE2CEF6F9F7EB4B1C9223971E0398F3A68522
            FA32C09824D0F7C2EDED0BD217AD1C6A0826739554B83D4444BEDF6CF73D9642
            3F08BD22DC266FE985A91943F4986F75D34A5B5FEDDB3FA8B1C5B29AC35DC36D
            C21D160976DD36713600B3A9DD983011764B06D3CCA94B2EB9449A356B66F47A
            575C7185CF6000B9B7EEFD994D13264C901B6FBC315567E50C269E390CC32CB1
            7475301AFF06E9EFBC7F19126A170AB99F46036D2F8AC5F1F888171EC02857AE
            9C59C578C0706DAC24A182535A094BD39429538C480D8BBE6387E5C983E88CC5
            8CD6A64D1BA3440E9530C97FFDF5D7461F8AB8CE447CE49147E4CD37DF3CA92F
            0E9A8805F463CBB19F7DF659B23E0B172E340A6D0865F18001030C57AA34CE1E
            CB42D75C738DD4AC59D388114B962C913973E6C0C98ED197668872B3BFA576CD
            6E6A72ADB23F7A7A6FBC028A57CA7A13A49567A78CF79C17FC38050716B94FB4
            2DD117FFD254FA22C2C1A297D0562D58CCB16D14C12ACC2400B4B606E9EBE817
            B15657D6BE4941FA3AC690A5DAAF7A8AFD2C6003A800361C8DE14E37A5D8DFD6
            0DEAF959E18938F849FB377575C15D058EFF22B1445BDA85E267C4802A56AC28
            1818EBD7AF6F2CB97079A71A6191913462C40859B468D149FB91C67EFFFD77A3
            66CA646A2E163391AD29D0D20418120605CB1F5456C6D11116FFAAABAE329382
            171F9074563D56CA8C5801A74E9D2ABD7BF7360004C7E7AC685DBB7695071F7C
            D0881BA13A5B42DF7EFBADDC7DF7DD86AB6312A3F4C5D9341861E26731707425
            80E8A38F3E9AACCF5D77DD255F7C7182A3470DC00AECA6214386C8C30F3FCC9F
            287EE11C1D5984970EC7E7BA51515133559C1AA8D7B7DDF53D74D90B4F4BCFAB
            AF94DB1A3554112F777011CF8B5AB69A8AD5C7CDAA0C7C20CA6D0DE2A6C2F3C6
            C1B981B6ABB5DF1F299EDB7297E1ADC2DF0DDDDEE614FB1E5680F15A6A08ED57
            35E8351F32DC378BF250ED7B5F2A7DCB8BA5CE00942FD1FEA99A28B198A3823E
            74486EC85FC27838C06DDF2F16479A8C9853CC611661F47858491B376E9CA586
            8C5088798AA4934DE86B6DB764F5458442C1500A05F0F5DAF057BB282D2745F7
            00D756AC5831D3F06807305110F35D7A094E8D956DF4E8D106681CAA50A1820F
            90D95E76D965A99E0B3D23A0882A60E3C68DC64115311D834D4A74E4C81179F7
            DD77CD312C0480B43F88CE9F3F5F1E78E00103DC387AB20AB340B8E9A79F7E92
            162D5A60FC81E5BD5C2C8B222274346A02263362FDFBEFBFBF5639E3DE6201E7
            5BDA1E2954A89874ECD8591A35382CED6F7FB3CDC14386137508AB255C18C064
            B4DA09FB2442DF5DB8502EB4696ABA46050B8C4DF8B575D5BEEF06E987661FF6
            03FF44B8C8B541FA36162B1C6F8EF60B38C0DE033A19F399BE33EC6B4D51AC67
            2D647DD5BE44CCB0808CD2BEED537BE63F8D9757A7CF945EB3E6884C996694F0
            25FCFBA0E303F8AEBBEE3AE3B88C35173DDF99404831F8EE3DFBECB366AE6631
            A1171EACED75B1D42ED99E4265D9980D441CE0888D572722129C417488C7FB08
            4F712619A2F6A5975E6A440DB833446E5A5A565D741F6FBDF596011E4400B755
            0B1116AEAC55AB56C60B1F7F2C267A20BAF7DE7B0D47C7F11C0750DD73CF3D52
            BE7CF9805CED6DB7DD660019EADBB7AFD1AFFAAB0CF06C8753848B5DBC78B111
            ADDC8620001895C3CE9D3BE1FC101BA3B95E37C8437091CA4DC2A9C3451A7F4F
            C0121A3172A4DC79C71D8007FAC887B49571BCF0B5CD8A898919BC7EFDFA71DE
            230A1849267E78586A9668FD8EF30082417DFC6CAB2FFA1F44D91AC1ACBEDA97
            798345F07BED77A3042197AFE3B9DA775B2A7DB124320FEB6ADF992974638160
            C1C1B1B696FB0B9E070B163A72ACB8CC03E66576A13FFFFC537AF4E8213366CC
            30FA6F08E6C2515571FD7853E099317D7AA604DD70118EC183718FB1F781BC28
            E5D1FA22CD8C176B0E659ABE2F23283DF22B0300F7815881280DD788AEC5B1A8
            A559790290A077819B84336362A2930995F06B025CE0D45E7BED35C341BA092E
            8E909DC71F7FDC18630211D66C446EF494E62663628C25FBD34F3F3DC9D20768
            6298C11A07019A80E8C08103CDDF0E110C7EC71D77186E116E153D27A2352F20
            8425BC61C386462709F1327EFC7172B73A44792CFCB840C0A5F08238B467CF9E
            93386DE526E5D65B6F35C0FFEFBFFF6235FC333AA9FB835D1E50B0F018BFBCA0
            CFDCA5B3DBA600736E4AC0A9A26FA4C2D654B1D42A35B5CFA220E77C5C2C0EE1
            63EDD739483F34A088BC89DA2FE842AB7DF9DDDFB5EDD5BE850274E13E580070
            7349C601F25CF1DB638B2E9C2404D98D5844C9F8B26E5DAAA9223383902C5ED1
            B6494E70794C3C8C783BC572753990AE3367233A5DE62C06AAB2DDAAD85BC4A9
            BC7222B963AA6EC3882BF83DB2120266841F854270622FBEF8A23158F887F160
            E99B3429E50C5288CABD7AF5F25989E1B4FEFAEBAF93445D0871F7F6DB6F37A0
            E4102232C614B83388951B2E933848C00FF2D7253A1EFBAFBCF28A3CF9E49327
            FD0EA2388009706258720851885026C423A84F9F3EC642EE4F119125C71CD8B6
            F59AA5CBA478FFD7A4FF841F8CD33B07013C5E160B3757EDE2CE3C2972900774
            EE44C88F62595AEB68BFD9298DA99E0F8305868BFEDAAF6F907E4EDAAE54E3A3
            B5EFFB62858DBEA27D1DA75B24188C4403C5721E37F38650B0EBAFBF5E5AB66C
            69F4DAD999982F180C717DB175CB99F2B36259770137A43E9E3FFA60C67192E4
            90C085D428B36DFB70954C585E31061E361A5707263EE99DAE0874102F2BE235
            AB78C78E1DA573E7CEBE2C15C108D119A0C0B5063082520343887C697061870E
            59BE1E88247077EE94450EE1A7C539DDD63B44627F1F47441DE22F21B8603851
            C702895166D8B061268B46204350FFFEFD8D380E6DDDBAD5C7C9C03DA0D08723
            763EFB93C5615451717CEDE17DFBCCD81B2EF6F2CB2F3FA6D7B471F9F2E5E885
            8D7FA4CBE28AD597C5ABB102CD1449815C6E2D4173146A3FAC4A776AEBAEFDDE
            0AD26F806E7A4A2A69C16CAB3716820BF58E6AEA7AB544FF7E4E2C702CC118E2
            29C05C4145C2DCC9AEC473676E3AE9A758BC595C5D2E5B9941E868114F981FBC
            A34CA47DA774C63390B2630A2F9C5951B2038C88E0B83CF0F627B3F6F1422356
            0230175D74519AACC9A110DEF77088186CE0BE700E77C4DB40C4CBF7F6DB6FFB
            3EE3B3D8A851A3647D30D8BCF0C20B06CC083E0FD53509AED031D4A023E5B71C
            823B8583C6A8838AC09F700902141C22AA0711DFA1A54B97FEAB205F4345325F
            2622051BF43DE800FA2928FD2FA5EBD27EE43FEAA0ADA3F64BE67BE40E73D37E
            70A2D76A6BAFFD46A5702EE6220AD396DA9A6BBF145D3114330ACB61D93D6F81
            1C6AD15646EDD829F7B2C02041E025809A253B115C378B21C63D772CB1FF9CC9
            64429C41E782257DCD299E2B4750760443FFEB830B60B5E2D542A14FC24F5F6A
            0E3844F4636DDBB635226A468B417087FC4628615100E70D37DCE033E6043206
            B11FD13BADEE19F4C7AD089D228B809B10E30158FF6BFCF0C30FCD983884A107
            F5813F2977FBAF1EEF4B62A74076A38E3CC0344341C9B0B38162A35D31C13DF5
            F3EBF677A848EED3CFAFFACE77C8BC74178BCD69263BD789F86256B345F6B3AD
            ADBCC9D2946286EFBD5BDE993A5DBA6ED828E6BE7173C2E885D537AB1C998311
            4104E87D51734C9C38D1ECC37F1689E23413A22F0B1162300383B18EF87D8C6E
            183D70453AA38C1CA793B2DFCC098D907BAEB55B7D718123DC16938E86D5158B
            7576169342251CBA510FC071F262A54658D8B97F4774860B81AB4C8954DC7E78
            CA9429843E014C70E3285BD1DE5FEC448CD86E374FE9E71DF66727967980EE7B
            D2DE0737BF4C3FFBE696EE43C90E678F2FE0327B1F96AC3CFAB99F1D79C2EA00
            B7C205570E90CC81D037DCBC00DF226DDAB4952E5D1E326A82EC4E2C428E2E17
            F732166F7482A791582D3FC9EAFB3ED3E84C05437FC2AA4D6AF8FBDDF7E47009
            38CD62C585A3CA889447889E1845BA74E922EFBC936AF98F0C232739656A449A
            73A28630B0D09FA81B38E79468F8F0E1D2A143077446575BBF2305956F586BAB
            CD49AC6052AF29681196F885A31FD4CF841F32009FEABE4EF63E7C539603862E
            0ED23A53849CE3C96580917DB048E4427CD1FE8C2A8428961D72504A788A9F70
            B111CB2DC7E81C10F931729DEE0406E92152DCC1C1A3338666CF9E6D1621DCA1
            329918B36DA77C96B38C720A18BA09B10EB70BB8C646FE5FA257C26D07F79350
            9CB30311A29913E09EC9F19D2111092E006A08E7E1C99393FB5923C603901863
            88ACC151572C7F318A36C1D9E52E5D524A5D7F9D445C51DB53E9FE87BD2619AB
            02D64BF453007BC9FE8CDA0280A4FC670B7B9F0F0C9DDF73C0D06F1FFE4F8FEB
            BED1F667C074A8C4C94F9E481326876F22A18486F523DAA867CF9EC688969DE9
            99679E09A88AC8447A4CDB9BA77C96B390722218FAD34D62F948E1C396CC044D
            881F96DAB4EA99B0DE022084226201CE6E84288D0E0DEB37BE866E430D4EBC83
            060D327F6374A20FA2E6534F3D95ACF6051C0EC6889F7FFE658BD79B641C2D15
            B0E0BC896269637F76B25DCFD57D57D8FB9281A19DD0C108C20EB7A81C62B424
            990C368D9C945BBA7F6C62A2B479F16599F2C22BC6493A2FD780A10C1581E3AA
            7426101151E4F6CC2442E7875F140B0EC6ACAFB3FAFECF543A1BC0D021B22AA0
            734A968A07FF412CBC88BD398970DD818B728010D1FED5575FF505E9E30C8E1F
            1B7AC560C61CFA8D1C39924A755D15B008B81FE224737539686FD47DE7DBFBFC
            C1D0D13FC6EBBE587B1FFAC3AD0A9345A800A97F576977B32C98324DF2ECB473
            A1235EF24CD0F99E4904178E3FA3E3537A9A08D6D3493BCFD8127EB929ABEFFD
            4CA7B3090CDD84988755DA17BE81DB03FE5ED9B532D8A910D6D6C71E7BCCFC4D
            54039C63202772E2B58974C1F1173025A2E6FBEF49966DA20ECA78E3A5A21C97
            459E5C36D0252828C69B44090715E84CAC630030349FC54A1051D2EC3B2CE7EF
            DE25EB8B9635B90871E331650370AAC72D866416A1F8916625A11E21ED1C8D50
            39322D61A02233D26924C611BDEE59E703981974B6822184E306FA454CACE665
            848BBAF3CE3BE5A38F3ECAEA6BCB3022AB38DC1D84E80CE007721E272A065D17
            E15F38813BB1B02E8AB8AEA1E79A06F5BDD3060C9417F7ED97C337B5921FBEF9
            5616E3A06144602BAD963F18F2F2CE509E70A927CAC431B7D5617E3236566AEE
            DB67654562011A3C78B0F100C8CE967FC23E013B7C3B592C48A641C360950904
            07585E2C3799309D063A9BC1D04D88CF643F31D979D0212256527B2298A3F599
            4064E3219E99B034FCDDDC1669226D00411CB69DF2092402806BC4D0841B0840
            85055EB9CB6D9F7FFEF94941BCD5AB8977D614F1E42E9A9C1374C070DF3669FE
            CF3F3271D870D93E609011934D4C253E81E803F96DE284CF044AA9D051061351
            3D58F64976801E168B11FA400C4D6B4FE1BC614A85C260788290CB48368169D5
            A42EC16A4CF20652229DA904170897E78E5BA62C02BE6FC46E3B218744B16058
            E19E3156B833EC2056A3C373B280638D7FF9E5974D94CEAC59B3E5D8E191F2D1
            2707F27B3C0907BC89525567D50A4FA4995B7D144729D054E2982BB7F54B2FBD
            64226100E8D35D5E22A308F501512E9940E177328B283CF08109560527625FEE
            3D32D4008C705A671291F51851D9897CC0E78DBC8F0E11CE48940AA234D13144
            46ECDCB9D3E80A694E1D0CB8222CD1243CF0A75EBDFACA6BAFF52733CDA40B2F
            90568A19FDA6CF485E73856C3E24B5204E3CBB2747F527E2CCF1D374670C3A4D
            84D525FBD5FE3C4B280C8629132C0B1C22AE2346F18F78497E4472196647A7DF
            9408C388C381018EE8452177F61CC2FC704CC751DBED3B899FA28AC7868B0BE4
            82C4B9C94FB96CD9325F5E46F7F7445B100B8DCAE14C0341088774B8D8D35C01
            CEA10FC432EC85290B280C86A191E392638A9EA0EFC2A919D78FEC940C3414C2
            E5837A2CC470BB45547C0EDD255989F4B8FFFEFB4DBD197FC2870E91994C3E94
            92745288B9096308C96DDD4922B22B3126F8321241825F26E3402E4A1264F817
            12CB40221207931351371468982622A735462F4CC1290C866923D82814D93E2F
            66B2C990D51ACEE94C267C100102809E4CDE707B9093568AEC2A64EE494D5444
            8C86FB3C95F20E994D78111C3B76ECD44F141A11334C5CF6199F0C35A751180C
            D34EC8C71DC5727C35E5F9E0B03A74E8600025234111DD1DEE1C58734B962C99
            A937094784E88C2B0969E58311AA031C8D11A933BBFEEFA912C6247C4C4F23A1
            7340C3B05ED7154A0F0C3DD51386E9F450180C4F8D98DC6451F139EE61B5250F
            227535DC84E8454C30C019A816CB6FBFFD661C789DB44EB8C11041E24432E0D2
            81ABCBE9247E8B78656A54BBABFCB9095D29E04CF25BCA28044B00919D090B3B
            CF049D29D6F28C247DC487EB5D2DB9CA9412CF15B5455AB79487CB5436C5D0C3
            948D290C86A74E6408A1AEC7F3CE0E44440C066EE76D9C9DE11E6111A8B3E2AE
            C247966C2769043A387491F80092AEDE212CC294407008D11560253B4D4610D1
            13FCF6D2A54B037E8F2F20D1218020B1B779F2A45AB5215B12A23E791E972F5F
            6EB2493B0937328AF4F1EEFB6BB52C2F5D41EA4892BE5F51D25AF77D3779BC48
            931B4FFDFC613A7D1406C38C2312127CAF13BF91638C2575186226A9E749C04A
            0A3140E4CB2FBF34A1674E09CA5DBB76C925975C62445394F84E512914F8B8A2
            E0FA42312987A8B1E2D44A81A3A4587D7A081D2116656294DDC6138C2988FBB8
            11912D86C895339D8812618C03197B329AD62D235983242A1836F3E4312552C3
            740650180C33989A5C2B77CD99279F39115A708254FD838BC3B504511971188E
            0E900478E883588CFB06FB8806C14A8DC80C17C64BEC264455C7D50350A49054
            5A0880C6691A8B293A4987006A5250C1D5E27C9D5269D5338D308E501A0227F1
            CCA0E64D2569E20F72A53ED679C1CAB286297B51180C5320BB483A9998FF7352
            D3A74693BF57306C6992A33E306E940C19F48E44FEA95CC2DE530C5D052CB15A
            035488D77099E8EB30AA10CD118A71858A6BC4D41279C2F10E0178B8C174EBD6
            EDB4EB24B382281BCBFD6572C94DEAB7340FB5B32B096E096A45873ADFC294B1
            1406C314482726353CEED676A54ED04DA1AEF0DB368B9428A7C71F93EB921264
            3245CE944B5C5BBEAA897D266929F26EBAB211008A88D764A18173837B0C947D
            C64D88D180287A49B8523791AF105DA1BFB12727102555E19AB96F278A261389
            D447FFA6E5009D5FCC0D92EB360D8BD6594361300C40365748B0BC535DAA8B4E
            D0F7ECEF520545D74A4F966602EFF34AAC8CF544C9CD76175C721AAAE45CBF71
            437968E52AD9F1F73FE659144BEBB5E2164298206175E81A091D430F3873E64C
            938436504615C46F749124A7CD4984E334223EA23F2187C45E6388A250178048
            094ECAC466B4F5D8260A2C9101E9A9B41C64CFB537B4394592BFD176B3CE9FEC
            97423D8753180C0390AB621BE66027953545D2AF0A7592BA6A1013CCBCC4DE4D
            49C6EA925B8E3A916D09FBE4764F847C3CF43329FAC0C326948DB868CA745E11
            CAEF3804D708B8211662180944448350B325BB56913B55420D00D0E3284E3EC4
            E9D3A7FBACF66E004477D8BD7B77137A9811D4F01AD97AC94572FEE0F7E46828
            FD5DF3ABBC7E5C2C560D7188AA82613FC42CA29CF746640001648C8CCDDD51E7
            839851F2CEE387418DE01FD3A218D7BE9575335DACC2556486BE4E8FDDE7E220
            7BE8BEDECA3D5EACDCA3A93CD7FD6139E7D26AB2E4C7C95262F458A3874C175D
            70C105C65507B79E8C72C3C9AE4452582CE36E223F2206ABD3156172F71DB260
            D870A9A76BCB91EE5D45DE0CE24D68E77B749E39C5AF0788959881F4E39D74FF
            ECB0BE30EB280C8641C8B582B3722FD4E6D4E8C47CFB3F9DBCC7DDC5D2839EEB
            90118D49CF4E281FF1A894E0DCE302441CB8DBE8DFBEB2A74907A59227D22AF0
            DDB5BBEC79F703E3BE936AE5792CD414BE274182DB9F31A713A2716656A28B89
            91BFE2E325A40A55BEE78C1340BCD10DDE607FF583EE6F1EB63A673D85C13044
            B26BFBFE4FAC303C08B1B97D28C61517E0A1139C25560D604CBA14555FE7FA9E
            B29B0D8522EA2287ED7D5825272804C62F9E2BF7D6A82385F5F3E040BF0318C0
            0552E0091FC7B389489C4155C04C261637EA8206CD3EED7ABED4F81E21968105
            6AA7FBBFCAF4C10A53400A836188E49AD00015E98E1D3D0F8036C5DD2795F330
            E638BC115E424A94EA7ACC16EF113D369755254EACF0BEE6CEB9BCC764E0D143
            F2186E7217D736D5E428C464B27023FA2202936BF04C8D0A4989F0A5440F8A9F
            255123FEE50AD00D6220228A0417232CE7E8016988C54EF6EED34CB0DE73027D
            E19A33E42EC39BC08952224B6E6DFDEE70D68D6E98FC290C866920D7E426753D
            7AC45BEDAFC6E8FE5B031EE312A35DC7835AD3C40235FC5D885498E9D5BF3CF9
            EC02EBB192CB1365EA3E93F9E089CA15A5DB1ADB558E303DB26F376AD4C83869
            E764220C10EB382E4438A057AD5AD5C4466331A6E633E18388C638554380E0DE
            BD7B4DA8DDF8F1E34D9CB83BBA2623C9E391418AC73DF5CF937C775CCF1A2750
            32EB3A65FE081D7A53BF8B0F8BC6D98BC260980E724D745E04567B58966DDAAE
            D5FDCB03F4C77072BD7EF7B9DFFE29FA041A4A84C42BF811B1B0482CF79A42AF
            BE24CB070C9223BB774B3E270699B2992451A03EC9D944E3C68D3359B20314A9
            3244A61C4A11DC7CF3CD869B240E9C6A7544EA603C21EF6206D2DF62811BA0B6
            2FE9A03CA2CF6D983E5B4A9E8AC3E19BBF0F99C50C076CDC67A8137D97F69B14
            06C1EC49673518BA27A57B12A7F11C88BBD3C4E2E03059BEACE77C3ED9B92D4E
            1203CC62A700BB43BBFF9609D3A6CB0DDF7C27F123460B81B3F42D9C276F7E4F
            C306F5A565CB16860324A4EF4C2AA49ED1447EC59492486422516690DAA90794
            238C502117972992B4E2289DAC50B23EF32F75739BFD71AAB6B6269A298D40E8
            378FC2207A1AE9AC06434827184ED1EF6BFB091FC2F44E383D0EC5F8EDF6C731
            CAE975553177A7F37DCD1A52E6DD3765C1EC7932E7D1278CF1A5AE36D2481BDD
            639932E7A9A857C5D41A212DD6999617F05408DD1F71D2707E152B56F4E93E09
            1B441FF8FEFBEF9B8C3AEDDAB533B55AC8D8F3DA6BAF998CDBA79BCE2D2152F1
            7C79FAF73F4CAD6DEB7A0F99C261BF691BAD73E5117B9F232D20AF03982C92D8
            8EF13A1890E63139713E3C08DA69BB503FF70C03E2E9A3B31A0C75623D239698
            8B52098D1CBABB0D69F42174AFDC8D955FF805D7E9F803F2DF25B5A5EF9A7542
            0525AC88312A4EC5E87BEF2B0442381D5961488D458C30BAB09CE80C9D1A110D
            43E208747B649D76CA11905F111D20E048361F770C361125F44DAB91844C40E8
            1D297685288D584D12DB408EEA5CC64BCF4AE33ECF5A0632489F31298200C21B
            F5B97FEFC50416E3032E4A43BC6677E584359D5863B48A9E10F25E98F3C5FA5C
            BA9022C88CED18EBCAE9F9FE4AFD2C614A0F9D7D6F9E8B6C2BDF6362D53739C7
            DE3D5CDBAB3AE9967951512586E64718152531FA5E3638AFBC74888B953B57AE
            4EFE3DFA2B7216D6AA55CBE8B7E000734A56989408230799A4897DA6E60AFE8F
            FE444A2DACC529156207B82848C5399C186327CB0F0918BC69F446A75C6AF3E6
            CD8DFE1520258103A04A8EC9810307FA973540875BEBAFF59254B682992F5884
            5940AFD1F931D7CF65EA5D6D4EB8E5306D0FE97747435D58FD1655748DD4A775
            72B3218EA37E198D9FA2273AF5F38529ED74D682A16B223BDBD775F7E3CED7DA
            3ED6FDF79B0F5E63394C89508EC30D3CE2FF052F3F4A7DF21102803985EB4364
            A5A428E004B090A7D19F66CF9E2D75EBD64D9624813140CC25640E2E182B3125
            5833A9F25C32225C0F300C02A6183C7A4747C9C70989667E6008C1A7F002E36C
            7F62DE905F0DDF5107F2E0E6C6A5472FA85B1278E090EDAE4340B2902F9C3050
            C7E3204C194F39E3ED3C45724D463C957BC98978642C8404D1F7D7EF1303ACF2
            641A192976161A5C3FA80582F3738D1A354C285C4E22D28061D5F54F74807183
            04B0DCF3C68D1B4D8D6638ADAC24226F10ABB90E1234844A2D9AC9BE3F974BAB
            CD7F1951983981933B069065DAEE85DB73FAEA77FDE54462069F137EA8BFE5E7
            7EF39C58F38E7712435C3F6D83F4FB83A19E2F4CA746613074912BB902AE30BC
            F155C5AA9FCC0B40BAE7A93A391DA7357C04E7A1DF2263CC1B6FBC6144C19C4C
            C18A27C1F5321659902E2B199140975C8FEE84B770A864F109405E6510BDF9F3
            49441795019E7C5CF6E5292A35F456369A2FAD98724CD880D2532EF0C2AC8FA3
            35AB1D1CDBEBBABF977D8CD327C235570292F6416F400D9D37EC5D0CDE649D71
            AD3DB9C27E88994D6130F4233FDD0DD94EDFD47691FD353AA467F47B82F38C52
            FD9B6FBE3169A3CE063A74E890E1B670687608E30FE17F70C5A54A9532DC2399
            71C8A69DD90418BFF0C20B2611AE53480BA30CD12901C070E4F9E565C24FDFCB
            FB15AB28B84508A6E9069E28E3DEC4B347F61FA4ED4E7DDEE35D2087D84A3824
            8088B700F1E433FC92307414CBDDE636F70FFACD2D5432940C7512525233F939
            FDDEF80FA5A29A09D369A0F07087403A7129F8444C7271D6F216AD4526FE6871
            43D42FC1E249EAAC850B171A8300860338141CA53198E0248D923E2710A16EE8
            FA3008A12F74DF17000450DE79E79D269D5676226C37E5CAC9A10D1BA49B7EFC
            54C1A6981C36B1C5789762F9ADAE60B64BDF08DE09F4BF88C024F6351615DBC5
            65A0B607EC532216D73791242742292916FD9958E9D75A9285C61C7B22E10752
            069128845C96178BABE41AEED0BE7F781FD27E991E5E1D2687C2601884ECE40C
            2742F022A59DC4CADBF5EB4AF4749BD140110FF005CB8DD7B4695353952DA7D0
            8409134C64078B01C6140A594184C1B128C04166276AD258F6BEF5BA445E70A9
            54470456203C5FE265BE241A5D2F696EAEF545901C5231D5E2D6B018EFB2F721
            198C9713598B3A69FBD42DC26A1F2252C83CD45BDBDBFADD11C32D26F9542F94
            3FFC585B0DFB10CCE738714FD6BE09619138EB290C8669A306626533AEE6DE89
            D5B870E1C2865BC23AE9F8BEF199FDEFBEFBAE11DDB23B0164648606E4707749
            29E2059193D8E8D394313ADD8498EC541C84F459241D3B7668429B56527FDD7A
            D9B270B15173443EF290DC7EE10522952A4A7CE7AE527FE366D9F5C07D72FCBD
            B7E53B8996559E482BCE3CF1A078223D72A7FEE98451A24B2481C62ADF6F5840
            39DAFE8868FCB7FB9AF47B82C79F16AB9C2C84688DA7429FAC1EAF3025A7B30E
            0CBD384CE44A73024DFC11D1111235E2A184260594A821CCCB479D64B68E1F9D
            931880CFEEFDD99900419CC01D0E174E168E36185162A072E5CA597DE986E0CE
            89DA21C53FDC3AC4C284E8BE7DC74E59B162B9AC58AE6DC50A59B66C856CD8E0
            2B1085D1E258AE3889D0C718B36DBB8CD2B56CA41E0A8738458EE933B76C42EF
            AB50FB8872793E3F2005BA0F75739758617713FC3D0EF4EF4F7543B1EB58FB10
            EAEAE0C36A58E9F4BAC984B9C8D343670D18EA04C2759AC9394CDB34DB0812CA
            C4626527BCAA3A19549E7AEA29E33A93D388FA21D75D779DEFF3B061C34CC128
            7F225283BEA4CB9A3B77AED1975278095716C007307AE491478C5539AD0ED169
            2538D8CE9D3B9BECD670B2001F4018AA3F27D74E64CB8C19334C640AE0CE67A7
            70562D15689B3611295654463FDAD3E8114D16726FBCD457481C265619870E3A
            7F76B80C2CE820E126D12F32E71884EFB43D7A2AD1237E208B2B0EC63D3C1CEE
            D176280C8EA74E671318E2B78568C2E464AD477FF398DB6F2C002127927BAED4
            73CF3D6744C39C4C88BF70834E2DE5FEFDFB9B64B12489002CC898C316D0A95F
            BFBE1193013CB832377DF1C51706A0DC56E7D341F8372E5EBC38C3CE877A03AE
            9EA8144204C97E6313AC3EBA8F1DAD5BCADA0FDE919AE79495868AB924DF70BB
            D3DCC8ED8B356F20D84F5698CDE98D7BF7CB8243C03AF3B68136270EE5323DE7
            A2D33AD067099D4D60C8444264411F7499EBAB49DAC830F24D80649B4CEC3BAF
            BFFE7A1371712612E2EF638F3D26DF7EFBADF94C48209C1089521185293B8AD5
            FBD5575F95E2C58B4BA74E9DE4D34F3F3516619CC60142F205525C896310F901
            0C8090FA223834E37BB87AF5EA53BCD2B4132A08AE1535059C28FE9EFE09604F
            855019008863C68C318EE47E0457384DDBD42F86CAC13B3BC9930A97758D10ED
            35459E70D41F43C7648016428D13BF1C9825C49AB31DC44EEA6B130986D1558E
            718C3F613A353A9BC0D02D661056458A7D56ED08A78BBDEF19C92DFB74D527F2
            C0B2269E66712FDDF7A4D7E51609FD3F43F8FD01768E1E93DA28CB972F37DC0F
            9C95532889D85F38BCDDBB771BC30F3900113D432138454017601A306080EF5A
            327BDC00F6471F7DD4F7FB4B962C31D706A89315DC4900911E62FC886661ECF0
            A364FCDCF758B68C48CFEE22AD5A488FB2558C7FE289E762F92016D0B7AD8002
            61AAA2B29D0D9DC51B479B66CE6EB1241A123720D11C36E7255639E795BDCE12
            3A6BC0D021B7D25A271D2E14D418210CEA4411618F4C7DB2AFFC356090DCFDFA
            EBAF9B88067F22E30929A778C14EA5DE081C0DC901D055A18B24430BDC17C0C4
            96461F400B7716FC1A4961852160C18205E6DAE0DEE0FC56AE5C69D2E3BB0930
            A4E0BCF3D2E20749D668722452573910714F58C01D3024C40EF1D821AE059541
            A02CDB889A88DB44E4C03D72CD9945805EDFBE7D8DDE10A76FC7F11B2024E103
            31D4C4896704915E0C9D29623A5CA34B5C67A051AD905C61469F5EB2A9DFABC6
            819B746D24821DEB3E8FDF220D17483C3C5EFC97BABA11AF8CFF2269E60EF81F
            17A68CA1B30E0C53229B5B24F3485D1D955C43DE1779B887A5FF4264840025C4
            48B2A8F813964C0006476432D2B85D3C9C631DA7E4C993271B23C49429534CBE
            BE8C2280B35CB97252AC5831931401FF3F7F7044E48563BAEFBEFB829ECBCD49
            B175EB05F1230408B0A607A2175F7CD1A8150067EEFB74EB0ED34218C1C68E1D
            1B904B04C4DF7EFB6DF31D5135811250A4443C4716CE2FBFFCD28CBB7B1188F0
            C8F124AF31DE01840BC40AEF84258FD7352A4E3F959724E3A3D8DA3E044065D0
            46697B92B2B2593D6E670385C15002ACCE1EA9F7FA2079BA675FB9841A1AE8D3
            98E0F5EB5FA35C1CF1FA266AE077B10A3A214EE36BE65BC9F12D0494DC0480C0
            A5E1989C95E4709AC1083119203BFFFCF3037EFFF3CF3F9B304437214652BCA9
            7DFBF6C90A53C19D11B2979D08E38F7F2209C08CC4B28EF10822E906F743128A
            B4A45B4365403412D5FA58F402102BE0B6D818D9DEBD9B947DB48B5C702E438D
            5793D7589E51D7CC75398287B9C04CA03018FA916BE29175613E1C1EE9E6F1C1
            A3E0EDC05744BA3E6642F33E5091E71FBFC349E28A91A67EAE5C52A044713997
            EC54DBB6CB2E951EB14692EE0B9604C7C3883CB9250FDF1F4F8273B47E5EB2C9
            3321F5D8134F3C618C2488D818298A162D6ABE7BE699670CF7E710008BE10203
            C6C891234DB81EBA4B00E7B3CF3E3B6D05994E85B8662269505190311B6E3DA5
            CCD980E4B5D75EEBFBCC82366AD428F3371677DCAD52A2F5EBD71BCB342A099C
            DA21B86CC69205D271E3A9709E24942D23374E9D2E67A6A52E0750B678F1B231
            19451B8088D8F3E567F2E76DB7CA25762E12EC867088EF2B78BEE1779CA7DFF3
            92EFB69BE5EAA285E56305BB3C9B36CB13975D652219080143E6F48C1D29CDAA
            57930F01429AFEC4FADB3BCA9D6BD6194579A1FA75A54AE74E32F8DFADB2A357
            5F03C0E796292DE59B3591DB77EC14211FEAFC85B2E6C0418954602D73E4A8C4
            803BD85032C27601A0D1003332BFE04308D5A953C7E42B84E09AB1B6A3B74437
            49C53A9CD2CF16626EE063C9F8007A2911C0879E99B12497236088CE994C4083
            060D32167E9B1A8895493B4C994C61300C4E449D50D41D80E9AB00D35F3947C4
            61D2359185B894AB2F617A64C9A6E853B25CF47A0C510A382932DE64D5FED9A5
            08C7E902C51E5992ADAC07117AFE38F9447F73374C999EED6B3DB284F293B7E9
            BE25BA8F489851F6EF23D7DDA8FBA7EA7E2C8DB5F7FC23376CDE24D7E6CA231F
            EEDC2591AB56C992477ACAD06E0FC9F32B56CA9E858B6477D5AA72F93FFF2AE7
            B201A347688301878888EDE80FD1A99132DF9F78C1870E1D6AF493585D33D388
            72BA0915027A58384B006CD2A449C62805B12890419B31C25003E8F11D227630
            CB3C7A46F244DAC4024BFD94ECE9C29083290C86C1A9BA36CC84C4A2562F5756
            E237DB8E1176440BD949004127C517DC22EE38E4B71B68F7731C727192AD2016
            8861AC79D6E128ED8410643CC1AFD171A5D86BF7196C673B410427440C7FC876
            DE837A3E8FF13373F287110ED652FBF2568DD023F0A52CA8AF9453BFE33705D8
            07E498DE4BAC5C9A7448DE898F97BAFBF6CBB27B1E94AF9571796EFA0C094A80
            E15B6FBD25DDBB77379F5313110105EA1967850F62461046A4F2E5CB1B6ED721
            40107DA0C3FD02F4DC1F113BA3478FF619C4E018E1AAF15564F1207351C78E1D
            4D8C3AEE4D2C12A8136870D9AE6CDFCC9FAAF6364C994839120C5D495AE1E2D6
            3AA177E6BBDDFA5D91904F858E0FEF7EB28B9CF09DF05368EB673291E0B3819B
            8EE36F02BF05DB4405B569C9AEEF9001B6BE62E92571CCFB8CC241F6778DC5CA
            7A5CD7EE4E14432FFD7E9C7EC7F50CD37683B67B74DF37BAAF9B7D0EB84AA0BA
            957DDDF8C23C645F373E345C314EC080F76F763F2C9CC5F4C8F7143C2BEEDF26
            2BC77E5FBFF5EFB32A959D3973BAA958E7260C2A8E5E8DE4A984E10522DC6BB6
            6EDD6AACAB83070FCEBC079FC1E470BE70B81843B0FE23EA92B60CA3109669B8
            41B7C108F0833306E0004D74918E5E3044222D378B66504B9BDB31DB7CB6EAB0
            30B357858D2DE9A31C09860EE904711C5501840FF5D3709D4046660B2512C026
            C4D823F6F9A8695CD049EDEE5FD356C5588FFE5A3DB100EB3CE732ECE39F82CB
            735D1B638FFE70A8582E15942B7DD4A9BFABDFE39786323DBF7D0E32A63424BE
            55BFC3F648A665AEA3815840C73D9E6B9F1EA085335D2B567D0EB2A638995660
            7340317CD7886858605FE50089E9D94BA20718230EBA2DFC197BF7EE6D8C22FE
            84FE103D994370811856F097C430C167CE118AE3F58811234C3C330EDF594180
            59A0B46324B2858373A25AB817EE8F786827592CC0881B1371DD185902E94BC7
            8F1F6FACEF44B3044BF566530F91E44EDB0EF9CF5905C4E23A8BC886434A319C
            B49903B59D7A29614A1BE55830B46BDB0226E5FCBE022000124062A64E9C2569
            3C27A17B9405201C8A18B7497A0E13C6E1174685884D36139C149D6CC6001D01
            AF5FEA31935CE7456C2674020E94BC79AF9BEA7C96780CE74745B6C276778E7F
            5EBF5FA1DF635479584E88D3707D4E612AC08ECA7F14BA0274916DF94D1C7B11
            88A9F38C6FDBAB8AE2FD25F61B8F44DE18F0BEE18E0000C43E07DC883DC6B11A
            1D9A4354AC1B3E7CB8F4ECD93359DFD408111151F2C1071F940F3EF820A3A742
            AA84484BA952C0CA3F23364621FC4CA9658DA1C47DAFF86B628D860364EB16A7
            21EE89F1C1099CC678A402F83C0F93DACB1DC2673E5B73819A0BE482BBD26E25
            FC8EC7C2553F0C86E9A31C0986C938B6A312ADDC1A719D7819239646DACD216C
            C3842AF016225A22DE26061335F4FCA46402743086209E008A2F685B6E1FEBF5
            EB8F5FC610B192833ADECB38DE025644161CB503F9791E03ECF3922C1020DD6E
            7F07D03D2896080CE1200E5052E2147087E3859B448F09E8F1F200D2B5ED7B87
            7B806BE58501B211BF3F154FE18725D796024042B031A5683B3E976EA2F6F00D
            37DC70520820068650233DFC932DE0B2823121B343F9003D3861A26B28278A88
            EF842A3A04074959812E5DBA18900BE4B84D561F5CB100420C2324BF0D817876
            2C6AA82D1CA9214AFF57043552035129F5FD8E619E7281CC930F758E4C0CE587
            C29432E5483074E824B1C24ADD8EC320A63DE292315614741D02E7B652AC702A
            BC657FD449E6AB2EEEAFA7B1CF09B708C8DC699F77AE5846922F1D8ED1D51743
            4B4B6D5DE504B78842699AB64FB4FFB7763F1CFA08CE7F4E2C4EF625FDEE07DD
            8F2E09A07CD03E16FDD210FDEE19BB3607808BB88D6106371EC7398ECF80206F
            26566D40B4B2788AAC945C1B144CF387A44525A5973BFA06E7725C6BFCA35930
            3CA425DB352186F8313A84088EC8E9D431C92C224C91C8198C3EE83C295D8081
            03CE8FF03B87B00EC325126D74FFFDF79F146DE4265406386FA7402CBE88C444
            A678930E4A555D57D03B339F98A7FE719EA84A48998E0E9879BAD25D742A5C37
            E5D4E8AC1BBA00C60FC468E2AE089340FC25D4C09D930AC3060880A517603C40
            9AF620E703680866C6ED854220D454A6C8CF5E37C7A8FD00624AB821223B6F13
            1107986731BAECB6FB017CD4E32097DEEDBA7FA1EEE3DC88C1802F5C2EA8C14B
            B4C0FE4D8C3888517014B07358B237DA7F732F0F89A7E8B3926BF57927A4EFD4
            09110FC0C03FCE4D70496DDAB4319C904369A9110D981206E7AEA7029746861D
            A276329B3A74E860C47577061C225310A5494641A61E37D7882105F0261C9350
            4877325FEE2900587A4B1497F65BB7C93839A2CFC96B0A48DD2927D27241FC00
            6E5358AC78669FBBB3D3A441E71DA610E9AC0343370500323832800620C1EFEF
            5ABF4308BF238C00B96EAC1EFB9DEFD893B95000096D3A165D2CC418301083DE
            F303534467801131DB4126B8457499036D2B322F4923B1383C58287486EFEB7E
            4462C4EC2AF671142F7AC23E1ECE16C0248FE324FBBEB8FE8F847ACFB9B61616
            4F89D2924622ED171C913F616926DAC2A1B4802144B203FFF3028444B5F85BB5
            338348BE41EA338ADCBB09F19D70BBBBEEBACBED28ED23B86237A8C321BB8D26
            7975BE8D1D29BB9B34D1C52DC92CC46E486351A34A1E6A1BA493BF930160382C
            EFB4D2590D8681C8AB53CFE32AFDA11310106A2796F21A6BADBF4889BE0EB118
            DD0DFABD80AC8C9E079D1D7A21C41F8C3794205DA8FDB7B8FA90B9F87F761F27
            181660835B1C4F5FFB7A108711EF1FD35769941C363A41C45F07DCE00E798BE1
            28F14344E4C640D3C87C1B376F8544D4BA30BD6384883867CE9C93F6E36EE224
            447542F8E09210838311A17FE40C3C69CCF41C247920E6992CD45941E8FEE012
            49DC40961E474F88080F17186A120ABC6FAED3D11FC74CE11449464AD866370C
            7DA39C32A1E6DEC39C5FA653180C5320AF4A821E57754F05214467000883495B
            B1926DBA0B8030B9E1BC78F351667F16C852ADE781FB4334C685A28D58058230
            86BCE672AB814345710E27E840334A7644265C7426D8FA43F44DD7DBC7E34E03
            683B1A7B47B98E1B0D591510B93E90C826EF4BECA995F1C415C6C9E4E3267469
            6E700004313AD4AC59D3247E4889004DB82C52700522C472C0C89D462CB3098E
            8FE4B7246EC0D882BB51A8D753B3863E802FC96C24CC12CCD588BD70EEE87CF7
            86B9BDEC4161304C03057074857B433B8E7C07A70538BAA736E230C088B8CAAA
            8F037832675A3D0700D6512C4B30A11A80D90CEDB7DCFE1E6E112E0F970A278D
            27808BD519360CC8A6D0D0B5F616D71CF48CD4C6700A11213A571729748DE4DE
            43FFE2A73A16805CA0303B7FFF4308FD1A1C232223EE38F8EEB989888C5B6FBD
            D5586A53227EAB61C3862675D89940D4A42A565476B56E29EB867C208BE4A872
            F6B9C24918B23385C130150AA4A749C1AA8C5E8F062862B8807572E7A0775C21
            50AC0D530EE1633D87159F6C654206A4D02161E480EB642FE230D5D4F6DB9670
            FC1031C838A008278961A4A7585646001271F8277DB29DF80DB1A255943CFB25
            6E46BC445C553423C6E5FDF7DF3F499F06E16A83CB8D5B6708B748E66C0C2DF8
            27E29FE7264090FA2AA911912DCD9A354B292D56B6A0D2A56467A973E5A3CB6A
            A86410217F0F795F8E793CE2CB99E6AEC51DA6EC45390A0CFD2342326AC2D9C5
            A4B03663ADA508105CDB1A3DFFBA548E835324D103FA467C1C2FF2EB82BF066E
            1268E2D11F2E741D0B88218EE30284EC8952FD3BDB9A8CEE0F1D245ED28E6E11
            4B37E049F8205C26EE3B54F543B4AE2B9E8AD7492E44D528C908C2288078EB1F
            51815BCAA2458B7C4EC6002616D8606E32709988C92439488D00442CD7006E76
            A0C848595DFD129952ED1299FEE947F29B274EB6A6D4D70EA7644EA00F2033AE
            33277AEB73FD2AB45F0C4E5E953B3C05C3C696F4508E02434827015320C1D1BF
            65D8790F2A97E7912662715AB492F65780CF04D32264BE8A422926EFF31E5124
            4A32060D3C9201497FAF5DF48E70781F2A1F389E200EFB9EF82D0C2B845E715F
            F8122212232E633C41B7E8E65537DABF81A5FA3D3DCB2CC97D349F7862432B6A
            1202116E479254FF880D7C0F718B715B54495E405C2F890AFC4111404DCDC0E2
            4F84F91111E214B9CA22326542C5F22B0D48FABCA3F579B370A1EA409DE24443
            E159F0BD695E99A9124286267C447DE364450A53E89413C11031114B2D02C956
            BB61B1837382132345D226B1CA37067C0BFD8B7BA7201623B63AAB3C20C32A8F
            8B0B28003706F7E870924BFCC1D936C890E081EC3238D93690E429C1A0A5F639
            7098C6017CAB1E473C31C6153855AE01F71E4CB188E1709270844E940AA0F88B
            44B6A924B1631B64F45893BF8F12AA6EC2D080A3323E77FE94925B0E0619570A
            AB90A9478F1E26176016103EA777391FF49910EE48F8257380670AB747A81C73
            109D00CF90F90008AE392942E9645D748A5C9DED635A5E2C60A5E1C275AEABF1
            BB31FA66C779722777FA0F5370CA8960482C2E80C06A0BE0F887DFF9130089DF
            E022BBF13756BEE3BE1623899EE880BF65F8344FA193F6E3A7C85B0F37800E31
            C6FE1D5270E1F347D6183C9713F42A135C05AAB054E3008EF1A3B47D9C5BAEE5
            178789950D07A0C4328DDB0D0613AE909042AC10702CC4B816D0AB8B92D82F75
            04DA65F8586321B6328027275C6FC8DC62EEC90EAB438748B202383A37B1FFBC
            F3CE4BE6A3981622449050C1F412FED1F975FC0B15C25D4612E213E4D8FE7DB2
            FFE8312BC1AED873072E3D2646B694292DBDD7AE93D972D83CDFA66219AEF032
            40C78BBF1152C20F0A66ABDCBF930AC079ECDF71E62B1203A0C74209B8A23FA8
            695F4FC053C889F9CAA288AEBAA6FE5EC615953E0B284781A12B772093AAB0DD
            8AD8DBF2628537D1E0E8CE0F722A80940890FFEC2DE0883F20A2D15A671B4A40
            BC5E0B93BBB4DD70A9C12A8CB37439FBFC706FBC44E80D6738C57F6C4B3579ED
            781100551CB3DDA08E1884F519AE03179A4D767F16029C38E68BE584ADAFC6AE
            A7D292B72C2D445900FFBA2E4E8D1180B04F9F3E4687887F1E69ADA825432129
            DC6D685892F1D7234639BDA53CBFFEFAEBA3B7DCD25EC726313AD46300C16E0F
            89DCDC5AF6D5B942C647E435EA09B8B7E58EC163F634A972E8B0B43AA798D42F
            534A4A172821F975F18BD56F19EB3FE444E6209CA3B786F2BBDEFD0A549166FE
            39F3902D6A90C2AE5630C82900BB35927C2E1208C05C629EEED66BD9637E2BAC
            374C13E528304C2BE9C4CCA313932811DA25F616D08AF36B298D13A22F80B3D4
            D53689C5F5F99A3B7E34D9EF5BBE821848E032107F412C380C80119329C6159C
            B899E009DA1FEEA0A3DD1F2EA1A0DFB5913605EE708EDDAF8D44362F2EB1134F
            DB7326D12B095FFDC9A9618C6F9E3BA42E90EBCDA9D33159BEB0F27F97D5F92B
            E9DC1232AFDE55B2F6AA2BA57D5C9CF1D7F4C5EB262549E2B163B2B77245D9D6
            F8069318F733FD6E8B9D6D1C1042E4C46F938821162C5CA3580CA789E518FD93
            0334019E250BB07BCEA0C2406DE2CC2B5AD520370100BBE70D9629D865675E99
            791668010E835EC6D0590D8629916D84C96B37FE460F73915F0B562E0D40C3C9
            F990BD4537B9DCDD02BD54B643360DDD0F8881E20DCE10719914CAF3C48A2E99
            A1AFC4567D7A00371C23FAAB9A7EA7DBA67D764AEE55A5C45325F40064FF6B52
            EE0ECE0F0B2E494ADD2E33FC8DF183BACA818878638A4AB9E37829AE54B06041
            E36643717BB844F488D48C3E254AECBE26FEE05BB131B9F59979FDA2843C0A64
            51325C85CFE96239B957D227D440AC4505803AC77E4670D32C422C2680E0EE40
            8608BBDEB67B2EA037666172CF9B5849997896EEF980999FF970D069FABB4703
            1D1806BED34761304C85828545E9C424812B4AB3AA76430CC60730BFDD00CC98
            20A747F45EE96A883D883B88CA7B1C076DBBC400299CD04F2166C3C1705588C9
            D3C4E25AF6DADF519B0515808ACA71452577AAC9448312B906A9094DFEBEB412
            85A3F0290CA5060A1CE4B871E3CC31E9A2A499CA4BD5654653B110B111904137
            0BC00156D7DBE3C3D8008820382511A6EA38FF6E8F33EF83A356C96FFF5DD5D5
            2E9493C331DDC4601FB09F1F5B9E25BA432713D24A27A3B93F0532D285297329
            0C86E9A05494E1884B700531760310E11E1093B038C2E95508727A7442F1AE06
            92F0322DB61BE212A089828D1716F0C3D507A0042401452CE6D324AA5B92C40C
            EE712AF78A3B0CE53ED342D4F9F8E28B2F0CC0B56BD7CEA4B10A9576EEDCE92B
            499A663AE479486734F91BE1AA9D0C44A80EE0F68804C24086CF26626C15D7F3
            A00192EEE7162B27BB3EB969A9FD3CD8623166613285E19DADCE918005AABDFA
            AD2718DF18A62CA130180621DBF881C590ED21573BECDA1EF6AF8617E2B90132
            38C90AAE2D2F3016E5A2762B10E414FC364EDF6ECE23C175BE8A12DDA3AA44BF
            5152D24988C8587AA9FB016125061C8365A4C11872D34D37F93E531D0EAB73A0
            63E03A49868A83364950A74F9F6EB2640F1830207D177CB4CE3A499AED181770
            6FDA24C9B9BB2AF6D8040339C46344E69DF6164E73BD3DD6669B1E1F56EF7E05
            D848A3A3CEAD300B57EF6EF084BB748866A6F5BC61CA380A836110B22306A825
            025787DE10B072122778ED96646FD1F5E0CBB8D5B5DDE6DB7A8C8E6FAB275770
            67583BBDBBAFD0BC58E0E6F8AF397E89290954CEF5582D7A6094443F16CCAD28
            28E1204D2A2B27B1292005586534E156436C324954EFB8E30E533A207D177C5F
            82240E4DB2C7CD19C39408AB0E9678B8C585F6DFDB5CE3773C356F017D5600AD
            E3DBE7DEFA37CB0817A9E73D1E233FFE94C733F99738CF8285919E7DFBC553B0
            607444A18247766FD858E09322450AFD3075C6ECA9193EC8614A95C260980EF2
            EED3172DCAA71B746F0BFAB502AEE67C46C066DCFD81746F8086EEC9E73261FF
            FD9F1E41E929F73979E170A7414C2E6D6FCB48EC977112795BBAEFD31F0C218A
            C5A73557614AC479D027BA33DDE07C8D1376BA28F165BDE83E8C193AC32DAE2D
            ACED4E7B3C9DB1459D8145DEED7E15E8F915B4FB395E0511AEE7C7F9F6BB9ED5
            3EBFDFD8AB7CDFDF337F3DB7E4D04FA4F5FA0DD268F51A6FF124EF71898EB2DC
            7B3C1EAFC950EDF57A2422C2C2DE98686522A322A74746467D57BEFC79A326FD
            3CE55F09D369A730186603B24566FF2802E7EF92AE2D1CA1C7D51C82DBDCEAD7
            B648AE2DF78BA7F405215EC649E40F868017F9099D62F2F805D2F89B7D692902
            E5F814125AE7A65302C3A425B3E4E8A564ED29E5379E8C9D5B4BE775B53DAE31
            FB57928FE13663B58F508E3EB7A4D91275CD95B5620E1C3AF8E6EE5DBB1E4AEF
            0212E1899002050B7E74559DAB1E19F2D12747336A210AD3C994A346D6D6F115
            CBEAEB48CFA5FBB5A4143EE3549CC7AF39EE3FF9ECBFF3D9AD90E45AD74E3C15
            0AA6E94A5C4492858F3EFAC8801D449174DC6088336ED5AA95890DBEE69A6B8C
            2E91040A2441A5421CA23446106A0A038ED44D69D2A4893986624BEC231A0560
            259C6FD2245FA140A36FE4BB7451D2ACBFE5E85580211C340BC441D7D6717572
            B783F6D83ADC9ED3027D0E898E1FD705239F571AD6ADD2F8EFBF0F0C48484828
            99FCFBE326B945B972E5A57AB5EA72EEB925A554A9D2922BCE4A7074F8F02119
            33F62B59BA7489C90FE92C30D151D1FB73E7C93D64E9CADDEFC891BD4921D5BF
            3B2E3B3CF93336EE3927534E0343BCF9333F477C76A5B865FA1A5F94E6C3E0D6
            C83E8DAB0B54BE7C791345827F204462571CA929904E120652FEDF78E38DA606
            0AB90AC95C439FA143871AAEB25CB972C69F90729A649BA12F400A384214A3A7
            1A1DBFCBCB3F76ECD864469890E9F804916324F2C9C24A99BA1C8F185E447AF6
            8E94989813D701A0E5CE9DC700608FEE4FC8E5F5EAE9F57A8D27B8F871C71217
            2DCB172E92AE0F3F289B366F749D43A45AB52819FEE92EE5161342B9CD129E3C
            C6A7314C21504E0343C29B5667F575641B4A2718622801A020ACC7EFBCF38E49
            B3E550D5AA550D0708674705B9A64D9B1AE0A4301265326BD5AA65C4DD61C386
            99FE88C4800196650A4A51709D703DF4855892A1A953A74A8B162D7C3E890307
            0E343548D244D9000C7F9A9C5FEE7B304EC7C6BA06B274972C594A7AF7EAA35C
            74032951BA0C79C8C49B149C61F3E898252917F9B57289DD7B749398D818735B
            30E979F346CA4BCF1FF3B6BDE33F8F0477E12C9E52198A309D4C390A0CCF06B2
            1D83419018BF2DA2F13976C3EA5D54726DEC2A9EF26972DA83B3434F0821E652
            3AD34D244600ECB0FE42C421E312E3E80A893F26DC0ECED00143446B32D6006E
            801C8ED8356AD490DEBD7B4BFFFEFD7DE726F557850A154CC40A95E970C981AB
            0C999216AC97A3B5708A0400B6DB5B1AFA3EDC61125CDB848C8FE4F046942A5E
            7A5F54647C5EB85C16902E0F3D2CDD1EEFA9209D3A0006228F82E0ECDFA74BDB
            5B5AF9160EE8D831AF1C4F2AFEEACEFF96F7CEE8BB385B290C861944690D9332
            FA4DAF0297C7075ECE9656C2D59CD02EB73330CD8970C00080A59497FF5FBBF1
            39BFE45AF7B8782A544CCB7D74EEDC593EFEF863EB1AFD8C21801E3580F7ED33
            B92464F9F2E546FC7567A9419F08E747B94D070C9DACD800DDAA55AB4C91A5AB
            AEBACA1CEF9CCB21F48764CB86D2EC7398346F9E1CBDFC43B1627B1DC349497B
            6C5914B01817B2C7CFE71CEDDAFE678FE336577300D5806B4A69DFA08AE54A6D
            4A48882FE7F52629D8D794F7867C6474826901413842893D91A8E8AF35EB64CB
            DF5BE4A57ECFCBCA552B4EEA5FA860A1F717AF58F350FD2B6BCB6FB3E7A5E551
            87C98FC2601822D9C699E4091C729F94D001075ADC348AEAAB5542126D0ECD7A
            09DD060FFA39D125EE86427FA7DDDCDC8DB30FE0C3C11B8B467EFBBC188C7026
            76C2C5D85A55F262468844859E27106E0643C7AFBFFE6A3E53F008A76B000B20
            A4607AB56AD50C67473D138A3451250F238B53489E929F0026FE8244A14088C7
            84F4E5CF9FDF802131C9385C139F4C11288C28C426E3B6F3ECB3CF9A3A291055
            F1D254F324E1456DCF389FD01DFB873AEEB11B9C22CF33DA1E3FA7B91726C7F9
            3D77801629EED8F30839F4F63B4512DF181451F7F8F1E39E664D6F900F3FF95C
            BCC7D2E69BCDF87F3FF13B19FAC9C7B26EED6A3970F0A01C3C784045EE28898D
            8D35E375D2BCD405ABE4B9256F9EBD70E958F4AEC48287297D1406C320A40008
            C0918390B02D272F6294BE42C7C961BC6A51C188B9F33C111B37E68ADCB6FD48
            C4C143B924213E4A4A958A4FAA5F3FE9BD1B6FD9F1B942DE1E852FD81F9F33AF
            DFD671F04D0AF0FB4EA89893D30E371927C761B49CC87F17F0F22566C86E89EA
            92263119F1D729DB090747C66A2CC54EE1780C1CA4DDDABA75AB8FABFBFAEBAF
            7D790A31A2A02F44AFB86285C5C9009C185930BA90F815030AC61480D5210AAD
            2306E273E870A4EFBDF79E3CF8E083A15F7CFC83DB25F18360C5AE12ED96606F
            59809CB03A93CB529FC3493549ED85D0ED087FE26F8FB65C17C8C555F6ED3A78
            30512EBAF06219FFEDA434A7230308EFBBBFA34C9DFAABD178A22AA886B5B9C4
            B902A79998785C66CEFC5DE2ED45C4ED62131515BDA748D162A5F6EED97574CD
            A67FD2F4BB613A4161300C42F64B40807F9242D0EE7DBB0A1EB9EF81BC4DD6AC
            F1B4DABEC37B7942E2B1389C67C5932464E8F7E8FC8F44F1EDF508FFE2E262D7
            E5CA153760D9EAB51FF99D17AEC31189E142F08B23E9C3F9F696162CC103DC8D
            231633FB712CC629DB71038933E78C7EBC8944BF1E2C6FE349444286AE5DBB1A
            6B6F5288E21D6E3483070F36D6E6BE7DFB1ACB33843E9062EBC426734EC74587
            529BBB77EF36DC614A04A7091802C821D3D12B1648D2DCDFECB140F4755C9310
            99CBC809FF43276E392542054138DF4657DB2A2738F5EDEE2A87D52EA83478EF
            BEFFBA717F83DF1C2237B56E2B69214F54B48C1B3B5ABA3CFC80E100AF6FD24C
            5E1F3048F2153B39D9D0CA454B8C51E5A3A11F1840745C6FF2E5CBF7FBF2351B
            AF49D30F87291985C13028F11E5943D4AE6DAB320B17CC5F121F1FEFCB36EC80
            C579E79D6F5670FCC756AF59652CA2CE44856263A3774F9EB4F7F772650F1356
            E7F89D05729EF62744E385AEB6407B6FD6CBF22A5F19A1504D4202146C4E2A2A
            8090F8599212FC2C515DEB48CC3B7DD27CD7FA72C10D62F4A0AA9D65112D69E2
            8E49CB15A880BCB9A1004ED77048A9812AD9B20154C014D11B0BB6E36397263A
            E4B9CDAC4227EAD4F0AC40602E987A23133D79E54F97110A4EDB097174B24AA7
            A4F9F5BAB68EEFE786BD7BA397D66D58A8D9810349798B142E220B97AD12EF91
            94C563734F1EBFC71E1B29FFEBD553867D36D4D490A975596D399E745CDADD7A
            BB34BFB1B5780314D35AB86881747EE01EB3A838E3942F5F81675FEEF7C20B2D
            6F4E7B0985309DE56078F76DB7CA67A3ACA264D5AA567C40810E9D4F217D798F
            A828F26F7474ECBCEAD5AAFDBC69F3A6987FFEF97BBD024434E24B85F32B48FB
            DBEE90FAD734904BAA5D9A4CE10DEDF8EB1F993AED5719F2DEDBB27AF52A6319
            CD970F778823D2AACD3E84344434C23AB6B8B6848EFD63375F7D162FDAAD245F
            DA771A7F97174BE7484696D96265B2C9ADBC6411159CAB4852E4D5EB96C5D658
            BE329F1C8C7F4DC496C001265E1C67CB4B19093BEB717F673197FC1D1B1B63F4
            55919170BB5E8930FB6265FF8183B271C30623F61E3E725812E213CDCBFBCFDF
            7F9BAC3307F4FB84C404730E3261972953C67083CE64CB973FBFD10F962B5BD6
            88CF71381C7B2C3FBA243D4F4242A2C18B08DFB5455A9F113DB946DDEFD1EB3C
            74F0A06C53719D3C8B8909EBBDB19E273D3131B9F4878FFF111595FB8F7AF50E
            6C96B823BB95478C504864EC28C7E0640C428F080B6BE29375BC7DFEA9769D11
            C21B4BD9CD097174873C1A5AB3364E9AB5CCAF0B46BCF47DEA69E9F2480F1F78
            79E262E4C8DEFD3245E7C241BDC66DDBB7C9AA552B64E99F4B64CF9EE4E92CE3
            E31394734E340B071C33A231E3D0A86163E9FFD2AB52A9CA05E23D7E22098E87
            583E1DB03637B794B973E7180E3A322232A172952A17FCF8EB6F1BB2FADD3A13
            E9AC03C3354B2B4AE56A5685CFAA95CA47142E54B8FEF6EDDB7E54208C09C489
            C0E9E8CBEA3D76ECA8079D569FDE4FCB3D0F3C28DEA3A92BC7F5CD9457FA3D27
            1F7CF89E390F2FBB82438F252BD624AB6264D74DB6F47F5E05358FC97E0D6743
            E256446AC013CE90E88A89D4B6F0EE3781FF24FFA30ADE1DCAC8452E5E9A5F3E
            FC28AFFC3459D9A1A404B1B0C3CDA959D7906EB20F0E760A6B083DC98EF13A1C
            7608C7A7F0C381363EEEFBC4738BF0DD1F5B8F274ADADEE495277BEEDD55FC9C
            639F46447A3FD0DD1B74B74717A4FAF6185352015502E30F2092FE9F9018CCE3
            3CE4C440A9B8F49915925C52ED8947CE7D7ACCD7898D757EC88F3FFC2A9756AF
            61ACC7005ADFA77BCBA8D1237DD7E7BE5E67F1F17DB601BE58D16252BA741963
            855EBB768D2C5EB2C8CC9D756B369B98E593C63B2A522EAF7DA9ECD869F956EB
            227E70CDC6BF0B5E5CA9FCF1E5EB369FC2C33EFB28478361B0C4AC575C56ADCD
            9E3DBB9FD2495B2B94785AFADCD0BCA5BCFBF1279274F858C8221C8038ED97C9
            F26097CECA3D1C31C7152E5CE089054BD70E97C326B53C094711D1E058D063C1
            21CEB19BA97181E3AC6DCC21648394621874B01CC7F20EBFD8AF808C9F182D7F
            FD755C303812F0CFCB88A89BA41C06E801778A93B49B10E7E1C44299061838DC
            46810307F6A77A4CCA83A957AD0B0BE77444F2238C4D28877AAD0A7CA18EBF9E
            5AA2A323A545F34419F0F23EC99527E13F6594B1ECC011B2B04C36E73D646AD2
            38D50EE1201199D1E7EEB09F03666D0072AE1E73D0397FA5F265FF888F3F5287
            38EEE54BD718515F574DB9A9757399336796590894633337DDE1CE8E469AC895
            2BB7DE431EC99327AFE4D566B67A4FD179725B8A0E5720668F47BBC8D86FC628
            77F88ADCDEBEC3C9F34BC761DDFAB5D2EC86EB7C3AD87C79F3BDB36CCD866ECD
            AF6B28937E0E27C00995721C18EAA446170470387E79B8BA54D349563DE15844
            F5CD7FC554EFF374E112B366C72B3858B78F68C2244604B44E6225294004442C
            76566FFEBEFBAE7BE4E57E69CBB7C7B14B962C96D66D5BD89CA647BEFDFA805C
            50F5C8BFFA62F282C18D500AD498020D361F36FA2E94FDA49D71AAE53984C670
            DFB67FA373DFD2BE68DCE6BF128C78CBB9F3E6CD675C571A376A2C975E5A534A
            962869388E81835E971933A79B1786EB018006BCFA86D4AE79B9CFB091E2982A
            A03ED9A7972C5EBCD0D201EAEFFCFCEB74C99B2F6FC88919DC04288FFF6E9C3C
            FBBF3EC632DAF4FAE6D2ABE753E6775223AEBFED2DAD4D0CAF1B10035D47F2EF
            E19AA265E2777BBD952B1FE619BBE73EC0384CACB2ABFBF439F8905EE713C5DE
            31A2A1974545814B1332EE6FCAC37F55E9BC72A313E20F47307716CC5D22790B
            169251233E938715C46AD6A825D737692A7F6DD92C13267E6FC6F9D7C9BFC9F9
            E7570879DC66CCFC5DEEEA78BBDCD8B2B5BCF5E690803E8B3866DF707D23F973
            D9521FC759A142C53ABF4EFF63769A1FCE594C39110C31183C2C56B9C4FC0A87
            A4569171A30BCA27C32265D972B2AC24191112704361FDC273FDA441FD86ACA8
            D639B4E1DF85FE6BEEBC39F2D1C71FC89AB5AB0D770588D4AB7B8D7C39E6DB34
            F991C12DCCFA7DBAB4BFF316F3392E2ED25BB1E2E5E5264E1EBFC575ED707D37
            6BA320088616FF14F3D4F0F84AEF69EACD6DCAB79B37FF680FAFF7785E44E1F8
            F8637A1FFDE5861B5A4AC952A52D79D5CA0D651DA937BC7AD50AE970777BA367
            E385C16D66E1FC3F0D67921AC141F67FF92515F9DF35C756AB5E5D26FCF86BBA
            9ED1DEBDFF4983ABAF94EDDBB7C9ADB7B49381AF0F36BAC9549E2CB9ADA4CBFD
            9D64E2A4EF7D40C7336431BBBCF6150080C4C6C5CAEE5DBB65C5CAE5C6988568
            E92C720C456CAC473ADC1EFBEED3FDB66CD0058745C63F5ED1CAF863950C18A3
            C0E8F364564903A78162FA73E744E49522337F2DDCEFE6765157C7C67A8D5BD0
            C2797F1A0BF0ADAD5B9A440BAB54B475C67FFC7763A5D3BD779B38EFB9B31685
            CCD9CE9B37576EBBE36663A0FBFEBB1FA570B162E24D4C9E4BD8A322F63FFFFC
            2D97D5BED8709D902E38FBCB952B5F5997F1ED5366CC4AD7733ADB28E78161A2
            DC27899E7776EF888ADEBA2D2A62D28F7914046364EFBE04D1F7C4970CA0C2F9
            15A54387BB8DFE4F8E1DD7153730776414D53191F2CBC48932E0F55764D5AA95
            6685279A82C9993F5FFE90AF8DDF1DF4D61BF2FA1BAF9A9747B9A2D54BE6EF78
            3757AE0400B09E5F77C77D86977104E29C49369B5B2E9A30B6E85D5DBB4576F7
            78920C3857AA5459BE1C31464A28087A83B8AB405886AF6FDE58366DDA68AEA7
            CD4D37CBA0370687C4A97872C548F72E0FCA98AF471B8EEEC34F3E93EB9A343D
            A9DFD429BFCA1A1DA76AD52F953A579F5C096FC0CBFDE49DC183E4924BAA29B0
            FD9AEA359BDF8E8A928F15889FFADF939227771E73DF7058F7DC7DAFDCD3A9B3
            79463EF1D296E68FED3D285F7FF3957CF0D17BB261C37A9F9B0EF75AB468F12E
            0BFF5CFEDEBE7FA23DF90B26B4178B034744861BF75F1DC8584135BD453AFEDB
            9B5D5B2DEA9F7F8EBCB167CFBEBBA3A24EC4202F5BB25A8A963E57DAB4686680
            F8B7297F4851E5D24D40B15E5F9D5A97CA962D7F49F7471F97C71F0B9E249748
            14B8C0CFBF1826CFBDF0B49973F860D6AFDF40DE7EEB3D295BAE7C72838A3E8F
            F6ED6E9259B3664AB1A249B26D7B84E4CF9F77C48AB51BEF0C79829EE594E3C0
            F0FA4617763F74F0BF67F7ED4F2C70E080C773FCB8571C55D7C18307A5EED5F5
            E4A5175F968A152A499C727AA1864A313913F5A55DB468A174EA7C9771382E5B
            B69CCC983E276DE156FA420E54301CF4E6EB0A469172DB2D513260F056B103EE
            E14888ADC5EBF95F9F45F99031A410837AC5AEDD717BAE6994FFDC4387AC37FF
            EAABEAC9B04FBE30E01412A02900C2F55E5AF3620328BC64537E99AE805A25A4
            FB603169716353131A56B4683199BF6479B2EFD7AE592DCD9A3492630A0E5CD3
            B419B3A54CD913F1C53BB66F974BAA5634D7317AE4D72679412834FDF7DFA4E3
            3D771A1D1CD7D0F9BE07A5E7E34FA6FA0C796EF1CA3DF6EBFFBC0CFDF4231C94
            CDFEE3491149537E3AB4A352958333E4B8BCA463BDC4AE5F03374E0823207287
            B8FD11A3247EDDEABC7B9BB7CC17139F90982C351A1CEAB763BF972BEA5F231D
            DADD62BC09903AAEBCA28E719E7EB8C713F2C4230F9B85E49A7AF5F5990D4FD1
            319B4567F1ECB9D2F3C9C764A32E5A9C3B9F2EBA37B7BDC518E30AAA287E43F3
            16F2DAAB037DF925B9CFE79E7FDAB8E73CD3F7A0CC9E1323937E8C91D2A5CE7D
            74CEA2A583439EA067319DB1603864C873D2B5EB73E6EFAB2FAF5179EFDEBD77
            2724243CA92B74A45B04C15D01D70D40E3B1477B48F52B54023D9A902E5D9719
            309D74BCE83D9FEC21E3BE1D2BE57585FEE9872946840E9500A136B7B492254B
            16AA781B21DDBA468DEDFBF4B6FB3D31BEE2DF380553D8088E0520C4FD669C72
            25838B163CFFE5BC790E3C00209450D1E9E71FA728075020E4DF76EEE1D7293F
            CB7D9D3B1A60295EBC84CC9DBD2864505FB46881B468D5CC1CFB78AFDE3A1627
            5C197F98F8BD3C74FFBDBECF2FF67B453A74ECE4FB7CCF5DB7CBE41F7F306A89
            1163BE09EA93E7BB5E5D401A35BADA70778CDD03F77791A79F7B29A0FF5DB073
            3CF3BFDEC65919B199C79F2F7FB42C98B5EBB3D8D878D8571EE028B12CF60B1C
            23893E0B80B1A544CA35537ECDDFF8F60EB9F3C5C61E375A085407CC23447CAE
            EBBE7BEF97E7FABF224BE7CE97A6375C6B3851749CA82E3EFE6CB8F47CB49B7C
            356694B1164FD50528DA651D460249D273FCA19CDD3B43DE929F7EFE51626362
            55AC3E4F6E697BABE12623E3E2E4E5979E93B7DF19644463F2204EF8EE0739A7
            7809738E5707F497F7DE7F477AF73A24F7DF7B58EAD42BE2DDB133325E17ED8A
            D367CDFB3B4D93E42CA433160C1DAA5EB5D2C8BDFBF6226646FB7F470853CB96
            37CA4B2FBC4C407B86A5AB7768C1C2F97253DB1BCD6FBCFBE12721B9DBF8AE4D
            41BAEA4515CD4BA42F5342C973EF2CF8FBB4D79A28E3F3BC58355708117B4EAC
            C2E547F59DCBF3F517A5DE79F4F1F88E242FC188B168FE9F82A36F7A801D406C
            D4B89EACDF60B919BD3660A0BE74ED423B362E469E7AE231F97CF83039E79CE2
            3265FA1F52A890152DB17EDD3AB9B6C1D5BE6CD8B3E62F362F3FB47DDB366958
            EF4A2352CE548E1A304FF5B794BB7CF1B9BEFA920F319C66E7FB1E90BE4F3D93
            BE7B56707AEED93EF2C9A71FFBB8B2B8B83C2FAE5ABFE939E5CC118DEFD606B2
            13C28895F9791D7B131CDDB471DD5A6BD7AC9D9778DC5A3058082EBEB89A0C78
            E57569775B5B3978E8A0D1D7AD5ABFD900FC8F3FFD202FBCF48C095B9C3B6BA1
            9C53A6B4F4EADE4D462B185E76594D19336A9CCFBACF78CEF9FD7793AA0B3DAA
            E3A4DEEFA557E4B65BDB1BB075EE97E786F1A9EB230F9A7B8063C470139B278F
            2526CFFE439E52307CA0F361E54273C9A38FE7952245F2CF5CB67A7DDD7A57D6
            92DF67CF4FF3B89D2D74C68261CD4BAAB6DB7FF0C0FB478F1C2978F4D851898B
            8D93DCE4DCD34983436B44648414D617B4F37D0F499BD66DA45CE54A6902AB50
            8897EB808ACB1D3BDDA12F6C3FB9F0C28B437E4999D4D35494EAD8A983C9ED79
            D1855132E1DB9D7F4446267EA95F7FE572A769A3ED7665786FA8DBB0A8ECDC99
            64389237DF785BDADE7C6BBAD24239BF0F705D55AFB6E16ACB96292BD367CC0B
            497F0721BA5D79754DF9EFBFFF64C4E8AFA56EBDFABEEFE6CF9BA31CE2046975
            535BA3377468F4A891D2E391AEC60035E28BD121C5EF6EF9FB2F69D0A8AE5934
            2A56AC64ACB1A742F803366ED240FEFE7B8B591C0BE48F4A58B264C7085D9D46
            E998FF441F1D778C2A58BA5A682BB36A759E092D5AE7EBC4E20A01E670A7CF2B
            778A0EA6FF4BCFC95B6F0F32E0F6C3849F8D58CCDC9068BDBF44AFE5DF13176D
            0C2BB3E7FC219DEEE9AC226D7F6308993869BC31D0CDFC63863164719FAD5AB6
            963E0AF8A5952BF4269C3C67E122BF1DF7B5747FAC9B719DBAF28A2BE5AB6F27
            48F50B2B19F58D0386A494B8E1BA42B26469A42E5A45FB2C5AB6EAE5531ABC1C
            4E670C1836B8EA7299F68795C1441FFA787D095B329911F106BFF98ED4AA59DB
            6791DC7F60BF4C98F0BDBC3DE44D5D99FF3513ACDDADB7E9A41D1030F3C7290F
            A25DD8282DA2B2394E59BCF6EDDA1897175EA4BC79F3BEB27CCDC6A7EC9A284C
            5C1CAA29FE24A3BE2A20BDFBC4186EABCE9557C957E3BE3F6570E7F73BDFDB41
            7EFE65B279C1F165EBD4F9A1900011EEA543C7DB4DF2807AD73490E1A3C6A47A
            CC9535ABCBC68D1B64F8175FCA758DAF4F75E1E0FA9E55D176D8E79F18B1F6CF
            C52BA5408102E9567138CF6AD3E64D52FBCA4B8D2186FC136F0D4C9276ED77E3
            DA4E3CF3530A8A83DC3EAAD7D62FB56CEDDA789FD5B9DBC3DDE5F1C79FF41930
            D0F1DDD4A2A9D12757BBA4BA7C376EE249BF3967EE6C69D9AAA999A35F8D1A6B
            A496C71E7FC458D61D626E0EFF6C945CAEE0966AF2573D2796E65BDBB7D17325
            48FBDBEE94E1233F37D6731F180AB1E61152FFDA22DA27F270FEFC052A2C5EBE
            7A5BAB664DE4BB1F26A77B0C732A9D316008F5ECD635EFF889E37FD117F70A5E
            DE5E3D7BCB230F3F2651180FDC9635C46156E6488F2C99374F9E7DFE7FFAD2CE
            30F1B588590F77ED6E45469C5238C6A993E3EF57FB8A4BE53F7D2912122213BF
            F9EAE8D42BEAECBDCE15F3305772C50DBBF88242EF921505B168DEEC85121B1B
            776ABF8D88A65CCD3C15AB6EBDAD8DED6B59C888DEA1A813E8D3FF9517E5BD0F
            8698E889CDFFEEF47DC7B8AE5FB7562A56AAECDBB77BF72EA954AE9414295A54
            D66EFC275520E7FC3B77EE906A975D687467AD6EBC49DE1CF876C68CBBCE97A7
            9FEA295F8CF8CC8E0A8AF42E5EB8E35F399E54CAEEC2C57DAF9CD567D737BC24
            F7AAD5DB47E1BEC4B3C2203266F4B893CEC9FD35BCEE1AD9B96387DC79C75DF2
            D4937D8DCFE7A143183366E958BD642CC9F85256AC50D9B8FE582E3F1884BC0A
            B08F4AD7871E913CF9F2259BCBC9AE5BE774A272E423478D90F1E3C719B72F87
            BB4637E9247F7583216FF8907773CBF32FE591A245722F5AB97EF36519328839
            90B23D185EDFA8BEFC34E53769D2B05E910D1BD6AF8A8F8F2FCA04E8F2E0C3D2
            1347DD10C44456EE677AF7924F870D352F59B9B2E564EC98EFA458B173B2FAF6
            0C7DFBDD37864B80F2E4899285737626C4C626220FDEA75CCA66E584DF524ED8
            74E8F25037E9F544FA931B037A2C24CB572C33BE93E4171CA11C0500C6B88E1A
            F9B5D4AE757948E7FA6DFA34697FC72DE67C3BF71D9228E57A8857AE7DE945E6
            E5249679F5862D92276F5E9933EB0F69D1EC3AE9FE680FE9FBEC8BA9FA6802D6
            1D3AB433BF817EF5FB6F7F901A975EE67BF94F75215BA760DDACC57506E01896
            2DFF96BBECF8A1F938BABF23963539564744EAD42D265BB7279917059DE0CAE5
            EB023B3EEBBD129573E5D5B58CD7024EFB4EC5C0A8A8C893FC282DC34BA449F2
            3172F85746C249692E730E24821F7E98283D7A3E6AC63BD038388B5832308494
            C3BDA55521E54E23B170BFB064C59A675B35BB5EB9C39F4E690C731A657B3084
            F48147543EAF3440580951E2FD773F92468859C713433E07ABEA2B2FBF286FBE
            F586114758951F7FAC973CF8E8A32159344F27A1BF6B605B4B99E465CBE4F9E4
            F7399BEE8DDF1B11B5674FF48BD7352FF8F8FEFD49D164C5F973F12A933D263D
            BFB179D34679B2CF13327FFE3CF3C23AA53EDD69B2EEE978AF3CFB6CBF90C6F6
            9F7FFF91CB6A5D620076DEC23FE5BC0A15E4E7C93F4AE74E77FB9C8D9F79FE45
            E9A4DCF897233E97EE0F77918913261B95466A60B677DF5E69AC9C16FA5FCE4F
            181B2F3B9CE5758D9B48F3563729FF760A5E013A076EBEA9B902C41C034AB56A
            C57C3876FC3FA8259C5A3ACD162E8EEB766BFBFC1512132D29E2D9A75F904EF7
            DC97E26F727DFFEA98B4BDB5B56CDEBC51E759EC497D005FF4AD2D6E686916B6
            DACA698A5D6A35E03975219FF8CD37F2DA1BAF9AA41F707F842E16C85F402EBF
            FC0AB9F2F23A268E79F6EC5932EAAB91E67BACC90F764E5E1C65D3E64869D2BC
            B0FE54E4D1EAD52E2B3D6EE2A4DDE91AB81C4C6704185E58B1DCB483870ED567
            75EC436610E50A433654D8A228221700F054DF5E9678A1A21DCAF4B66D6F9537
            5E7BD376B7C81AB1996BDCB66DABD4527119604A4A8A9077DFF6F46BD1625B8F
            3F97C6ED687D73FE720909C7E5B21A35E5DB493FA519BC2D6389C509C5FBB9A3
            70CF808D63D93CAFFCF93275E6ECD05C5EF4BC45CFB19CCE67CF5FA262712599
            3AE517E978677BDF587E367C94346C7CADBCF4FC33F2D107EFC92F3F4D338690
            D468F35F9BA549D38601AF977D58A8870DFD5C2EBAE892745BD3972FFF53AFAD
            9E8991AE5D3352C68CDBB6578E4967FD7A322179E54B55E9E3F5EEE9477F806D
            C59F6B4E8AEF0E78EED81879A2FBC3F2DB6F534DB66A747A9402252DD9D557D7
            55EEF8092955BE7C50EE98EBDBBF6F9F51F18CFEEA4B332FC8145EB9521579BC
            472FB9BA5143CBC15CE7859D95420A15CE6D74AACF3F7350EEEEE057E65925E8
            3EBDF3C9B0CFE3943BCCBB72F99A8D17DEDCAA857CFDDD84348F5D4EA56C0F86
            57D4A85678C7CE1DAB8E1F4F2C46D4C794E9B343361CB0AACE9AF69BBCD4FF79
            59BF7E9D1CDCB75FA2C86C923B5A8E9E9F57A277C54BE4F6437261B56A263B71
            9A128966300188F82EE294CBDC2E5238E2C8A811876BB76D57B2D981037B5E03
            005E1B3048EEE8D031648BAF433A7E52AF7E1D03FEFEFA4052449140E091EE5D
            8D98C782B17DEB7F46C40D657C2B952B69F49DB3E72F3560C8C203E82D5A305F
            AEAA778DDC75F73D86FBBCEF9E0E3273FA7499FCE35453212FB5B1C0BA7ADBED
            FF67EF2AC0A4ACBAF03BBDDDBDECB274B3748A747728252D21262A2288808282
            9480828A3F62812052D2292052D29DCB76EF6C4ECFECFCF7DC6F66D94E6017F5
            3CCF3CBB3BFBF5BDDF7B4FBE6748BEE063AD22A2FF7DB5FA1B74EFD1B7445642
            D6799816D5EEB9E6DC9747C7BB77CBAEA5541A3A87814C67665A2EAE5B336088
            5AA5AD4B1A39F53319F4C2D0623F7B9E6990920265B212063676E42AA0EC0605
            03DEC23441BE2FD35ACF9F3985575E9D8498D868180D46BC36F50D4C183F09BE
            7E021D666E939A4A4C3D7D9DB9C6B872791AFAF7D5E53D309BDE6DDAB8318D5E
            CC40D3E59D6BB7EF2F2FF143FB074B8507C3A60DEBD44F4A4ABAA6D35386FF6E
            661A1423D2C62662383309E72F9887DF776E83DCDD1146771B68ABD8435DCB09
            FA4AB602C59F44049783B1703C938026F51B61D32F5B79BD6E79698814F96ED3
            EE91BFCECFD779567ABA7E447A86A63EF9898E1C3A2E6842254CA779ED8D5778
            3D2F09F10E12FFA9957475F6ACB99834E9156CD9B2196FBFFB0637E17EFE7113
            BA75EF59A0233FEB393330AC57B30ACF1F3C734100C3FC84CE336CC840DCBC71
            1D870EFC011F4B927081C76560B09299854B972FCE0386D47CBD51C346B8CD4C
            C6EB4CB323DFE4950B3738489474DC0800677F38934761695F2F2FAF69E7AFDC
            5CC17E25DEC26F83FC2B7523C26C37226DFDFBEA539917744D3FFDFC03A6BDF3
            3A4FB5A1CF9CD9F3306CCC9842B5F54C06861E0C0C9D1C9DF1D3FA543CDF2E9F
            6DD9DB7EE8B01C13A73893399D51A7566DFF5D078F96817EE89F25151E0C9B05
            D79BC94CDC4FC9CF4789BA540256E0CD9036C35E9EA9AF4CC0D13F8E4093AA82
            B6A10B127BF92353211085E621D3A3C073AA115EDFDF473DFFEA3878E0788175
            CA4F5A0804BEFE72253E9A3F879BED12898873AA52B491B4BACB176EC2DBDBBB
            442F25B9166AD5ADCA7F12D0118B8A96FDA49418029AE1C35FC2A7F31771D3AE
            6DAB265C83A600CDDBEC939B1020CFF596080C0758C0F058D1606823C7B4D75E
            E1D455D97311E9BEF7EF3D8C3A75EAF1D2C87D07F6622AD39EDAB46ECB033FA5
            91DF77EDE05AB1856350C34CE628A3D174C3DDDD4D191919398EBE1F3C680896
            2E5EF1A4863DC7F37C63CA44ECFC7D07FF9BCCF7D327CFC3857CC4A44D161465
            E68C4A5AF856F220B66BECDA9E82860D0AD060D9E3ECD2CD0D77EF512A97FDB5
            5BF7431BE23FE152E1C190BD6CDB99E936C0CFD78F9B58D99B99E7B811F6D250
            0062D0E0BE9C6DC61CE088B416EE503572050C456B5232A51E3EDFDEC3E81163
            B060E1D212957A3D6EE9D0F939848585E6F8AE69D3E6BC96B7383EABAC67C2CC
            C02D9B36E0F537A7728D97CAC5667FBC00974E9F41B79E9DF9B3AC59B3164F14
            96D8DA60E1C773B162D572DEC3E3EBB5EB8B3409AD66B232391917AEDC445095
            2A1CB0E67D380BD7AE5E418B96ADF1FE071F961C0CD97189EC802A7C72D374ED
            FE7D3FEA33EDD82A0387F463E37E1FC78E9CCCAA822989D09CE9D8A55D8EE8AC
            B57D01071966916CDBF23B4FA9799242ABDEC44963B16FFF5EBE10D233EBD4A1
            13DCD9E24FBF13637870C3C668DAA4292A55AF9AA3A454249162FBF65F31E595
            89BCF4F4CF3F94080C286041678F53A316A1791B776464505A91DBC8CB37EE6E
            5C386F36665212F9BF582A3C1836A85DFD625A5A6A63EA3A46C9AC058101A562
            D4A9570D6A950A994E32444DAA0EB3AC041DCAC422385E4E86FDAFF7B1EEFB9F
            D1AB4FBF2235A32725A49D91B94C9A0109F9ACF6FC7E800162B3121D874065F4
            30220D38CA1DEBC78FFE05774F2F7CB66801567DF939AF8DA51CBEEB57EF7062
            D18FE77C80AFBF59CD5358F6EC3F5AE482C0C605D56B05F1B600B149E9FC3B4A
            A119FEE2A02CBFDE6F3B76A3317B814B0A86AD9B05233A3A3A8F8FF3A5916CB1
            FAE4333E36B400D2F57E387716FE3C761AB56BD529B9A9CC34E2CA953CF3CDAD
            A463D9B245E47648C413CD38204DB85FAFAEB87CF9520E50266DDE5A9A678DFA
            D34F4A7DFAE6ABFFF1BC500EDA6CD15BBC48C89490C914B876299199CB853F87
            DF772BF0FA5B4ED4DA21F55E68944B9117F92F900A0F86C1756A9C49494D6949
            E562FBF71E29B0CAE3CD69AF62FBB6AD908A052A27839B1C89FD2A41176847CB
            6EF14E2611C17FF53DD8AACCDC242FAF3C4432974FFC7198B3B4904FAC5FDFFE
            58FDED77258F22335069DAB02E121313B8F39E6A5829EAD8A357179E634842EE
            07626826305C30EF43AC649AE1F47767E0BD19B38B5C0C8E1C398497C60C47FB
            0E1DB179EB4EFE1D91304C9A30266B9B454B9763E8B091D450AB4460386C607F
            9C3E7B2A0F4891A9DFAB676FACFDFA3BBE3012357EF3568DD9DFEBF0223B4F49
            1730115B10366FFC11F1F17179CE45EE09A219EBD8B9EB135B18E9FC135F1EC5
            730809ECE8FE3A308D7040BF81E8DAA51BDCFC846775F6C49F98346502AF58B1
            02E4828F3FC5E851E3F87C79F3B54916B7820CE1A10940519E1E05F0EA14276C
            DBAE8087BBE3B6EB77434AD6D2EF1F28151E0CEBD6085AAB52A926525A02F1C3
            91B990E3063869E92D74EBDC1E49C3AA4053D90E6E0763617F3315229319F183
            03A0AEEB5C6C407439110FE7BF123076ECCB98F7D127E5A61DD27D6DDEBC11B3
            66CFC0E9937F970A98AD3E3D8A10BB5AC0904840BB74EF9095B242CFF5D2F9EB
            903AD862C2A811ECE5F88D2D04E750B75EFDC2A9B17805CA02AC5EB30A73E77F
            8A49935FE1DF2B9392D0AE75335E9E48407BE5C65DC899D997A519EE3FC69B43
            157ADD4C5BFBE0BDB7F1D3861FF3AD5FA673136DD9F3ED3A702070B497306D77
            29A6BE3EAD5CDD1B251E1F769F33DE79133FB3FBA4FC40FA10259C37F54AB696
            FAB17B25006CDA22986B8A94BC4DCCE51430311AF4F876ED7A74EFDD0F8D1AD4
            44724A0A1C1CCCB87137D14A0957C40500CF77744344A4D4E4E2E2F6FCE51BB7
            4F4D9D381E6BD8C2FB6F940A0F86AD9B351A181D1DB58D26C299531740BEC31C
            37C02650B326F510EEA046C2D8AA803E936B3F0E5753E0B69F99594633A25EA9
            01A3B3AC58E793A6195069E51D68330DB8F0F7557EBE72CB3F64E6D38D4B97B8
            F957D2A6E47C7F06869D9E6BCD7B64B8BBBB7326669E66F37C2BCEB242E6F73B
            6F4FE72C3014C96ED1BA09F72DDE0F8B2E520BA5F118FC627FDECE60E79E0308
            6ED438EB7F048417CFFF8D96ADDB6495884D7BE355FCBE631B8E1C3AC12B800A
            BD6EA6216DFCF907CC98F96EBE6E111A0FF2E391DBE0CF9327D07F506F2C5BBC
            02E35E9E5CE2B4A3F2125AEC7EF8E13BBED811F146EB566DB1E6CB6FE043F32D
            DB224460D8AE436B5E313367DE7CBC387C041B4B0FEE4A69DBBC092452094E1C
            3B8D4143FA41A94C41FB767AFCFC6B2AA029DE755CBF2145D79E6E707656DCBE
            131251A7BC9F4B794A8506C337A64CC2B13F8EFA66A8331E68B55ADB2F57AEC1
            C0214373686B870E1FC0B809A3A17CA93A4F9DC97E6776B7D3E1B93D029A1A8E
            5C432C96C8C5F0FE2914F27BA9789E997F3FFFB4190666BA982DB5CCD6769AD4
            BE5200A84721EAF2AE75CE2D04A61FBE3F9D535691FF916A6A1B356ECA730029
            124B94FBD5EBD4650B88111FCE99C96B755F7C6118162F5951A4464CACCB8D9B
            D5E7C73D74EC24AF82284CF6EEFA1D63470FC7B2252B316ACCF8228F4F818DAE
            3D3AE6E8B94CCF97820B7D9826B47CD51AC060C4FC0573F1E5EA55D8F2EB76AE
            299696C5E7A98E0B9B37A10F1F72C620D29E3B32B378FD864DF92E40C4ACDEBB
            5F0FF41B30102BBE5893E37F1FCE9A811FD6AF4350E52A888B8F457ABA1EEF4E
            53E1EDF7544275757184AD55C70ECB31728C13BCBD3D3EBE74FDF6DC79F3E681
            3EFF36A9D06048F2CD975F88972E5DF4B74EA76B420EE32B37EFE698344468B9
            E67F6B10C7B442BD572EF202065AFE5FDF832C568BF8A18150D72986B9CCF6B1
            BB9306AFCDE190D8C878EB47F2E3587BD912084A65524E19461DCD8860B36A95
            6A9C7ABF0E03160F7F0B479FF534D49CAE9C4C372B4D57EB76CD780544B3662D
            B0F5F73D80CEC85390381DBD428A6DBFFCC26BA38949E58F237FA24611152264
            DE2D5FBC104B977F06375777EC3BF4070202030BDDE7C8A10318317408EA31F3
            FBE89FA78BD43C09F8C68C1B8963C7FFC8D20E177EF219073C7FF6F267EA8546
            5D9DBA3C8FF0F0309C387E3A8FD5505185CC5EBAEE2465126CD96272F1DCD5AC
            60596EA11ECB0306F5C1C2C5CB306C444E06FF654B1661E5B2257C9CE95968B4
            226CFE39051D3AEB85E6B2C5145AC3FB0F76C58D9B0A959B9B1B75AB8A3B7FF5
            56793FA6A72E151E0C49DAB56AD6994DF8C3044A3F7EBF115D3A77CDFADF824F
            3EC2B71BD621EAD59AC8B4B13419D79A381899A5C2EF01CCEC55D77442FCB040
            815FAE206140284937C0E95C129C4F25C24CDDF3A8D2894AD698C608B1A5FFAD
            2193FB23E948C4274726A3917D4C4CDB51303393CAE6EAD6ADC75F6222307D83
            7C59E5A4B110A850191ED5B552E2F6E8516331EBFDD9DCF7A4D1A8793DEBA2CF
            3EE5E6F1EA2FBE46CFFE03B8A658A830009D3A711CF6EFDFC72B4E542A1566CE
            9E83F12F4FE209CAD925352505CB977E866FBEFA9233ED04540AC0C933171910
            5B1B9614209C4ADA8CC64DEA22395989E086C1D8B9EBA000E05462C9169811A3
            5EC4A9537FF144EC83FB8E16082815492860329B99FF3F6DFC81538851A0CE95
            087A0B981F5630FCF4B3A5183E3267AB500E86CB97F0059A44AD16E1EECD44B8
            B86496AC39357BD467CFC8D16FB00BD3F05DD63385637C09F6FEC7C833018624
            F56B55DB919E9ED6BF6E9D7A3CD7CC1AF923305CBB9181E16BB5607F27150E57
            53214ED4704D8EA8BDF4359D213266726D2FFCBD3A0582A188BD789EDB236113
            AA8288FB1DC1FD8D19C12E486BE9CE805602B3050CC50C0CE54CDBB47D900E99
            52F05111F08A0C26C812F41033732593709401E8F06123F119E52D96A3097DF8
            C8418C1C352CAB4FB187BB078F5CAA351AA4A626730AF9B1CC74EDD8A173B1FA
            281319419BD66D382851C4FB01336909F8A9E7C7D80913F1D6DB42B3A3AF567F
            81D5AB56704D88CE47E920AD5AB5C15BD35EE3667651B34FA0F14AE03997E492
            E8D9B337BA74EAC67DA0942C4D4DAD485B7F79C214CC23269C0A6E2253FAD789
            637F60E888C1DC3CFE60D61C4C7A794AA17383DA7FF61FD81BCB57ADC6C04143
            72FCEF9D69AF630BD3EA6127835827F4CCBE733D01A52274B723BE4977361F1C
            EFDC7E105ABBBC9F5579C85305C3E5CB9723E2E22D7CFEF3B7056EB3F8A38FF0
            DEDCB939BEAB1914006717A780C4C4C4BB6AB5DA86E8D0274C9ECA0BDDBFF872
            253E59F831C40CB828D21C54A33AA755A75CACB367CFE0D7CDBFC020165E92C8
            D798F6689BCB21CF004E16AF85D7D60848937482F6C7E666A6830489BD2A4153
            DB31FFA46DDA4E227C64311AB89C4C80225C8DE48EDE503574818281AAD74F21
            F87AF55AF4ECD1FB693EE63C428194554B97F0AE7C05056248EB2EAA7F32F7DF
            51C50EA7A1CFC4CC191F620A1B07EABBB1FE87759CF59A16A19A356BC285693B
            E7CE9C66DA8F1DBA77EF894F3F598CA3478FF0923FDA86C0B3B86D18ACDBD1F5
            51149CF6B536C0727676C1D5CB371910562C7F6D7E429A79DBE75B42C9CC63D2
            A86FDF7850601101BF6F990C972FFC8DC12FF4B7B4879060F36F3BD0BC652BEC
            DDBD0B63470D87AD833D92BBF9C06D5F0C02034D387E44593A306440BA7AA51D
            56ADF6BA7DF761E8BF3290F244C0B047A7F6D87FB4607A76368925BBB76D75B9
            7DF38E63862A4D4A17E1E5EDA37DE5ADB7E2D8C4CF130E5CBA6001DE9D3D1B6D
            9A371E171919C1E3FED41A93189FE905B975FB56164F21F5CD95676BB473F3D6
            4D3CDFA1351C9C1C1133B64A4EBF223BB3E379255C0FC5726DCFE022E7E62F3D
            95E809D590692729D8DC201CCC30C1FB9750A6256A90DEDC03CA4E5E5C1B24BA
            F78025B7604AD322FC6174961953DE421DE6468F1B894C9EA291F39A08E8E863
            CE417A6BB6B45E16986D82831B71D201CA51241617FA9ECCE2AF577FCB7D8193
            A68CE765906472D3CB4BA583BFFDBA130A065CC346BEC0353C3A4ED72EDD7939
            20113C5841B1A04F4142C7A136AD7B761DE06672450B5EE516119B03DBB76FE1
            7D4EE8DAA941D9A66D3B00BDC03A935BABA5AA925DBBB6E3D55727416216F332
            3AB24C783DF5BCF9F89C99C8AAB474C40F098434590FD7A37168D3C6800D3FA4
            940E0C99DCB92B419F010177EE87FDA7193E5669DD3478019BEC1FD038AAEA32
            53D5608638560593C1C8278358C356BA0C6316F8F0A9CC069B7C6E22B128442A
            93ED93CAA47BB76EDE7AA87A838686F66D5A888E9F3A676E58A7FA8AD4D4D437
            293F8E00B17EE3263CAA48922FE92633CFBA77EB803BF76E237E702034D51DB2
            4C60F7FD311C0CE91A933BFB40EFA980C7AE286672D7146A990B78BF685FA7BF
            93F804D47BDB20A9971F7441F6425A0FBB07FB6B2970FEE501A6CF9A85B7A6BF
            5FA266F34F52E8599818986DDABC11D7AE5D41864AC5BF972BE4BC8FB49FAF3F
            3775C99CA60585B42F5B3B5B5EFCEFE6E39DD58F78FFCE9D58F3D597387FE11C
            07C5F4F4748C1C390A9F7EBC08E7CE9FC3E2250B3168E0604C9830094B977E86
            659F2FE64EFE01FD066121D310DDFCBCF9714C2A2D37B929293C2959C929ABC8
            7C4E4D4BE5D52D745CFA9D7217636263387F224DD8AA55AAA207D3B6A9F7B0B5
            BF704517BA4E6A00467E5A9AFF54E5435555449C4139A483070E41953AB57870
            8BEE8713C5B66A8AA4CA3228BB7833EB4507CF9D9110B339A6A19E3F1239D40D
            5C9030A012023EBFC3CDE4D12335F8785E46A9AF31324A8C1E7D7CEFDEB81B55
            ABBC9F5779C81303C3F12387D91F3BFE4794D65DEE2C4BD022FE050644D51C72
            000C052644BA4C7E1962B6422AA2D4ECA38122520D799C962B2612A944EBE7E7
            37EDE4D98BDF58F76B50BBFA9ED4D4945EA4552C5BBA0203070C299425F8CDB7
            5EC5CEDD3B103FB432340CB428A8E2F7BF071C8CC91798F062200CCE3254FAF2
            2EE2D9EF9A2A0EF9DF147B5AC2BE213CD0A2AAEF82C4BE7E39EF8981BBFF9A7B
            90AA4DDC0C7A123D572A829026B667CFAEAC2E6D244423F5E98285BC64EED4A9
            931833FE25AE2192BFF0E71F7E41CB966D5032CF3E3F5396766A95A2B4C68A26
            04842B562CC392650B73B407CDB10DBB1F171717FCBE7D2FEF334DBC902FBD3B
            01D16FD412165926129509FEDFDCE3EF4C6A072FA43CE70987CBC9F0D8110923
            3BC7B2C5E9787188B6D4D799984860E871F7C2B5F8FFC0F0714BC7E75A75BC21
            4D389ADACA1DEE076260B29722B5B507B4D51D2DE641AE2BA1094EEF95C56F47
            BE380A68D85F49864B7CE6437B77A75917AEDFA6DEB66850ABDAD2B4F4B477C8
            0FD3A64D5B0C7B7104FAF71D08858B83508A44C9B70A191EDEBEC34BC6A2A223
            B9F627D698E0743A1112066A694DDDA0ECE1CB4D5B37767DB2241DE24606E51F
            6461DB389C4BE2F741A2ECE68B74B67FEE541D5BF2156E0EE329395B9989589A
            64E9674528329A9EA2E42FFA576BD740C6408F7C7AE4B3A5E648048413C64DC4
            8CF766C1C5DDBDDCAA79CA5B688E52CE2475E4231F73CAF35EBC5C940BCD73A6
            2C385C4F85245E037B2747ECDEB51F870F1EC4DCF58B11FB2AC325ADC5974BAE
            9974235714AC8A0581A334C5C09EBB087F1C52A256CDD23FE324A518BDFA7ADC
            3D77F93F307CAC3276E4307CBF61136AD40EBC727F4A5043B35C02D723B1703E
            99009DBF2DE20705C2E4282DDE15B009248FD6C0EBD770B8886CB733536EF889
            33E775CC741E1C1E1EF62B333BC4D6E4DCD6AD5A33B3B8177AF6E8857DFBF760
            CEBCD98F485B2DB865F0B461E6853FFFC9D50EA908FE5FDE43F4CB556196E653
            FEC5B43DCF6D11B0BB9B0EB34282E83155D8BE7929DDC957E8FDE343C843D238
            0010ADFBBF4148F3898C08C7E01706F0E45F12176717DEDBA36E83600682CF46
            55C893128AB6530B038AE3C5B2C5968885F3E4BB3205C07D4F34D3F4943C5DEB
            CDD7DFC1179F2F43D45BB56174CAA77A8A6DEFB5290CB60F32F83BA4D3891013
            1B5FFC64EB7C84C0B0EF40EFBBA7CFC7140886CD1A34C4F96B57737C376BFA34
            F1E1C387453685342963569C2823235D149F104F2F18DDBC3E7B13B18A204FDC
            D6080EA83CF57E1FB7D5AAFACEFC6F195BD55C8FC5F3DA61CAFD4B6DCB34C51A
            8E8F56BF82849CC7864CB8FE1107F70B6977026B54E97BE4D8A97BAD9B04574B
            4D4F5BA3526574B33AFA29A842BE18D254A4D2BC1389F20713863073B8AA3D1F
            16F2C3786E8D40DCF0CA79CE49A63BF911299586886113FAFB23D34E9A773253
            9435598F4AABEE426736E0C1BD081E48F8B7080122E559FEF0D37AB0498FF163
            27C2813ABD3D03FEBC27FA5C6CA8CEFA1DFCF8D3F76CCD1523A9B73FD29BBB09
            190AB90D10B628D33CB4BBC1B4449994CF639AAB190D5D90DCC507667B61DE29
            1EAAB8BF9B0277F47F7AC48D838DD8B93FB97835C9050881E180217E774E9E8D
            CC134099387614BEFDFE27FEFBA6EFD7D92D5EB67404D3FC5BA9D5194E6291C4
            C5A433D88ACDC87AD9CC12B190A76B7D0E2288D9FBE9C8F6A1F0F921F699F0AF
            03C35EED9FF7BD1172273C7C5A2DA9596A391D7B483634A07BA32055EAA1AF64
            C71966C86F07EBBA5190B063389D4984D7316546D5AA55EB1D3C76329CBE6ED7
            B269AF84C4844F9949528DFDE9906F74D192884D01106D903DE24604F127402B
            ACC1CB06C91D729221D8DD4987D7D6709E709DD6CA03299DBCB3FC37F93D49AF
            2D1190DD52F29EBAD32A50E0E4690A8122CDFCA258B2FF2D42694D957D3D39B9
            025F780D2628BBFB411B60C7836FD9018384FCD85435457394BB8B68D1CD147E
            27FF36B979286F968320FD4D59106C9A7D3C370313266BCAA419C6C689317868
            D0B5537F87E44BF8DAA95DEB4A8989099FA4A7A78FE6F462ECFC640D991CA4D0
            B1FBD1FADBB11B10B3EB33C1E6810A36116A7EBF94B72BCAE97AEAC380704FF1
            AEEA298ED5D33849A33A357E08AB291E4DAB5B16D0D19919AEC8983665139201
            B7C3B1D0FBDAF215909B11BA425E263631C8EFE7712C41E557C9FFF993672F5E
            B4FEAB69833A810C085B68B49AD7B43A6D7B62F7E0A763A6AEBAA623E7389425
            E97920246A723528A2B5F061A66DD4E4EA82E9CB27AD999BE476B7D3A061DA60
            620F5F985CE40597F251091FDB964C698AC61E3BF2176783F94FFE138ADA77ED
            D109763205923BF9F079427E70B3420C9D9F2D62C655CDB9836551B5BD9BC62D
            90F86195E1703519F65799B6986180D151065D657B3E57B5FEB67C5B9AE217CF
            26C1D3B36C5A787884040387543973F1FAFD2C26DB0E6D5BE2D85F6789FD6883
            5AAD1EC2DE2739292C897DFC9965E52000A2D4920E62B600B854609577B8A814
            FCF3690648530DEC7EEDD8FBAE8B098B4AA89075934F050C377CF7BDE2C339EF
            6BC35EAF0E537EB97B640233B0F2D819C9270B0DB6B2AB90EA52A096C840CD6B
            43289CC37469D56AD4ACB5FFE831EEACFA60FA747CB26409DF24B86E8D352929
            29AF903698D6CA13E9C12E08F8E20E4FB121028788376BC1F3F7289E9610C3C0
            50C406CD9E69831EEC3BBACED4B69E486BED5E78091F13499A1101AB6E439769
            E48DEDA9FB5971CCC3D41435A222939FC610FC2765147ACF83AA7AC0DE5E51EC
            7D2842BCF28BCFB174E92298FC1D1033B58660E6DECF80C79E28BE28933F9058
            95B2AC262662B509819FDFE6DB46BE550B4657B9105CA4CC0B8538EB82EC6EB0
            0598592EFE01661CD9AF848D4DD9722DEFDE93A27B1FBF1DA191E103ADDFCD7C
            F76DE9F6EDBF1D6040D8494C3CA11E0AC4BE14C4B441594EE580D2D50C66EEC3
            743A9BC8B442150F646632D39EB23352DBB8C36377346409BA0E613109C74B73
            7D4F5A9E38188E7C6130366CD98A3A5503BF4B5718C771066A49C1A795A88C70
            3B12C773F5886D266E488050E991CF3853091D6975B6098698FAF51BD4934A65
            C9494989D4145DDCA573B7131A8DA6AD35819A5652CF1D51D07B2990DADE0B95
            E7DF60668A02F2182D22A6D5864D5806E74124FAFFD4E79849FC9C9750EB5CD8
            FC1209D7E0F7F50388955A04376A845D7B0E178B98815E949DDB2E60C65BBF3C
            536922FF5621B7CBF79BA6A065EB6A25DAEFE549E370F8CF231C44622656B350
            CC819B8E54FE69CBACA2D4366CBEB1399935D718307A6C8B84037B0712060740
            55DB29EF819932E0C1F6A7F7E4B9B606FCF47DE993ADB9301DE5D041055E7DA3
            D2F7F7421F8CB37E5DB746D011954AD5897ED75477E4798D6659AEF7516C0970
            6E0BE78A0199C46481A53577E31F0244DF7521B04D36DE08AA52B5F18307770D
            A1D189E5359405CA53790B07F7ED4D2D136B3C7CF8E06E7A7D6724F5F3B714EA
            17206CF5B3B9C756CF5D915CBDA6F497F4062E3C929BDB5425F0F2FFE63E1C9D
            9DE75FBB7D7FCED041FD1DAE5EBDBC4DAD52753578D8207674155E822762DA9F
            CFA67061421A3279549B92A6B5945368CCE4293164462777F411BAE715D637C5
            624A934FD1751F5BE1D599E8D1B317967CB69C77332BD683FF0F0C9F29290D18
            526AD1E0FE7D70A08D1A6E8762113BBE6A0E9FB3446382FF57F7B81F307C7A1D
            810C84844D077BA6F591A594D1C41549DD7DF31E9CCDC1A0F9D7D9E144983747
            858913D4C54FE1B44EB7ECDB3345EFDBAF6DB1EACBA0CFAFDFBDF5367DD534B8
            6EDBC4848493B41DA5C5454FAA2698C5B9C4F95C125CF7C770A5451B688FB416
            6E50D773C93A81F309F6AE1D8F87978FEF907397AE6E2DAF312CEE63792AD2A2
            71FDB971D1B1F388F8209906D854C4E891E6F7731857B9290D87CC5B4EE39F7D
            3FAAF8B89EC257D9FA8D82DBDCBE7D6B83416FA862729621724A7501B8C8A4FE
            359C275CA7371698B2E5F15AF87E17C2C74B1B6487D4D69E7C45CE944BA0F7CD
            1505B6FA43781EA4703E57A6BD9A9335BC0470C3CFBF82DA129404D4F2034343
            516C31FFC9D315362E3299F0F297060CA9DEBBEDCB3D71B1BD149E3BA390F042
            40CE001C9B4BB6B7D3E0F34B1854759D104FD90C16970CA571516459CDB4C284
            81B9FA4C933FEE5A2A4FB6CED08971F97C12FCFD4C79B681956E33FB874946A2
            1C62095BCCEDB2A53CB129FFC17B8ED8BCC5FDF507E1A15FD257569679D2F422
            DFAC29A4F8647F65D9FBE2F3C3432822D4DCCC8F63E6B3CEDB3607AA50EE2E15
            2138BABBFC76EDF68317CA7B480B93A70686756A04E1D6BD50D408F2BFAFD7EB
            AB11D9AAA68E5391FE387AE0B66C6210AD96FDCD34CE224349AB1CB02CFBD260
            51044EAE119AE8981C653C2062F5C390E91DB0E20EF71152E48B7FA736C1EF1B
            B62AEBB245BAC877C9537CD8715C15BC1634532E82C15DC1EB94A5497AD844A9
            B98963B691E2F3E5AB3060E85086A6464E5C50A2079F0B0CA9DFC6D18B733971
            EC7F5231242C241193477C03BDDE582A30D4A8D5A8FE516FC4D492F3C5385F0A
            3936DCFE5FDDE7C111F21D92064692058675299D2B2F187AFD16011BB68D9BAB
            19976EE4A2F96798B5E5E7FA38752210A9A936484EB6458AD2F233C5065A8D14
            3BF66D40AB36118FF6613A46DFEE2ECC82AB39ECD4DFE736D35735AB0424EB74
            5A172A2E5076F3C961C62BC254F064604CD9206AF61E27F6F6CFB796DF674318
            ECA3B529356BD50EDA77F8586A798F6961F2D4DFBC8E6D5B3DFF20E4FE7131D3
            EE1206054255CFA978EA3DAD869753E0BE278AAFD8A9ED3C79399255BCD9EA6A
            C306880231897DFD39685A8FEB782119F6B752103BAEDA23F397810E559D5064
            8FF20B7902380460B5799801C74B297C55A3BF69A29290B94DCE60F299385D4D
            C3ED9B0FB268ED4BFCE0F301C35B719FFFA32B569E357970370E83BA2C815E57
            3A30546564C07756273E17C9FF274DD423A5A3579EF9EEBE2F86478CE3860731
            3353E0642430F4FA2D1C29EDBD91D2D623C7F6946FEBB72E0422B6384F9EA8C6
            EC792AEA75FF48D8219A557B0519E9F27CFD88068304474E7E87CA41298FBE94
            72B214B8BACA9BDD7D187E61D5B2255E4B977E1647B331EC9D3A02018945C8A5
            E4FDD3435EA0A0E27DC9FDF222096558DC4A8327BB87AA55ABF5FBE3F4D95DE5
            3D9E45C95305C3A60DEAE0C2B55B68D2A0CE14A532E92BA25DA2886D4A9742F2
            F7B28B44C4139B5DFE8C87E3F964A8A850BD9F3FD700898C9512B279BA02D30A
            B31F8FA2C306773952994699DDC426E0A422F78869B5720675ACF45C96AF446A
            21B78B5A9092E96E778B4DD46D113877E612E7062CD583FF0F0C2BBC94050C69
            4CE3E362E13FBB0B8C2D059F5FE0E25B3C3A9C99AB852D07BE2DE15076F6415A
            1B0F618EDD4BE7659DB1A3AB6601A495324E9AA8E35D1C29A566F78E1404071B
            72006C5CAC035A37990485C204A351CCE616359012F1BF757A0907C3FB91CB61
            63F3C82D73E6AC0C035F7033B9B9D936BC792FF466CBC60D87C445466D214E01
            753DE7ACF786AC2CF27352E498D2E00ACAB6A09241026C5737B7F72EDDBCB3A4
            4DD3463875E172790F69E163F6B44FF8F2E891F8DF8F1B286FE9E78C8C8C9134
            F07A7F3BC40D0DCCD7399BAF58F20C09FCB4D51C10F762206CEF6730953C14B1
            A3AA64559658EFD0EFDB0702B38CBF6D1E9F87E7AF11D055B26583EA51B40FD3
            223C199B9908870FFCC156BDEAA57BF0458061EAE68D30843E44D94284FF49C9
            C40C876EBD6063696E552630944870E1EFB368FDF578185AFAF07174FC3B098A
            182D12FBE70C20CA19B8F97D7D9F736192C543E2742609EEFBA3F1F0A3061C6C
            A84ACAFE7A2A14512A66E5A4731FB6A3A319470F28F3E41726C43BA0779751DC
            1C6EFB7C18AA564F46D56A4AAC5ADE1A13265DC0E8572EE5D424D914FB6C893D
            D67CEDA8F6F2F2A87FFECAF587C1756B7E9A2051CD8C7EB9FA239460EF8BEFB7
            215044AB91D2CE0B2954A4904FEE2D258EFBADBD0F4799ED4E06AC03DE9FF626
            167DBEB2BC07B7E8312BCF9337A85D7D415A5AEA07F440336DA53CC5208DB4B7
            DC240EF909357D3F9FC44BE554F55CB84FC39F4DA8C8571FF95DACDB052EBB85
            F0B7EB0841905C77CF4D68B632C78E0E2A9E760ACB4ABE3D125B7FDD81C68D9B
            96EADE8B02C3C8912F427DF238CFE8FF4F9E92B031F0FE64319C478EE67F9609
            0CE572ECDDB91DC33F7F1369636A70F01391EF9A5922047844586215790203C3
            6FB281210526BE0F81589389D891953975973C4AC3A3CF24562B26A8B20987F7
            2B2195E63A39D1E63113F98DC97DA03788F1C32F5B21969BD1AAFE14EC39F223
            DCDD73D6ECD16B3172B40BCE9C532405F857AA73E2EC85847AD5827E8F6C6AD7
            37D5EA8A627394C09928EF927AF821BDA55B5E8D502186D389043833CBCD496E
            FFD58DFB0FA796F7909644CA0D0C07F4EA8E1D7B0FA05970DD99898989F3D864
            9393D94A11ABA43EFED0F9DA08ACD445E4F911C33485EE93FAFAB39FF1889A9A
            AB991103C3CA0B6F226C66DD7C57312A19F2F9FE21423FAA5F7430C7223C9D87
            AD7CDFADFB091DDA772CDD832F020CA3C60C87FAAF3FD9F53F4AB27D6AF26FD5
            46A9F2E8E385701E2E345E2A0D18D2585210EFDEBD3BBCC9D6E5F8FB3079D870
            F392D24EA8E28A720329B795FBA9CDB9C0F0794F9EFBEABFFA2E94DD7D791F6F
            CA65A5B41BB29C283848397D64220FECAFC5AA55E905378C67D6F59C373B330B
            A61A7EDCFC1B268D1988A397D7E5A95FD6EA44E8DAC3159151D28866CD5AD4FC
            6DE76E6DFDEA412137A60454315B7AFFD035930F93DC5ACAEC992096E690D462
            D76347146CC35570F470F9E1EACDFB6307F4EE891D7BF695F7A8165B2AC4AC6F
            DBA269F59494E41FD2D3D3DA8820E4F0D1A0ABEA3823B9ABB750DE632CA0C90D
            5B25C9B7224BD4330DD159485ECDCC997A53181812FD11D120C5BE544530A38B
            23EC7A0256DCC6AA8F3F47FF7E038BB74F2E2909184A1C9D20F1F5059E02E981
            293111A664E5BF13101F03182A954A8C1A3B9CB7F82450A4AA0DBEC85A4083CA
            F00848A8CA2A767C355E764A1C9EBEEB4390C2C030E5390FFE3B1183F0B42FB6
            1D69674627292FCF23F3D9F9AF04A83522FCB62905CFB7D7F3B2D602859D6EFF
            EE1A7875625F04378EC5B6A31BF380617A8608F51B51758DDDF55BF7C31AD077
            4E2F378A4D6BE2E24DD74EFE4BCFDF22787D7E7267EF47EF1195B632E0F6208E
            81042D642611F5741EF0F7951B3BCB7B284B23156AC63FD7B249DF9898D88F32
            334D8D897D86B360B307AFAEEBCCD9B289038EB445139B14E6ACB224F0686FE0
            92DB9C8B505DC3214F767CD0C7D7113AA7FEA35C416B60C4D2E58E9866C86CE1
            398C6C62910FD15C588A0BE52D6E0AC3926133306ACCD8D23DF8E28221BB66A7
            1787C17BE1B2A7360E61DD3B42FFE0DE23ADF4DF226500431A4362E5EED9BB2B
            A2A32221A2D2357705AFDF2552109A7422A6CED9DF4885CD830C4EB040AE9DB4
            16EE820F7A4B3812FBF9B339AE80CFCF0FF9F694BC9CDCC35770DF589A097A6F
            12B2268C46112289B2ABA066F18FDA79F3549BDB573C3166F860D4AE9B88753F
            6D63A6B5054199727AE88002A3C739C1C5C5F6AAC968BAA590CA35B7A6547AC1
            642BB127D626CA25E4BDC75F145283A4E906AE44909BCAE16A0A602B854C2E3F
            D1AB57BF812B56AF5196F73096562A0C1876EBF01C0E1E3B89912F0E96858686
            046664642C4C4B4B7B21D3F4A85B1BF79548450263070343BDB72DF47EB6BCAF
            89FBEE28CE06A2AE95170C2BADB883D8715578891085FBE5713A483446C89989
            CC8E06B1CAC44D112B1348C4DBB50BEFAF4C60F84B1866741B8FB7DF79AF54FD
            374A02868E8386C067C9D373409B525210DEAB338C89158B62E9894B19C09016
            EF8E9DDBF18E7D62B904F103033808F2D2B51CE710CC622A23A5AAA8E8A935A0
            0855C37D5F3492FAF8F1C64EB45E4733ADD1E021CF3197A95285DADED274EBDE
            4D87B5DFA531D5319F8B61BB2546D9C3C347F5C8841651DEA30CE35E1A84EF18
            1866255C336368EA4427ECDAAD80B52D0E03419EF3A888D3F2459FD2CB4CF692
            2CD2650AE6902241D92076F676611E1E1EFD5C5D5D6FECDA7FC4D4BB5B67EC39
            78A4BC47B2545261C0D02AFD7A75C5EF7B0FF1DF67CF78D779D7AE9DC3356A4D
            8F4C7366433621AB5067B5AC8BA7C58D0D88C86285C40D0B12C09092A77599B0
            095731F359C7CD0A1A50F26B90C6677491C3E42483D1590AA3AB82AFD894B2A3
            88D0C0E82643F4C4EA05479669423020F65D730F633B0CC6A78B96968AAEAA22
            832189FED60D840FE927D459FF5B4CE652822175B1FBDF376BB0E0D38F780D3C
            D5C267D16FE527D49F5B6DE49519344F89FE8A5A5DD0F646A64D12934D9E1E3C
            C4AD19AE6626F403644AC558BD2A0D7DFAE8F29AC8ECB4AB57B4C49285ED98D5
            7219F33F3F9C93D68B822DD90B9D181856ADEC89CC6C53D8E82C83BA8E33A7CA
            2B4C6C6D6D956D5BB5ADB16EC32FCA514387E0A7CDBF95F70896499E89593E66
            F80BA22B57AED0BA25F6F1F5ED909C9CDC0A96F6440C3CCCB1B131F3CC6CC2C6
            0F656058CF098E671379DD31AF2CC9144C634E7954C58197E3195C64C284642B
            2D953411689256481A269936B442E7CBAC6364660ED32C897ADDE5581CEFF2F6
            EDFF7E28159D7D45074312CDE58B8864A615FE2DDC84A500431ABBD8B818346A
            520FB6321B44BC552B67360309CD1D7D4E9F37B97988468EEAEAC519C6AC3731
            FC9DDADC82C92D9C94E4A7501E3C51D898B1F7F76454AB9AB7042F3D5D814635
            5F835C61844A25C3F6BD1BD1B455B4A021E683CD2121523CD7D10D7279FEFC9F
            82A333C70DE7400D89449251BD7ACD6607FF3871C74AF7F5ACCA33018624CB16
            2CC03BB367E7FBBFE75B356F161112FA77522F5FD8DD4CE50DE3297247ECDAC4
            B441A6B4C09F2800A382811F95F791BF83C819321AB8F0E00B39A7E5F13A24F6
            F3135676A3404964F7201D0E97926154E9A0D3EB502920008D9A3545E7CEDDF0
            D24B63FE919AA155527EFC0E71B3DE83D8CEAE5CCEFF54A5846048DF91A5D2B9
            5B7B444484237E6415B6E0DA3FB22AD81CA23946BE359B70750E4D91B4AF8C60
            575E7BECB5399CD3C85146444623D71C5552BC92E35A0ADC0FC640AC36F2F9EB
            EA62C6B9534990C972A7B6001FBDD7093FAF6FC4AE4B0C893413A3C65E416A8A
            025EDE2A346E1A83CE5D1F40267F345F376FB1C1BB331CB34C64F2A153110331
            E568831CB81261963C625C26EB8A3AF5C9927544C7C5355AB14C0A2757E76997
            6FDC5D51DE435816A930603871E40BF876C39652ED5BBF56550FB54A1D6F1467
            8A683093FA5642467E657E944746C4990CDC28184309DABC5699B6639AA1F39F
            093C6D2691698654074D398C14C1A5BEC7D4896F1003A52993A6A24ACD5A4449
            52264AFB67050C4992562E837275C54F9A2DB394100C450A39C6BE34147F1C3D
            82F4569E42A4951F07DCF552E92B41EB23ABC36C2B79149423BF9BC6C8B53D02
            4EA2B8227F207104521B0C6A2F416F26358A72FE2B91074CAC01113242FAF7D5
            63F557A90C34735D3F5BF347F67E11CBBFDC8BAB577CF0EE1B3DA0D34A21129B
            2DB72762D71F81F51BB6B179267C376396230744E186444C3170E6050A390230
            F989E556C87FE8BE379AB72A707173DB75E5E6DD7EF4FDF3AD9BE3C4E9BFCB7B
            444B244F1C0CDF9C32092BBF5E9BF537E513B66A1AECE9E2E4EC6A34994CDE3E
            3E291BB76C8BC9BECFCC696F61E1E7452F324307F4C5E61DBBA8BCEFD3A4C484
            99E40B24CA2EF207E6F0F9C9C5BCA8DDF3F748EEA3A1C1B6F664C91A7036612B
            7D71576825CA06D8E69A92298699183B663C06F41B8866CD5A406CA3E03D9A1F
            475F8F67090CE91AA25E1E0DD5918310C98B4F6EFACC4931C190B30CB1CFF809
            A3B06FFF5EC89CED7824984AD088728E7E528081AC0EB250885424D3215B0D3B
            BD75CC44262BC496019D3DD31E296A9BA99070CD8CCC673295354CCB34BA2978
            4515456F5D8EC7F3949ACD1B53D0B1933E4F7E615AAA028B3F7D1E0BBE38C403
            2B93C6F4C7A17DD5990E20E201132ACDFB60EE718C9D7851B07ED967E00B2EB8
            7C45C6CF4D5A2AE5334AB2F523D2F9D832707684C95D21A4B7E5E74B67D76ACF
            2C270FF67E29E48A1BF5831BF6D9B66B5FE837DFCCC3E4C9F3CA7B548B2D8F0D
            0CE7BDFF3EE62D5A94E3BBAE1D9E53444545DA06540A0C8A8B8F1DA9D3EA46A9
            356ABE7C32651C22CBE909006C6C6CC2140A9B2DEE6E6EDFA6A5A745FD7DF906
            EF70FEFAA449F862EDDA02CFBBEDE79F15D3674DD79A740644BE56134617599E
            15CDE9AC126E8762B8094360C9CD955CDB9019E3BD31940765CC22339A366D8E
            1FBFDF087B27A727D2E2F29902438B84F7ED0EDD9D5BE57D194F4E8A0986D131
            511830B02FE2E262D9E26089B29A842E8B466669A4B5F514CCDD827263B30BBD
            025231333DB5F0591FC27BA510A5BEBAB6A56D44A6705D147DA67C44CA094C8A
            8FCF37D1FAECE900BCFD7A4F2CFEFC009A368FC29BAFF446CF3EF7E0E8A8C347
            1F764264B813CE5DFD0A1E9E42A221ADE975833DA1A588B4A5CF4A1E7F253B37
            316F1B3D14BC424C5DC3893339F164EC5CAD7EA95ED9FBE787B08DD3C3D3DBBB
            DDB98B574F96F79096441EBB66D8BF67B73A9151115DD56A75179D4E5F953DB1
            804CA3C989FC20A21C34E1EC815A7A24F39FA247C0C8C02142A1B03DDAFEF90E
            6F7FFDDDFA02F39668823213F9D3F48C8C99CADE7EDC07939B8ADC735B24EFC4
            9748A67343E7FC0FC406966A436942AA542A2CFC64315E9E3029EB1C4FE4C13F
            8360685226E161FB5630D3DBF34F8C3017030C5BB4AA8AED3BB6E1D7DF36E1C4
            F16390783B227140259E144DF3CD64D500334B306FD8FCF3A49E3BB752B39E2B
            05F2A88B5E7A0B770EB454C6473E432AC13B76529937A586EDB67675732C5FDC
            06269398D722D39707FEFA9E871A352932DCBDED81E0E63142349961F8D5CB52
            74E9E106494D5B06DE2E5C0BCCCE4E6315F2113A9F4DE465A82685985B5EA96D
            3C91DED23D5FC0F75BF7008A047DA6B38BCBFCCB37EFCEEBD3AD33763F03E936
            259AD195FD3CC98B4E1CE432F602DB383B3B3B3AD839344C4D4D096687EAA0D5
            691B51137191A50B1D65CCD3C3A54630E94DD8C3F6A5DD85541872C4123F2015
            A9CB6334902975DC84257E41CA013493EF582281B3B3CB223757B765474F9ECE
            13E71FD8BB87FCDAB52B115A1B9157D42B39DB0910F012E71B114F12F386B6B2
            5DFEABB458E8B647745E99EC9A5F9DFA3ADE9B39A758D4FD657AF0CF20189218
            995612DAB92DCC3A5DD90F56D1A4B86632451BD867D5E78BF1EDB7DF202D4189
            F48EBE486FEACA40919AC39B8BD60849D8DC235F21592DF657929149D5520181
            FC5F61E16190648A78FF93A49EBEF0F939949BB0430669B174597ACEF4181286
            C56F4FE985DDBFD7629726B87188AD8694D6C52BF6F3C0899D4336761B66F57E
            30C301DFFF6807898B8477A624939C28F528AB224744DCAABDC66A39390ABD53
            D6F2C2940E9ED055B213DE3DEBB1D95C0EF8F21E076F171797B9576EDEFBB8BC
            87B6385252300C603F2E0A8F120AB14824D73B4A796E948877A113C2EEEAAA0E
            82FF81AD220486BC31BBD99C47AD7EF4BB9093457E16F2D7912F8500CAF67E3A
            57DB1958A47ABA7BCEFFFBEA8D654DEAD5C24B1326E3EDB7DF469306B51728E3
            123FA0169E2954E06EF167587BA3500A4CCCD8AA6C259316383925E906F8AF7D
            004ACD21B6EA937FFE0D73E6934F257956C1904475E20F448E78E19F17612E69
            008501627C6C2C56AC5C866FD6AE819DBB3374551D798DB1D14B913FF18744E8
            1E274ED1C3E9A2120E1793A14F4843B5EA35B06CC90A340A6ECCE7C3C183FBF0
            C6B4D784CB92080DD348162EC8C0F0A1F9979D104BCDB62DF530F7834E8F2A4C
            40995122F8FA66E097ADBFC2AF529AF0A52D50AFA607325422215BC6687122B2
            73518517557351BFA03CEF2C35405699E0F7ED7D5E8942D746804D04B43C6BC3
            A211532B60DF1F43B82FD2C1C161E38DBB0F470EE8D50D3BF61E2CEF512E504A
            6CEB3040A49EAA7FB08F1BEF8DE020E5EA3C67E120FF8959889015970EABC0AB
            621386CA965C8FC771C60E3AAE83A3E33E4747E7C9672E5C8E1831B8BFDBE9B3
            6793A03120F28D9A3C3ACCA3786C30A88E92A2C23163AB144E0BC6CE6377338D
            B38290467BF2C45922A27C2A8DCF9F65302449DDF823E2E7CCFA6795EC9536E9
            DA568EE890302C5DBE08E7CE9E45D8DDFBD07BD820ADBB1F0F9C58DB3A50C509
            A57ED9DC61E6B05203574F0FD40B6E88F1E326A27BBFBE80EE51708E22D5DF7D
            F315667D3803360A21DA4B8FFA979F53D0B2B9A1E07B60567A6CB80366CFE8CA
            E6B3A065D2E96DED0C3878FC7B787808FEC2C82809DAB66726B244CCAB67A82E
            9ABA513A3325C4264468651AF65E9D42355CD76371BC94900A1B683B62DC496B
            EA0693B32C2B2588DE2D8A0DB8BAB84EBF74E3CED2F21EE2C2A4A49A21C2A213
            E8A71BFBF3029B214154C1417E0D17A63EC7D26A4264076501C2DC6231A98962
            5C1ECDD473A9541B1010F042626262404646C61A2A64A7DE0BFC9C66704E43E2
            53CBCAE22F4C9859ECB5210CB60F3350AF6E7D6662EC7F7A0FFE19074392F839
            3391BAE1476425A93DEB5246A2061A478D5683D4D454ECDBBB0BC7FF3C8E9B77
            6E71925783C1082727470454AA8CE0060DD1B74F3F346DDA8202873C6D2B3FDF
            34D1800D1ED81B172E08292A44D5F5D7F124787B15BD58531ACD9D5B1E183B72
            109449B6A85153C9A9FE6532C1EAD97F508129AF3AA121D3442FB1E3EBEABB23
            614825FE1E514A19E547925F3099380B0BBC6141A354446BE0CDCC787E5EF64E
            915598D4C31766A6885004DCE5583CFFDEDFDFBFCFA9BF2F57B8E6F1D96EA7F4
            52AF46954D0C9086721E42A619D243A42A8DF446AED0D4706226B2280BA41EC7
            95BA1D8885D3DF495C35974A651946A3C1218902270D5C78789F3A7411C34691
            1AA145C46C200317DEE0A6F80B438662F1A2A2C91044342399D69A181D83A4C4
            4448653204550E82C4D68699DAC5F733FE13C09024FA9509C838B85FF0A33DEB
            F218586BAC22B29167BD5D668D1E2A5506B45A1D3C7C7C84A6EBD447C7547496
            C2AF5B3661C6CC77F9EF44E67AED7A62CEF2BAC284A6121B96D5CB5AF2160033
            3EFC53884EB3D32F5AEC80AFD7DAE28DB7DFC3D6CD1B1115128A88F7EA65D1E6
            51650C357F27ABABC87789AAB9D8B6A455724D3141CB732AA99021F5392F385C
            51C2F16232817E9483BD53D5ABB7EFEA03FD3D111E55B16ADF4B05860DEB54C7
            D55BF7F9EF2D1AD59F1D17133B3FA3891B0898242A036F164D266E464357663E
            BBC3E8267F6C80E8744E09D723B1597FC78D088236C00EAED40A80FD8FFA325B
            FB99142A16B66C6AE198C9C6FAAD37DEC65B6FBE53F8E9D90B7FF4F021CCFD78
            3622231F35D3A1178592B1A7BFFB7EB169FBFF296068D66911DEBF27F4210FCA
            FB521EC3CD3C1E30A4F1BC7CF922567EF9394E9E3CC95B865A5F804C7326860F
            1D89F91F7D420B7A91C7BA78E9025E183A107A069E3D7BE8F0EDFA02C8198ABE
            B5470900ECB4BD7BB9E2E62D1966CEFE080989F1F86AC57268DAFA5A1A3F9939
            255EA52FEE4053CB91B71E28B4756E8E9B076CC2D470BCA0E4C9E23C999C92CA
            89DC56C7B5D233CCBA6CFDE407B3E45226CDB05593863873F12A81E3DCD4E494
            7944CA9A41AD3849734BD0B11521194EE785CC186D253B183DE4D0BBD9C0E82A
            E36409D6EE75561F0377BE5AC8170A14766CD7C3719C7C811841284042CE65E2
            8023335D5BD5A1F0FD790B45E1BCA4BE13796626C39F77DF9E81D75E7D23FF5D
            983678FBE675BC3F733ACE9C3D058554CE237D3A6F1BAE2552DB519D418F468D
            1A63D386DF9839E454644ACE3F050CF9F8252B11DEA71B8CF171CF76CACD6330
            936FDDBE85F7DE7F0767CF9E869C99B9329124AB2285261FAF8137E9A160E6F1
            E4C9AF62C607730AB528421E3E40B71E9D9866998915CBD2306C8436472459AF
            972239D906DE01190209031F906C9FDCD3900D8F562B42E5EA9E6C9ECAF0F127
            4BA0CA48C7828F66F31241EA2AC9DF0F6A89B12502F6B75239AF28293ABCFB5D
            712C3DCBFE64ADD93173DB7D572467EDCE86369FB3CFDBE472AB4852E699DBAA
            2903C40B57D12CB8DEEC44A621864FAF9BD3572711F1DE0D1419B689D070339A
            56089129673E20E538119FA0A6B23DF73B523DA4152CF308FB3E70D14D7E8C84
            21819C6628B9933767E1CD018496804AF6EF28B0A288D440EFA36026758600AA
            EC1AC78E1E8FB973F26600D00427A2CE3EFD7BC0C8CC1A32A96972905BC04AB1
            C41B7E6F0FE740D0B44933FCBA695B911AE23F090C490C61A108EFD71D991A4D
            D90F565E52463EC3B4B4340437ADCBA9AD684E53E327E2E2246210B29C285BC2
            F14A0AAF8DA7F4142A1468D2B8097EDFB9BFC0A05D287BAE5DBAB5476A6A266E
            5E4D849757B6BC3E864DBFFED480275ACBE526F8FAA7A36EFD04D4A91BCF3E09
            ECF778787B6730E0353E5AA31860AEFF9F1D03615B346B118CD1635FE6B9B5CB
            3E5B8074898181613521FB83095DA3CFC650E13D627F2B3BF9707FA089409132
            69C4A23C0822B2283454BBEC76288E779AB4A4BCE9140A9B30BD5E3723342A7E
            47790F75BE63F8380ED2926988679986D8A8768DB9F162D5BCB831558507661D
            345E708E2CAD817A135390C3FA7F5A35290D4611ABE54D7348D332B8CAF94422
            E66A6EF61A738227E505921F82FC1904BED1932C7D92A99C2849CFB552DB872A
            4853F4BC9489F3154A0596E1ACBB163DEA2741F4FDEBD7FD94F3E1B0EB8D8989
            46C72EEDA055A991383080D78D5AD98A1FE56C8961733F03DE1BC3785ACE817D
            7FA076ADDA856A87FF343024519F3A89C8618320B2B129EF4B299D94050CC512
            74EEF21CEEDDBFC7A6BB8827F9535739CE6748D3C03AEF2C0042FD868959C9E6
            660A66BDFF21A64C9E9AEF7CB979EB06FAF6EFC5C0CEC816E5C49CF5C8ECB518
            3D6408CE9EAEC46B8D2968C23BE165C2F2530C3FFF341C3BBD8E832517059BEB
            EDDC70FB8E116FBDF31E2A0556864EAB6560F80903437D0E302409587E9BA7BB
            F17B3409E937D4AF88DE49A3838C276053FE23BD5FF40E13D13295248AA9BD2E
            BB571B3BDB108542F189ABABDBE1E3A7CE855B8F1BE8E789F07F9A666895564D
            8299C97C054DEBD75E9C989C349DBA6A517BCE125F0DE560A51BB8DFC1E97C12
            A72C228D8F1A5967DA3C2A01A20833E78363AB2DE54491DFD026520DD73FE2F9
            8AC6731CD96068AA3BF0D2284D4D27BE92923830D3DD7D4F34FF1F397C09105D
            5C5C71E1DC951C1A1DA51C0C18D81BD7AE5DE5116B62F1C85DE142D44C0E4CF3
            753E99C029C14C0623FAF4EE87AFD6ADE78EF3026FF51F088624695B3621EE83
            F7CAFB324A276500C30721F7D1AB4F3718343A3E5F93BBFA703F9BB0E89B85CA
            945C6F1B276B5D71071E9E1E387FE966BEE6F2F13F8F61DCF8516858DF809D3B
            937394E1998C620CEA331CB76F7942A13042A7B3F4FE163D226620A69A4DBB37
            67055DE2E3C568D78928BB9C99763897DF17A595E50B86E49262804D042622B9
            248D6D2B6173D53E33B7169BAD13A54824D693926C6B637BD3DDDD7DEE9F672F
            1CA37FF5EBDE15BF1F3854DE235CA83C56074FE3BAB5D0BB4F2FC996DFB69ED3
            18B44DA80E9827629626D5C692E0499A9DDBE158D8DE4B87AABE0B946C92D14A
            048504018B6FF2E817819DF3F1780E56DAAAF61C1809ECA8A789B2875FCE846F
            EA88772919AE47E210C334587212D331B46C755CFBF53AF41B38046683810354
            4848083A756DC7EB9D89B03347DD26BB06FBCB299CD7903459CAB71459B457A3
            D180C8B8E47F251892242E9C8FA4D52B9FBDA4EC3280E1A1C3073169CA78AE45
            85CE64A6329B9FBC89FAF6083EE7D29ABB2399D860AC24086CA1A6F24F6A639B
            9E9186BBB71E52FF901CDA21CD8B75EBBFC5FC05F3D0B7B70E5FAC4CCB93044D
            5DF0BAB51F8B9AB513F1CE8CBF70F24465FC793C0811E14E7870DF0DB3E71DC7
            2BD3CE66F9192F5C94E1C5112EA85AAD16468F9BC8BF2B100CE9320D66047C76
            03EEDE5E73D8C5AD379A8CFEB6B676B533D2D3ABC915727F93D12463A232188D
            0F99467CD1949919EDEDED15CDD4C0143C63F244BCDD4B3E9DEFF8D557AB93CD
            5A8384821A9A6A0E658B26332DCFF6462ADCF7C770808C195705265705FC57DC
            868C99C054BA97308899B0C4446314583F888186729D28BC9FFB8E29058834CF
            C857AA73BF86E32525278EB0B3B1C3B5AB7720A1FA681B39E6BCFF1ED6FFB00E
            220739EFFF40A63B4D6202688A9893064A3D2EC85FA9F3B743A52FEF723341AD
            56E3FE9D30383A3A16FCE0FFC1604812F3CACBC8387CE0D90AA894010CFF3E7F
            0EC3460C61606744E8AC7A30332B864AD7A87323AF20615A627A33376EE1704E
            CD28355C9815433C8619AA0C1C397802C1C18D72F80E8941BB4DEB26888E8EC2
            94496ABC3F5D95EFB9431FBAF23EC96FBE731A93A6FD8D8DFF0B46EF7E77E0EC
            CB16E93481D7D02A070E293079AA13BB8F36E8D36F10FFAE3030A4F94E6D4BBD
            548A23576FDDEB52D423FCE8FD1998BBE8B3F21EC952C9639FA936523E1FD0BC
            51FD17E3E3E337D304A3C008357AA724CC5227645B59313686F22048E4EB35E1
            7C4A68244FC9A1CAEE3E59C79625E9E0F7BF07BC2699C02AB71063B0C86042CC
            F86A02FDFAEA7B59019D99333EC0E44953D98DC8D0B4615D24262670B02293DB
            6C31BDB9E9C324613003E01A8E16CE6D3AEE431E9C51AB55880C8F87AC90D489
            7F3A1812E16D68A7363046453D3B552A6500C3F0F03074EBD9093A8D9633AAC7
            8DA902878B4ADE3E332B1048534C6C210AB4E4FB91A4A7A7E3F2C5EB3C21DB6C
            B6F8E718107EC5B4EB8F3E9EC34C601B2CF82803A34616109C628FF7D6754FF4
            E830062BBEDA8B10A611BEF3E1C9BCF9886CBB6FD6DAE1938576E83B60105AB5
            6ECBBF2E140CC93FCF9410E72B69DA8791B179DA470EEEDB0B5B77ED2DEF917B
            2CF2187D86429A4D97F66D7DE2E2623F50A765BCA6B71171DE400A6050883EBD
            A1C0284D040E3CF0212FDE4B42DB99EDA47CB2129983EF7721D055163AD9399F
            4E44C49B3561F0785447C9FBD07E7B1FE1D3EBF0885E6E21D032CB24881B51D9
            92BB98C4CD6AEE08662FEE9183C750B54E6DB83BD9666977047A4422419211CC
            EE8352888C8F22D5641E51EF5B2A6027308C4F56FD6BCD64AB10D9050744A29C
            7A16A48CD1E4C6CDEA23393999CF0972E9A4B6F382FF9ABBDCA2A0FA5D123925
            244BC4BC7C94576F300D915C34B1496959F385E66048889052432E175216D77F
            9B8ACE9D0A984F4CC7306825D8BBAB265E9FDC070386DCC2AA6F77E725739051
            0A1991B9CAF1F2E45798A92CF4182F140C21BC1FAE47E34C0195026A9F3C77F1
            FE8B03FBE3D7ED4237D0A60DEB3465FBB767E672176642B317CEEC2511891506
            BD215E215724B2F7EB8E4822BE2432E3A6542E0B4F4E4B090D8D8ACFC3441518
            E80931C3FAD084F20BAA3C56CDB0439B16DDC2C2C30E98F5269E6F98D4CD47F0
            B331BCB00D57F30830F9496885325B28CDB9980BC95DB284F0C907A3651A26AD
            BA190C54A9C936991866360923DEAB2B500959C79C81A13F03C3D00FEAE57BDC
            1C60680133D232A97488FB1419009E3C7606556B05C2D1C1911F43C3CE1B3F26
            88A9BD99799F1ABB4722967065F74726BBBD9D3D6EDE0FFDD7832189FE011B87
            8E6D9E8D087359C0502EC7948963B17BCFEF904A85400699C7E4B2218A2F9AB3
            B4788B2C51659AD3348D28458C5A49C424A6F2F942401817138DF69DDB319014
            3441EA2A71685F326AD7CAA76285E900335EED8E83FBAAA376DD04346B118DB5
            6B9AE1DADD2F21B731E69CFF6C08FAF776C1858B22CCFAF063383A3909639403
            0CABE7496973641AAEDBC158337B2F5EA851BDE6D6ED7BF6A367974ED51FDCBF
            7B985DBB3F3B87D44ACFA7F7B181BAA6130C5E36FCB5267FBADD3D22871091C5
            661419330DECDEE9C6A8C6F01CFB104166425874C2E1F21EFE3283A18FAB3D62
            9916C434C3FE71F171DB4C4CB98A1B1628D2919F50972DEA644DC4340A240ED2
            0C0324A906BE3A12ED399162F25220EB151181864648C1A10F99BED4585B16A7
            E52D0C8936886A9529B44F2543D9536F080CC94C8E99580D7A8FBCCCCCF98121
            019AC32525DC7747F3F9E3E9E189F8F8B82C70A2EB24C6DFF4266ED0FB0AD682
            54A913D88A43D2799B00D22C29D2D6A85113FCBEEFE07F606811CDE953881C37
            426013ADC85216306400F8D30FDF61FA8CB779BD718EC3B27991D4CD17EA3A4E
            5944B0A41112592B25FDEB743ABCFEDA9BE8D2A91B4E9E3A812FBE5C69F11D0A
            693854C04239864E8EB9567636552E9DF745DFAEA318B0E9D87124CCFCBD0357
            572D4E1CAB8CA37F7D97737B664CB569E68E88483396AE58CD419084CEFFD927
            F3A09599113DA95A9EF23B0B18C2CECE7EF5ADFBA1AFD5AB5575A5262DE30DBD
            AD18DAEA8EBCBB9F26D08E13C0F277DC647103D054B6284352F6EE92564C7DA3
            ED6EA7653F3CD5D30C6460B83FC8D3F3D9D70CDB346F343C323272A398A945D1
            932D00F4643851F9154BD28CF0658046F59044111441EC1A869C9AA1DF770F90
            D8D79F379FCF2DF982A145AC8CD7854AB6C8746E31B1657CD8B09158B262D57F
            60984D92BF598384CF1608B5DD1555CA946728C6A58BE7D1AD6767D8DBDB1770
            FCEC3BE4777A7316C30D6FC4C480441EA9E69CF061310C24D4B976608FB25FE7
            9770EFAE7BD657946F78237415268D1A80B51B77E4F41B3230AC55D58357A02C
            5DB91A5A4B827C4A4A32162D980729B1EF4CA89665D25BC50A860A85225C2C96
            A83519AADA291DBDB8AFBE40A18EBA315A9E96433D87F8BD8B840F293DE4FF17
            09EF6C0003C2C8F218EE7C2EB97432A84F4F6CDBBD0F4DEAD59EAA4C4DFE820D
            A498A2BC7A1FDB92B1FC167455B4A2587C2AF2682DCF68A7A44E91D92CE4B03A
            C8B80A4EDDEB28E15A57E9510A0FF1AC91FF2EE5792FA4B570CF73780E865231
            CF4FCC73ADCCB4218DD5E5CF78D8DECFE0C11ADED0277BD2B895A68CFD4DBE4B
            F22712812D35B23727A9F1C9FC45183B6132CC86C700864CEC3B7765F7B3FEF1
            8E7C3948D2B2CFA05CB3AAE2B2DC94D167485904952A7BC1C9C95908B4114931
            9B67D94987F3DD97EA76D947E767CB93FA29FF5557C51E9E9B23607B2D050141
            9938795699170CD961298AFCD6BBA7A1D34AF0F5972D3830FE75612D3CFCD479
            03280C0C3D5DBC98E66ACCD20CE9BA95498958BC703E240A19621818723ABC6C
            620543FE88D839E38755E61A618E7A6589D017C6F6562AEC99E647050F44D860
            7294712215BA37A3BB9C337893ABCCFB9730DA6B3903C277AC6C58E52DA50643
            7F771791A7B7D76C65B2F2636AB4451DE5321AB9951908C91C250022AE34CA2D
            E42B09055024624ED26A960B2F12256653B0C2EA83896303440F9C0685265FA5
            D5F7A0657F93BF26B710CD17F97278B3EF82C45235435AA8B59CD0EA17A19C42
            D238A9E10F9F043499D97593699E199F81EDBFED42CB56AD0BE5452C3618B2BF
            CD6C05F75DBD168EFD063EBE912F0F618012F9D28BD09C3D5D3123CC65AD4D66
            9A958FBB13379329481835A51A9BC709CC344C61C0611616D1ECA7B3F41CA112
            37EA8AC735326B65139B579E5B23A1B8968AF61DF5F879736A1E304C49B1E164
            AEE3DFB8003025EFC4B1204C1A3B00A72F7DC34CE5BC9167A3891DD3D79369AE
            06CC61F7696B2BB87BF4CC4C5EBCF063688DFA7CC1D0E544029C4F25F0F72C7A
            727521C52C7BED019BFB54F1E5763086B3D89B98E647E974D4889EBF2316F266
            DEF12F49CF1515F63B99C71EECA55285452595F7C80BF751928DAD081EE8EB21
            158BC45BD9E0F633B141E3B4FA946292A32EB898D45D12C1972867E62995D751
            43776A03402B4A5A2B77DEAD8E481D887D1732CBE54A856E773C20C34C622AE7
            23A0A26D685BAA3EA15C40F27D287BF80AD76634679544B91C4F80C3B564CE70
            935FC3EE3C4F4824CA4A9F11EECDF2C976BF563044820A7F9FBB021F6F9FC20F
            5B0230E4DB336D2AE0976D50346AFC04A7C35310930911C306427BF952C5CB41
            2C2B182AE4A857BB0AAFF5255330E29DDA425D2FD3A0A88F082F6BCB76CB54B2
            6A70B3F8D972372963EF85D7AFE1905D4FC7B8F11ACC5F949187AD2622DC196F
            4EED8D29AF9E43B7C1F7F1F09A2B5E9BDC177BFEFA918363CE8B639A79A21835
            EA7A303034E28D69D3E1E3EBC7FF2504501640ADD570052147E518036CCACCA0
            F78CE7F2D6727C64F23225C5F1AF44389F4BE2EF2C718B52F92CB503C8B497E4
            245D21B3394A036FA68858D2D88219965C2DEF21CFF5888A96CAFE1E088B125A
            903040ACCF7E1C6483ED4B9A98B2A71F2F2BA2004756AD31FB49C5E944DD9345
            FD9F6DE213590365B6937646DA9FD30525A46C7F0A86F0EE626D3CA1B236D3CE
            AD698A84C82FE53ED1F67A6F1BA4B5741756550B48D98664F046F294002D5199
            1E991F6CB522660E2A9677666670D4941A4513C016F7415AC0D04665C699BFCE
            C3DDCDBDF0ED4B088624991A2DAA1C3D09798D9A4F724E3C7131252521AC7717
            F633B162016259C1502E47BBB64D111111F1080C8DA5B494180805ACBA03A3D2
            84F9F3323061722EB3973DB6CB177CF1E280A1301824F0F34F479BE7C251BD86
            1293DF3907508B9A5C3ECA4406863519183A389830FCA531A8DF2098FF8B28C6
            BE58B104CA84445E7FAFAAFBA8E738959B067D7A83BD67B6887AAD4696E64AED
            50BDB646409AACE30507CAEEBED03130CC97EACBAA117E7DCF9A41B28401E17B
            D971A52248B1672203C15AECC7B7ECF31CD3B844660AFC9A2024205BB527EB41
            C93C64604749CA26A69D51B2B5395B949883216FFC64E22A777A63570E56647E
            729A20207FAD921DC77D4724E74AA30148185849680D9AE7AE2CBE3DBD895307
            296235F0F83D8A0F2C81264FC9612B6FF4C4EA8F1D0C5D8C72FC79EC0C35C229
            7CFB52802189C4D905554E9C6526992D2AAA6CDD78168347B42C741B6374141E
            766C2358101545CA0A863219060EE8854B972E94190C498BA4DA7B7D4A26BEFF
            5F2A7AF4D6E5CC1B646BFF178B5A33106B0989C4CC1F231133B8BBABD1BC5524
            F72356AD97AD8B5E3630747232A373D7EEE8D0A96BD6E14E1C3B8A037B774153
            DF0D894302045063EF88F3C944B8EF8F46F85BB5B8CF8F6AA3BD3785C12654C5
            353CB2BC88EA9F5B4EE682EFC56FED7DEEF367D7F11703C2E7CA7BA8F31DBFE2
            6CC48090CA380EB04F1BEB779AEA8EBC8F2A35C81612A2731E559CAC179A6917
            E03623E0A39E0B54635C6073EAEC876483E3CDCC06A23FA228564A67EFE24F34
            4B5A8FEBC158D85F4BE1BE46D25AA327562B162376B11EA4050C3D618F6347FF
            E29C86856E5F4A30A4F414B1AB2BAA1C3909B193332A9A448426E2851ECB71E6
            F6A7456EABFEF338A2C68F7A4245A1A590B282A1448A2953C661FF817D8F0D0C
            75C99938BC5F89060D8D82D96915366D8F1FAE82352B5BE2C6752F66EA4A7274
            C5D3A865CCB43E8231D430DE92A5C3C1B09E071C1D32E1E8E884B7DE99011BB6
            A8D2BDA5A624E3D38FE740E668CB8B15AC1A60C0F25B30F8D8F27EE3F2480D7C
            7E09E5735D45D4FE7DFC04375321EF2E292044034666B4442A0DF3F1F0A91619
            1B690A8FA9381A61D6B51677430688F456BEC03E9B785083810895BA917ACCF3
            031F67DF93DCC21EB8DF57F7A0885473F6185E02571C8249F24732A095C76879
            E4990233547E677B379D832B39838D4E45B30D17EB415AC0D04BEC80630CA868
            B215BA7D69C1D0228ADA7511F8147BB61457F6EDBC8C37C6AFC3B623D3D1A051
            6091DBA7EFDC8AE8A993202E281DE5694A59C1908DD5824FE6E17FEBD696190C
            C9BDE3B7F61E34C966DCBD9E0857B77C1AD253ECCE20467CBC3DBEF8BC3536FE
            D890819B318BB5E6CBB5BB798B50EBB6048635EAB8A36EBD40448487C2D5D50D
            D3A6CFE43D58643239D6AFFB1AB7AF5D476A175FCE504F2D34A8B91A11BB9225
            E5B1338ABBBC8850B9388C54E4C7F75D170259227BF7E472346ED4D477CBCE5D
            B141FE5E088DAA7855492501436B33A8EAECCF6FD8A7130120D17953F3F6B426
            AE82CFA0B88193E25C9954CC802B8D97CA11B8C5BF1020243CE7E23684257541
            9262808C69A4E47FB489D208249AD11A0EDCD40B564878CD14F8D6080CC757E3
            19F36516769D742EAFDFC2619729C3861F37A369EBD685321897150CA9D4CDEE
            B9F6F0FF616385EA3FF2FAB8EF7068CF15BCFA6E0FBCFE5ECF62ED93F0E9C748
            FEDFD7E59F83F81868FF7FD9B401B366CF10F25F67D4C951B25912A1C5DBE787
            87306880B0FBF10CAC0AD998A63F9BC629D1B658B7B6293377AB23E4811BF61C
            FA09B5EA24646D436058BDB61B03C856F0F4F4C29E5D3B50A3666D8C193F9103
            221519AC5CF6190CBE768879B91A7CD9E24E1A1D75BF243F3DF9DE63C657CDD9
            23B980EB218A3DAF2D1190514F741B797CCD1A355BEC3D7C2C6C40AFEED8B1F7
            40F98E73218FB1D812E8EB8EF018210C5E35C0A7237B710F180C0699F5480657
            051207572A7BD23531C33050E31DF1620476EC844181BCCE3987B07328A2D5CC
            F44DE5B5CF54B79CC56C4D9DCA6A3B22ADB11B278AC81EC0A1E3DADF4C85B29B
            2F8F589755AB75DF1BCDBB895985AA50962F5D8921835F2C90E0B5AC6028DCBF
            19CEC346C06B7EC56109A9E6F21AE40A291A350BC22F7BDE2AF67E112386F094
            9B7205F6C70086C45EF3E230810D86B443B29C38735209E79882CD7B221431E8
            80D07B090C0C4BB6FFE54BBEA8592B1176761636D86C60D8A15373BC347A3C7E
            FEF13B9C3F7706BEBE7E78EDAD7779F9DFCAE58B912ED623B19F3F6FA561E50F
            208D30726A8DA2DD4A142C49D4C3F7FB106E7DD9DADA46BC32F995EA6FBE3753
            DFA77B67EC3E70E4698D6689A554DE9A6A81BE78101E83D7268EB7FFE3F81F6F
            E8F5FAB7743A9D178FA398C0CB8E28BF8878058DA49115D647D96ACE329147A8
            792498B708085509FE084B70C6E828E5A048F986846B42999E813B74298842BC
            891459CEFA900629B6960659CECDCEC3A9CC79D235D33487040A84ADA571E24B
            85EA00B723B19C2056C5EE99C09A8091409A2274AF4E7D1D3367CCCEBF0DE4E3
            004326996A15DC5F9B068FF7673F99195202D9B1F91CDE7AF97BD8DAC961621A
            F8D5C865B0B129BE1B22BC7F0FE86EDE28BF087319CBF142431E60C2CB6338D1
            AB55C8F74773313DD885E713F292356BAF9FDC924D832C311892D54A9B587B4F
            1166652247B55476301C366214BFA74307F6B2CF3E346DD61C43478CC6B2C59F
            22212581A7C790994CB990E44A8A99505500C27C9ACA7391081DFFA8431E356C
            13C9A504845F8F1933E9F519B367195F1CD007BFEED85D3EE35A4C29D3AC7B7F
            DA5B58F4F90AFE7B9BE68DC7C5C5C52D361A0DAE7C28789A8B99A7BFA4B6F562
            ABA39350C921CAF61C1950D93C54F1C6DA7677D3C9E426725E938D8D4D8CBB9B
            FBF4E494E4E16AB5BA3FF9E328C749C5343D7B364062B5409049C7D256731422
            CA99459BE76442FB7F759F6B8FD420BBB8AC39B98522E14438EB70399947A395
            5D7C90411135767E6A5B401DF7F8F5B1FB6FF7DCF3F861FD863C3D511E17185A
            4E041FA6893AF61F5496E12CB3F4EFB018776E46F1FBD1E90C98BD6030C6BFD6
            A9D8FB6766A423A47930CC26D266CA0110CB0086B7EFDC429F7E3D7839263F94
            C5941465CF45A55C584719EFA1A30DB2CF718B9C953DDB77C505437A61D46A19
            366D680017672DDA750885978F2A5FFF626E3064561D9F6F31D1D14C23FC0C7D
            FB0DC4952B97101913C915094BB91C2F5B2570E4F7936D61277713AF0A63DBD9
            3105C6E152B250872C936604560AECF2C7A9B367DBB76981E3A7CE3DFDB12C85
            9479C67DF2D11CCC9DFB7156D4BF79E3FA4DB56A4D1BA3C9D89D69476D8D06A3
            8BD9601442FFF6529E9D2E349FCE84BD5602B159146516E39AC2D6E6A2C99CF9
            B7B3A3D3F553E72FF3A5F595B1E3EC8E9E38725BA35507806984C90C74D2A9E9
            13B51CB48E49717C940A09140F3378E32862BF211E425EAD521C5F0E69A7160D
            D38669AD8E17937803289A1C64FEF00639D4A3C5AAF95252F7C904B8520B52B6
            92D2840B0AAAC2AB523C3D1FD5723E5630A4C760D033405C0527669A978724C6
            A7A1679B4F9191AEB50C8B19EE1E8EF8EBE682121D471F1A8288FE3DCBA7B154
            29C090D269B6FDBA09EF7F305D286F63F380FCD071432B7340A45614444C4055
            4CDCB2910AFD4272CF596A6911FE6E9DACBFAD6048C435110FF2FA0C7945A851
            82375FED856347AA301357CA819182273F6EDA8AB6EDC272EEC0E6A552F97FF6
            AE03BEC9EA6B3F499BA67BA6BBA52D7BEF8DA08202B251F65610454050101105
            1150648BE040115041190AC8DE5BF6DEA38CD241F74CD3B44DDAEF9EF3266943
            5B28D085FFEFF88B25C99B77DDFB3EF7CCE7C851BEB22B5E6E23B4C0BE1218F2
            5762FEEDDCBE05278EFD2B34791B24272749C710E74F8A4C969D9C2D2AA2E2B3
            48C99492C729F326D5A086664B606E6D677357A954CE183FFAE39583DE7B3B63
            D880BE58BAF2CF921FC7A794225F7EDFECDF07CB57AD36BD179348D1B85EAD9A
            0EF6F6D5D3D2D2ECC5CDD26833322E4DFEEC8B908EDDBA26E4FE6D93867570E2
            F405D3FBAAE5CBC96A54AF6175E9CAA55362A2D5842E4B46F985B19D7DB83699
            4CDD023BE89118068C18B2694266BA281035B03C744E968F045099A1BC8ECC70
            C753F1020453A088CF642D9056F6C4973C24FF65419142CACF224AB0FD51AC29
            8C1E351613264D360BA8143518F23EA94A65FD1628ABD528EA617DAC9C3C1A8C
            41DD169988068CD7B8E9E0C7A858C5EB89F6A5DEB11511238797BCFFF029C070
            FDC6BFF1C187A3A57123AAB70AF688260290DC73C3E006A21A5FC713F19CA8FC
            F0FCD3DB2910F6411513159D110C356AE0D2B938787AEACD7F236E4DAFCE7D70
            E19C179333E496FA0D23B06AC3BABC7C8654B0E0A61240590783DF1C6662ADE1
            E3592B89A19E8328666348D741972693E58B16625BBD78A66F787B794F3870F4
            E4D6921DB0A29562B545664F9B8C0953A617F8FD67132660C6ECD9057E3F77EE
            5C8C1F3F1EA7F71EB3183A7A503BAD56BB3C4DA3F120761C53772E2705F31C72
            C39D5CFE11AA8AB1BF94C8E93824049AE4CC4E69A29234CB8284C63E5DA20E23
            166DA21C621A255725B40288931BBB229D8AD48DB991F9982344EB450EE4748D
            1653267F811123C7705F15B3CD8A010C99FCD6CA0A7E7FFE0DEBDA758B7368F3
            C8C451ABD86728939B4FA929B37AA2EF90164FBCBFE40D7F216AC20725EB3F7C
            42302486EA2A35CAC34A61C5D71DFFAA985FF55DF2DFB75C329BA97E977AF03C
            DCD2967CDEE4973382A8110CD384C5BB7D738200B8CC9C665062571BFFAA8EB1
            422BB4B6CE44668605378372754BE3E99892ACC499CBDFC3CD5D633E3F6D014F
            570FB8BA5A63DACCB926D61AA324252662D1C2B9DC2DCF785EF42C64AAAC91E9
            911314A5674AAE91DAE65A5858A4BB3ABB7E76FAD2D5B9253750C5236525DDF5
            913275EA547E9134A957EB83D8B8D83142E3F21513D49201809B651BCDD45C97
            24FE49B5921491266730D106516D656C573F4EBA7EAC99CC5C6CD9503CD0C2E1
            42026B97D4E291AA64483354D774E6600D99DEC67D9156E9BB2418F2C40C8C19
            3D161F4EFA345F2AAF6201438358B8B92160CB6EF15755626354C96D342C2DF3
            6A72CD5FAC825FD68E78AA7D467DFC2192D6FEC9A66889C8138221E5155EBD72
            09AFF7EC0661F5700F9EC456EED0B92873E69600415A9869EEB86D8F30653A30
            FB92F88E22CE042AC45413F79A8FC9DD6204C37481574BBE4F46976EB99AC78B
            79BD647123CCFDFA05346A128EB6AFDDC2AB6D6FC3B78AC413187DD71EEBD6D4
            C0C87127CC5B8B0A30AC565125CC601D66CD5D98AF71B478E13C44453EE07F53
            2E61CC1BE590697429E55236A8C3A4E389382EC3A57B636B6777CAD1C1A1C7C9
            7397EF77EBD0161BB7ED2A99312B4229F360D8B35B67ACDBB899FFDDBC51BDAE
            71F1711F65A4692BCA32B2543A5BB905F9FEB2E92124D75E9A8E7B90D04423DA
            202282A5446B4A7EA5C9E5BC2F0A36F7521908E35EF346AAD8A650290F86A819
            95F75926E998DE4B0A9E58B0664A9538294D553C61E818CA3DA1F86CD2E71835
            6A4C81CC35C5098654A5428018B8FB30E48FA984C94F1E842520F846242C158F
            3753E9DCCF9DBA8B39D33641A9CC9B274851E5959BDE875E573862579DD8AE4E
            83727074923AEB458E7B1F299B36948C86F8343E43715ED7AF5F439B762F4121
            CC7AF20952BE6D8C5870B3EC2DE174289A69F339E867E02BD408E04BABE4C001
            139A43ECEA91CBCCA8BE72E7194EFE548D11A372D5268BCDFA74EF8DD77B5C45
            AF01970CE70E1358E9322D30E1C37698FFD336A946D928E296B668E48A90FBD9
            9839FB9BBC0DE0C5B9ADFF6B0DA7DBF03CA4E20A717E44BB95F89227B415EC72
            F2266592094DAD7CBD5687B0A524B7B050AB54AA61A7CE5F59D3A65533EC3D74
            ACF8C7AC08A5CC8261CBA60D71F8F8699A84B27A35AB76142AFD9CB4544D5532
            2728684189DE7AA21ACA96D214A8F90E39A909F428CA1C36BA0AD73053DFD707
            6F96E7B2410AA458DF48E63A65F22592D698F482FB93E7195A516F671DB3E650
            BE223994892D27ADBC1DEC2F2661EC07E33166C284A221777D06AA2BEBBAF584
            C9BCFE897D6F04489F8F5F83954B0FF1ED7D1C0E5988C5283F20942E14D0A8D3
            F13821B0B177B4C1079F74C4DBEFE73461A3404A68B7D7901E7CABF87D884F19
            4DA606F267CF9EE2EE78C41ACD84FE02D888748435274B89AC847AE7C4BFE22D
            E68FECB1C9D894B44C6D44759A2C0C1AA8C5CC39293975C6624ACC98FC323A75
            BD8EBA0D1F98B1C347843960C5CF0D9090608D393FEC300743A6FD77C199B3C2
            DA9A318BC85ACDAF430C340551360840B4B05372AB0B456CBA5028D219CCA904
            9752E608C8897CD6C80245C775DF20E5EECAC402EAE8E838F2C2D55BDFBFD4BC
            090E1C3D51BC6356845226C17070BFDEF8F58F35E8D2A16D85EBD7AE1EC8D0A6
            FBE9843617DDBB9C54CF9CCB2F45A0E6B92A849344B9FC67C51DA4D475455C07
            6F58876A983288CC62CA033489183C8FF5A1908BDF460EABC0F9514F2B146123
            D66D79AA64C350EFDB037B0FC3DEDEE191BF2B0930240D5159BDE65397ED5DBF
            128EDEED17202343F754BF2FAC90F6E8EBE782B5BBC6C1DD231F4D56A7C39D17
            1A421F1FFFE43B7F12794672D7E0DBC178F99596DC6A36679F606E43223E7E92
            D24F636D7276AA1E2FB6CCC0CA75B9F80CC5F4FF664E7384DD77C2D7F37662E7
            F64A1C45FE61511384853A32CF21F54B1E3AEAB4B9992C0EFFE9270EF86DA515
            868F1889C020F36BA12A94A3470E61E3FA75941EC32EA0C88141AC01120B14A5
            8CC90C3464D48697D3C9726551389C4980DBD67036FB9D9D5D3EBB70F5E697AD
            5B36C3BEC3CF87865826C190A476B58A63D529290BC434E4E86D723395B9DF42
            ACBC64AA12475A1CB509155A9FEBE608389E8A43C8C7D5C58048CD78FC17DE60
            2256024BD36FC560057E711931DDFCA4A8F0B310D21A58B903A75DE6DDFB78FB
            60F7CEFDD42FE2D13F2B0930241180E8D8B32F3C67CE79AA9F27276930E1BD95
            D8B3ED221456455B2E475A67A6005AD204274EEBF6C86DD385291ADAAD3DB29F
            9545FD3127F4ACB5C9278E1F456FEA9F4C2216ED64619612E33A9BC24F72EAE2
            B77EDFDE802C5987C0403D0E1D8B3703C3D3277CD1B9DD00B1E86630490369EF
            4AA58E23CB0AAB2C0EA028140F050AC536ABD758E3E349F642ABEC8EA6CD24F2
            180B0B4BAE553E75E2384E9F3A9EB3B9003AE21F203E0016F19ED2C61C8FC672
            608592C9A96E99D3D40C84B4B657928496182ACE4700A28BCBD8F3576E2C9C30
            7634667FB3A8F8C6AD88A44C81E18B42AD3E28D4EAEA95827E4D4D550FA2A468
            2253E06087D959CBA0DA1C86D4DACE480B30549028E5F0FBE606479823292A47
            2B9898806E1BC339AA1CF2598D1CE774441A9B20D47BF96156DFA7126B0B0408
            302450F5F5F5C3AEEDFB0418DA3EFAC6971418021CC976EE3F181E33BE7EEA7D
            FCB1EC08268F5B0DAB2204446B1B05D66CFF1095AB79176A7BEDE58BB8DFA92D
            47CC8B458AA01C8FD8AE83FC3C797B9ABFA1E3AA3D5D851391BBFE11C2FD4364
            E2DF77C31EEA8122A657E38AEF22395969E6C6A05CC3956BD6A16193F07C777B
            F4B815060C7642A3262DD0A94B77EEE4B7E48745B82BB45A597EFE906C89E69F
            5C40A653135690CF92DB0C882404965A7F032F016553446AB9944FEC4FE7E9E1
            D9EAC4B94BCF856A5866C070EAA79F62EA975FA246E5F2BFA42625BF45DA5C5C
            071F4E4635ADA862B5A4BE0AEE7F87F26AABA99EA3D5C9B55908987985D36792
            5ABA9BFC1914402937E71A423EA921CC14E94176D91B0587D3F1081F5191F306
            1F2B72438E95A1158019D335BD94396048759EBB77EC2FB82990F1C6972018B2
            080DD1FDF319701E38E4A97771ED5218C6BDF31BAE5F0D175AC8D34778095C5E
            EB560F9FCFEA0977CF270BF024FEBE1CD19F7E5C3CAD47CB12188AB9E67C308A
            59D933C5E4BB7C3E0ECE4EE6EE9C54B5153EF9E855FCB5BA262A568E43DBD782
            D1ABCF6554AE1D9BB7FF8941EEDCB540BB8E2EC244AE8A0E9DBB61F9CF3F7243
            28124AC2AE50B1325ABEF812B3D89C3D7D12972F5D30549EE4EC8318BAC9476E
            1529A5E6900619DDC39F3949A50F84C97C2E116E9BC26069A74CEED9B3B7CFCC
            B90B528B7EC08A569E1A0CDF1D36183F2EFDD5F4FE8391EFC9CF9D3F23572814
            B28484F8EC8EAF75D67FF1F52CD32D1C3F762437A1C94F3ABFF62A366FDF8D3A
            D52BBD9D9898F81311B0868FAA6CCE9A2B2306EB54EE5C471442D49E30B7796B
            772D995963C2875530B5F26411932A70FA65E65E4BA9E72A4DF875A13C90CC67
            A8CCEB949719F307C5B6F28C6C5845A7313723AD78F422D2DA742F6B6E7E45AF
            746F6B04CCBEC6E7A352B963DF9E4352BFE547DDF892064348E56EBECB57C1BE
            5D8767DACF076FAFC0CECD170A24A1789C8CFAA83DB3DA3CAD447F3E09892B7F
            2DFA804A5180A1D0B40203A524F36702439AEFC16AF679EB2DE5F8E7EF44D4AB
            9B99773B0B18166A48A9378F717F6B34323468EA26A6AA0DE719D2DCA357E52A
            55D1B7FF105829AD0C2585324C9A3096FD8846B1B2CA66AE449DD1852CAE2BAD
            B223BBAAA8BA26543CB3D9C61257F1D7755338279ADBD8D9EDBB7E3BA44DB78E
            EDB1716BD9A39DCB75CB0B2F01BE6EE2299D8B10BCC9EFC78C1CEE7EECE8B196
            2929C9AFE974BA0AE2817690CB65567A9D5E23B7B048B1B252DC747474DC7DFC
            CCC57F68FBF6AD5B61C7BE43F9EEFBF6BD60CBB6AD5AA688FD58738BCF1AB918
            6A6412CD3899B6517D0338CBFFE18271B7ED0FB83692FABE522A40EEEFA8018D
            5E006C54DF40A6F0F25C739F69BE88E9DA54C12206CFEA5E2A1C85C648FD5D29
            7A46113DCA05D306D9F1C4A6808CB12E5A662803A449C04E72A55466E8E8E088
            43078EC1C9E9D1C4ABA501867C5C31B93929BB6EFD67DACFDEED973069CC1F48
            4E2A5CD91C8149B9401516FC3C0435EAF83FF37584BF3D189AFD7B8BF6FE1401
            1812635185CA128FE3338121EF0008FAF23283E182B92978BD9BF6D1DB0B65F9
            CE1517444638A079BBFB521F94870F2D1E8D1EDD9C71E294829B1412D8510B80
            AAD56A8AD39490943E5BF5DB725CBA708E23E581015998305E8DDAB574484A92
            61E32625162CB4838383D47788E8BE7C96DCE2A8395973FC7C422264F6FD3118
            9669FA2C1F6FDF1A474F9DBB5E748355F4F2A40DA1C8362207CF5BE2017E4F4C
            1077EEF5CA7BCACF412CB5F5B4B2B2224D69AE4EAF9F77F1DAAD487AF83BB56D
            8D2DBBF699B6AC53ADD26F09090903F542FD0E1F5DD92CDD854C60BFEF6E22AA
            57398933F16127BA78EBB5F21ED37911C099F901C56951973162C3B93FA11A83
            97D78ABBACDD51A48CF645AD4589B8D2FAAE9A57361AE04C9592AB0934359D21
            4BD7738A8EE3B158EECE47A93B14B9260D32B9B10ADA405B4E40A5FA4D5A598F
            1D390D5757D747DFF8520243BE5DE95A041D3A094540E053EF2333538FAE2FCD
            C2DDE0C29174D23CA9DD20106BB77F5064D771EFA566C80C0F2BBA1CC4220043
            B5D0BE6BD5956A8C9F190CC542EDBDEC2EACC4BC7EF7ED344C9CA07EE4E6CB7E
            6A8069535E6206932AD563B16ADD5A61A93CD4524F00E0B62D4A0C19E6047B7B
            19FA0920ACF250F96646463AE6CEFA129A540D5C5CB2705E98E86651696178AD
            FCC5069F7D6ECFCF400235812A6FCF5A2C8DC5FD0FAB985C4B4EC78479BF3712
            F68E0E47AFDCBAFBE4A54825288F9C45E57C54B012FF05474410100E111F7D22
            5E958CBF33D6F052B228E51D31E375AE2C75AAF8A060058107696054BAA3545A
            EF5AFED3D25E4D5BBFA2FD7AEA544C14AF36AD9AABEEDCB97D1F5A9D4DF8BB15
            39A46F6A4843151D3FDCE286F0CCF491CFBC22A256BF4537598B23D3F7E1808B
            F3E11806320EC6D85A48F95B427BA4BEC9EE7FDF670A2E023CB530A329FA477D
            59A86F0B4D46879371DC2A51A6D5B32F92563DBA5E8F0D614C39767F62756E61
            40FD9D89D5572FCBC6E99317E0AE7A44836D942E189258B8B822905A07D8DB3F
            D5EFA31E24A2458DC950142231DB284ECEB6D8FAEF24B8A99EEE980F0BA5DA84
            74682DFE92CFAB08A2CC45008691519168D6A221FFDB0C0C8D3EE7FC9E386E04
            9ECFF9139888B94B11DCA0403DF61F883707A55CF2FEBB1DB17D6B65585A6619
            2E4586264DC3F0EBA6BFF2F65B1653CA37C00D75EAD6C580416F9A98768C1217
            1B8BC50BE72225458F5DDBE251A79E2EA71430D73EBA7673C1F98B96908BB94B
            44C9F419B1BD9B22D0744DE29A03BEBCC2D7121418D4FCC0D193653698522018
            E662B6A6D1FF5DBC9A9968B91C144CCD45F4FB64CE3267210A608F215AAB3371
            703C1AC7C99B5914D45028C88CEC7AF6D2F54DB449ED6A15DB242727EFCA70B5
            9293999B1B503DFE0A437203175E790A4A812160A2E6D5543FFC6070100F8004
            CCD239518E94FBFA30C40B155E5DDD91CBE5480394AB750CA43478A4DE533589
            B136D44298C3D4AA915A97AA6B3B23869AE4E49EB434C85F5D41E48020A4FBDB
            309D1199E3191A2D8E1E392906BEFC237D6AA50D865CA5E2EE81C03D8720B77B
            72709A396503962DDE57A82A959C436633E16BFDC641457619E9D7AE20F4F54E
            C8D69323EB1935C42200C35BC1B7D0B6FDCBD2F512187E548D9BA65BC5A44311
            950E4B755E34E33EC315EDA173B492E8E8E432D35CA7323E22234E51CB70F2DF
            3854A8A8CFD30B65D5B23A42237C99D36A08049D5DD210109088EBD7DCB1F4B7
            0D68D42CDCFC374257E8D5D3110FA22B63D4987166840D34FF0E1FDC27807533
            3C3DB271EC701CF275CD8A53BC7CD912ADDBBAC2D6465848CDDC90F0B2279CC4
            73EEB23F92F310531AB9492EAC6D0F602F30C0DAC666CD8D3BA17D8A6CF08B58
            F29D3DB9809008F288824641C99694791EDFD64BEA6267F091156A4196491A9E
            FDF944AECF24CD8A00C0D6D676DDD55BF77AD5AC52E1939494E4AFE8E6C553A3
            2783D024A0FA488A1CE77B1CB98C23CB3461A4D22139277CD2B17402B0A9BA84
            8866C93F484DE5D37D6D90F08AB744EE2A26376B877D02A40998BB93809838BE
            3FDEE2DECB3CA8F5F33779555BC4B508AC8A135A2B255D93C6A94FD060ED9F7F
            E385562F8907B460428852074312710F94356BA3DC8627271BA9EEF54181604F
            D72297CBF2FDBC4BCF8698F3FDC022BD8CB493C71136A80F03FCB3DE8F670543
            EA8CF77ACFAED2EEC43CCFF0B58595B01A6485E885C22E1A074B2450A6845880
            293D8C7CE554484058DFF2854CFCB12ED1BC27B2D043AAFB8C917236332DB855
            E8EAF5AB05206AB17963557CF76D13EC38F86B1ECDEEA7A5B69839DB1E133FFB
            C22C0D8C28BCBE98F231D4296AD4A9ADC3FAB50928304E257EF64A2B5704DFB6
            E016BCD47A975382A8FDC5D564E9D969E226AE3F8DAF41588677ECEDED6B5CBC
            16FC18E767E9489E199B0B08294AB28C8085FC67A439713376ADFE290E6310F1
            80509F64D5E6702E5EE7826F7BFB3F0510D9AB53523A93D94A8DA8C93CB53F15
            0F3BA1D1450D2E9F9765C6403C49C04A8DE7B38C8CD824C606D7D952163FF580
            4D6EAA62325645641A933A106812F02610F0E6364F3850930ECF3FEF31B8516D
            A9A6B223835D7EFD60293DC74998DF6163ABB046C94DE423D5F8F69BEFF046CF
            BEC8D61560D3A08C8021A45E2A76AFB485EF4F2B0A7DAC93FF06A37F97857988
            19A8FED8DBD7191D5F6F803F961F81362D234FEE1AF91A83E38B3E013761C977
            DC4B45F65089D993DD8C6707C343870F62F09BFDCDF6498BAB91EC95008F9E27
            B65CF87B030B8C781E8CC13C66C776B766C5831410FFF9D7B980806EE549A179
            B9AB0C7391380A636C51ABF228383AA563E09BE731E9EB8392592CB4BF437B02
            316A7867EC39BC0C1E9EE6992D61E116682680AC5DBBF678598C7F966121494D
            4DC5E79F7E2440D1169D3AA663F137C905BB64C531BE5B648BD9F3EC6091A1E7
            F435264CA6A0E54FB7B91431726020F75C26E582DB0A0B434EE04B4C914F8022
            90823443A18A218AFECDFC6CBDCA154D93278350873A6A3663A131815C965839
            E5211F5763CDCEE6B69A35BEF0F72AB1166AFE6319D7205313794AFA4CABE0C0
            93C85698C944004BC49AECA7CC7D75A4350A734E2E068C022011C3CAE72D8D92
            49CCBDBE42832430661F88004A3F318854E74C5C880F0B69A4AAAD1108156048
            E7EDB126048A6B099836ED4BBC35FC3D069A026F7C190143A31029ACE7CCC2B1
            30CD9AB2112B961C30FB8C80B0C90B95B0ECAFF7D88F18763F0EDD5E9A839494
            34332D315D9B89C52B86A143F77A457E0D71DFCC43FCF70B9F7E074500865BB7
            6DC1A8F7DF35FB8C9E1F72B9D0224C91572A2DCD8D30348FADEF6BE0BE3ED47C
            6732F0FCD606D8C2756724CFF379B353F04677ADE9FB84381B54091C8BAF66EF
            C6302ABF23BCB10196CC698CF973A4CEBECB7EDF80162F86983FC3629B81BD9D
            B177BF053E9F3EC394174BB9856BFE5C09BDDE0A07F6C4A36A95479762FE7BCC
            0AFD073971995ED8982A262BCB2A369DCB0989E038E4D3EA70DDFA80ABC3C4A2
            F09600C3E5453EF8452005812185C0ABD08550191B011245581998ACE48F07C6
            DC7D470A382AD70DFF7ECFA4C5D1BEC388E9576860E47B4B69E0CA5DB94C9A9B
            9808CA7BA94CD44A945C14C64F162A38B15F53591E05492852CCFD1A865784DD
            85446E12459A289F0BB182509BC337CB4BA9370F9D1F699A7E62F0744E568879
            DD8F934A29A8E2CBE7E286A4E66ED275E77AB089C0D5E9680C42C524A0894AEF
            ED7786E1934F2763E49871CF151866A7A5C14D9CB3DBF8898FDDB6DBCB44EF1F
            21FD8E7231C5398E9BDC194347E6A5F89FFCE16AFCF6D341D8DA290DDB032FBE
            520D4BFE78A7182E220BE143072175DF6EC8AC9E42432C02305CBB6E353EFE64
            BCB43B9A6F0383906D2DE7001FE5B9125B92E9A9236D5126331508B86D0AE7C6
            6259E23A4853A37961992D67570F29083467EBD5D161C3B60449FB338061F78E
            FD70E0D82F1CC0D06A2C317ECC6BD8BAA9B2D0EE7402D46478ADD32D2C5CB635
            87E881446C7B3FC4024D5AB8C2D3CB05633EFC987DF97B77EDC09EDD3B84066F
            89E3E2990AAC6E784E88F0211FA3F0A800C37E0486C232224D3699884F0CA579
            56F7D4F0FEF52E3348516C815878C43DF95B80618FA21FFC6797FCCC644A403B
            9333411E9A2F6275A3EE77DCACE9E19F5370854CCB2A8EA6A86BFE4701830A99
            99C4FC42397BC9F55D112F80D7E66A325364D10A9A3B58C151B5C3521A071D9B
            0225646EF0D742C30C98778D13AE7D7EB9C3132EA5A1C1CF2706C97B5508A727
            906942B986199E0F75EF23AAFE83D1B017004AAB9B0928C51FF275D0A240F98D
            244401662C5627139DFC8AE1232B73FEA23244ACEE4B6FE093CFA7E2BDD11F3C
            576068148FE9020C7AF72FF0FB54753A6AFA7C006B1B297D8922C4EBF77C041F
            7F97027F73E2C82DBCDDE747369149BCBC9DB1F5DF4F4C0059D472BF4B7BA45F
            BFFAE43F2C0230FCF5F7E598FAC564F65B533376D20689CC83B424263E10F396
            3A3F92BB86166B0AAE243751712D3DB98F2CE2D351A37A4DF8FB97833A558D83
            07F773C99C51D46A19F6ED4A40ED3A995250C41618D1AF0B7E58BA0961A14EE8
            D47600B4699626C593526B36EE580537374D7E978B6E3D5C70E1A225DABCDA5E
            BCDA3118EEDAB95580A825268D5361CFF606C204D7E2DD5127D1BCD5FD3C49DD
            172F59E2F55E2ED06BB311279E5F32F74901A18A9534225D7652C06D4B04A2FA
            07C073E53D7A76A304183E19F57909497E603854FC594A0064ACB220AD892ED2
            32552775A5A33E0869FA9C3DC80D8D9E64B91D7760ED8AAA49285585268236C8
            1E99D4A798C046801427658A4942E6B25EA8D761EF5546B9D957112D8047EB67
            CB5AA8AD58295D0EC5309851CBCFC416EE52D94FAEE00D356822BF0AA5B9A8FE
            09E3265361A32BB1F6286D20634D51B54DAAD78CEE6548DC36F0B2D135F92FB8
            81B09195A0635A30987EA7DA100A9B9054243772136099C026B8F17BF28FD0FD
            31F692A5246DAFD997F0F58285C274189287DDDAECC6975130CCD6E9E035EF5B
            3876CF7FF15EF0E5562C9EBB9D0913060C6B854FA677E76E788F93D07B719832
            6E350EEFBB06B9851CDBFE9DF4C4ED000A2BBA986884B47D11596AF593E52016
            01185203F92F674EE3F96E5CD0D9FDF2C32DC9674829661A83E9990D330E439A
            AFA415BEFA4A3BFCF2FB2AFE8C1A2A8584DC333B868747160EEC8E87AD6D3633
            D1FCB1AC0ED2D32DF0EDBC660C8434A7E9FDC02117F0D91707A050EA0BAC4C39
            7CC40A6F087359A1C840858A95D0A87153FCB9EA373858B4852E3D4000B1CE14
            9CE9D2ED3A162EDD6A96DE1311618136ED5D9096269382443218B0400A4472A0
            35DB908247C14D61BD09302C3365C0B9253F30A404392A1110B3297BBABA8E8B
            1D054F60994BCB9349A17F6ADA4EAB9C42684734E09649E26F0235724F976E8C
            3EDBACB48D6E0EA5E5240BAD4D5DCF85B548C793423BDC11CEFB54D77511FBCC
            40943065E5D4847A7D28ACEFA44A5C7042D5265AAE7CF30C85A6E6B7F0064F3E
            025B9F1F82395D216A60A0592F0A26CCFCED1E9BBF94F2C0CE5ED23AFF8D61F3
            24FC9D8A79EE8EC3E90429026E294506135A7B72049984CC73EAD94CCC37B42A
            5AC666C073CE45ACDEB0092FB46C55F6A3C90509F552F9733DF3213E2C75FDC7
            4327B4E0998BFAA3F31B0D9E78D75F4C58C7C1955E039B61FAFCE2CBB2D0C5C5
            E25EAB268F5C90F2C8B3B2D688715CB47821E62D98CD01BAF8573CA56E714630
            840478E4D7269020F39712F589859D88898D735B9BAE45646CB240341DBEFBEE
            5BCC99F7F5C3A78985F353D08D2A52C43375F1BC17FABCDEDB8CEC7DEA97FBD0
            6BC825733EC3FC44E81C93273860C56FD61C3526F3DC42AE8452D7190EF652D6
            874E27E67E8625525315C2E239818F3E3F6202442ACD6BD8CC0D8989D4C25746
            EAA70DF7B87C843C3760985B04303A0A24FF5200D82862BAA530B95934D914A0
            9099052B08045983244D3245C784AB34E81435A35591E9CE6D2D993C9200CE7F
            E14D6984C5E7F7C75565FF1F91B5D22422DF21D177D1042A888495790C97DF81
            BAB60BF72821AD957C34C9428B4C6C9E8BFA5EEC9FCE8BBAE491364981144AAE
            765F7B9F3542CA937AF8EED8DE92EA4389AA2899F8DB726313F94542D3E0B334
            18A11F5683F53D35DCFE0AC1F1D3E7E1E5F968ADA74C83212D5C4A6BF8AFDD08
            65F59CEA8433276EE3EB29FF60E12F43E0E3E7FAD4BB3F7DFC36DEEEBB04E7EE
            CE7EEA7D1446520FEC4358FF9E903F863423F7753F13180A3419397238B66EDB
            CCD54B441A620443FF6FAE23B1A587989F6E6C0599C83EE8792172E28B094C3A
            4C9A628A3A057149694C0E7C44CC814143FAB1264E26A745B28442D6CA6C6C58
            97886A3574D067CAD1BCC170C4C5DAC0D72F05CB56AE4785AAF1791B42157CD9
            02E41CB1659B920151962D34459907AE5D3FC61A667292D0721FD863D386AA08
            BEA9C2EFEBD7E568874AA0433B57B1AD95D6D3D3BD666AAAC6CF422EA74A9340
            01EA3E626EBFA0D168B836D59859F05C82619572FEB8713F9440B1BF30697F4B
            ABE4208FED48C9C9564FC601686C144FA92BF735DC10C75A989E64561270E9ED
            2C589324265D324329AD25C3CF06319D7CA12332D7C7E5687139DE5DFE6724A5
            E208B1BD990C8F35F799A68B72A01ECE23A4C9992ACCEDB8AE7EF09F770D31DD
            FDB9B1D4C37787C1F08F7BB8FF4155A925E8C322EE83CFB23B4C204B69367EC2
            6CD8BFFF08D7283FF2C6976530345CBCDCD101015BF7C0D200EC11618902049D
            8B64EF5962617B109E00DF724F0FAA8591A43F7F47F4E44F0ADD7FFA59F90CA7
            4DFF1CCB96FFCC262107D61432F619128D5CA2B02A0A22123606F0909A89A64D
            9A63EDC64D0C8677EFDEC1ABED5F4656A68EFB2D93956477218169BD940210B7
            6D4A40F96A7A7C3FBB094E9DF0C3F2BFFE7EBC36683A28A4CE7702341393E468
            20805A27741D773707F4ECEA81711F9D82C24A2F9141D0F323F491571BBE891D
            FB7F15A069B80EF17876EBE482CB576D239D9C1CFCCE5EBA9EC71C9AF4E1875E
            5B776C1E2E407140464646A5E7120C4972E51DBE236EC88FE410A6BCBDA456EE
            8F07A9828E484C19BA2C28E23238FFCF5A9809D986FC240245CA4DD2061AAA22
            0AD3171952823625A8860FAF281D434C164A5590FC8795CD7C3326CEB5157798
            068C1244432656CBF738748E7E8B6F72BD65BE745F1464115A69FC6B3E62650F
            437DBF6AD8F0F7E63C4DE3F3DC86320F86D2BDB7747747E0FEA3AC293EAF123D
            79A2C472F3B8C65245E0337CF020028D9BD587A58525742A25C2895B53F68840
            A2E173B2A0080C2DE516D8BC713BAA55ABCEC74C484C40E3A6F5A0CFC86430A4
            4A28D220B9078F5CC67EC3154B93D0B04116CF2185E23189E70AC34B00E0B913
            0A6CDAAA64BF6178849C196DEC1DB271FE443C9A377C07F6F6E9B0B5CBC4EB3D
            AE71995FBAD602C1B75D317BD1CE1CCD50E84563463BE09F4D8E97542AA7BA67
            2E5E353B8177860CC29215BF196E6F36027D3D9A093C299325798542E8725E9E
            B81F194580F8235D1FAD62A4C55186390DF813F710C92D76965009B395FA2750
            BB4FAA0DA6A8AFCC704BB9028E2A5E6C2DA0B791FEE64E583506418828817A1C
            134761B621FD85344F6FA1B569AA8A73EDE06BAECD664949D2542645CEEE8891
            95C48A9ACF44525A20F0F38B88EDE207752DA79CE31A02470AF17B4A28A5BA66
            8BE31158307F11FAF6E9FF587AABE7020CF95AB3B97580FF5FFF0830292652D5
            1290F037FB4373F8E0A3EF671151785DBB7259004867A469346C45C58BE72493
            8289C242C936A6A619DD49C48E9498C10BB72E568D21438662E657734C8DC4B4
            5A2D133FE833322430ECE9CFBFF3F84BAABC225F36F9EDBE98A246EF1E5AD83B
            659BA7C0D071C4B02546CB101C6C899DBB05F8FDABC0D9730ACA44625A2EE31A
            4153B671C34CACDB94881F6637C6FC592D180489499BBED3A45AE1EBF9BB30E4
            9DB33926B87814376EB0C688D1AAFD952B7AB73974FC548113DFA85855F40E40
            9A5C3CABE129A53D2DCCC7AE301BD5A801A4C47909408CA40BFA437CD4976F9E
            00037202C70A73D6447AFA24227E4F7E44022C6E084F6D1589122B4BF20372D9
            9E5E6AA9C8410B0B39B214324E9CA6F418EA2E96D2D04D225438130FB7AD1188
            109A21F749315C9D65B2587117DD40CC1BFE4CFF9FBB67832DF1C509F35A5BCE
            0E0F2878929F0923CEC1F9403407596801200D90124BE529999C5A43B985A4E5
            6665E91118108443D4C4EA118DA04C37FE79014312F16012E597FF5F9B4AFB4C
            9E5A288F32A4735B64DE0F79C446CF0E8624349E376F5E47DBD75EE1794163CA
            F35B21559F505928B9831431197C6FE599D9D00B3378F0A0B73063FA4CB38E8A
            D460AA569DAAD0E506439DD4A54BB53114F65792A4E7437C440C339F7D928A1E
            030C6D45C51C4F8D97E193CF1CB077BF156B7EC65DE717644FCF9061E58A24B4
            692335B9DFBDA322C68CE880B4340503C5E0A1E7F0F98C7DE63F1260B87F9F12
            FD067AFD3DA07FE79E73BF5D5C8C7D198A579EC8762F2790FDBE64327F2FDE72
            335C02AD2C014E492D54480BB293885529A5A5209FA2C14CB68C4D6702051761
            26D37B9A2C641A53B63D75C0CBF0B04696A31804013A5671E9BCDA113052B72E
            328789408193AF2D08909DB8E113990F5C314351E4F49C9225BB2BC9DC9721EC
            BD4A9CEA6312A1F5792F09E63CC78882C010864E653F0633A90369C5E43B24B3
            86BB9ED12417BF57B9A9F0DE88D1A85AB51A771DA37A4F2278B5B3B787B39313
            F78430BB0DCF1318424AB971EAD9079EB3E697F6A93CB5E885C919D2BE35F471
            B1F9A34111812109055308C0BE9EF325F6ECD98D1B37AE4B49D4E2730BA13970
            1051A866C42EEDE5E585A16F0DC7A85163F36420A8D56AD46B5893CD64CAA888
            EDEE97E39E127F9C29134298CC1C5811FBA414172FAF2CD4AA99C900B9739712
            D6D6D930A52A1AB452A3A24142DFBDF1BA16AFB64E47EB9733A429672DB4C948
            F10CEA65484AB2819D5D3A3C8252F332E028A8AFB32DA6CF74FF213C2AE4BDD2
            1EE367912702C3406F0FDC7B20253E07F9798E15136481993968B8C9E9FE7639
            4D621E123209287139772A0135DD8E782B48CA0B2CEC19D1E2A8CF82CBBE68D6
            0A69E433FC6CA10C4945D8A82A629FB9FC436245F65C718783350F4654CAA933
            A6DAE80B89ACDD858FA99CBF996CD84EF9400BB72DE11C19946516EC9761E660
            48C122E3E4BF712324CF247FDEC0906FB978705DDF1E01D5A429A57D2A4F2D19
            778271BFCB6BC8CEC827CA508460985B285D253E3E0EEB37FC255E7FE3F2954B
            3CE64141E531522CA03DDEE8C94D99F293989868346FD9187A6D26F303985565
            1984E6A3FBE670D85E4B36F78D9B5D9B747D994259D153CBDC7B6A533595AB4B
            36CE5E88CD09BCC88812AC93D00C2B88F3CA869B4A8375FFAC8687B73A4FBEA2
            31B52633D371FCD55B77E795DAC016813C5554877A3CDC0D8B42937AB55F484C
            4AF8222323A3756E4E34F6F7E502C9DCE43694709B65F890B44A750D67C475F6
            31F9F91E2B16124903B15A9399CA9A99185C1BA16586BD5F05AEBB1FF08A1749
            7C6AB9E60CE522FA7F7383CB82D8AC379C1F519653243A644AADBC8410A61FCB
            389F92566062C2B6506732672269AF999ED6C870CB695F4AE63C15D5BB1C8CE6
            12C6EEAD3B3171C3C33EC4E7110CF9FA84B643552ACE03DF2CED53796AA172BD
            F06183D9BF677E71C50386249C5642CE396156A627A9A1D3EB60E7EACC5ADEA3
            72216FDF0E46BB0E6D84999F8987B93E4D42BE6B613D51FD33CD53B2CAE462BF
            3C473DA5C289745F6BE89C95B0BB9CC8955FC6279F1EDB16CD33B19AD870080C
            C5E7A78EFBA277F73E02E0A4B9477E435BDB4CEC3EB4023EBEC966873E775E81
            377A3BC1CBD3B7C3B13317B697F6D83E8B1449887B48DFDEEE57AE5D79539B96
            D6480C72650B0B8B72022095E26F9642A148D66AB557ECECEC2F3BD8DB1F4848
            4C18919C9CDC8E0694C85A8942EB49B4417B31986E5B1F30E8505D724A731507
            3832857649DA9D65643AFCBFBD8ED88EBE4869EC6666AE53EA0BF9FFA8C2854C
            7ACE014B964AA5EE4FA86E4AA67EF80ED9DC4DE5DC4436432ADA73BE18E73D1A
            565BD3E4240692C83478FE11C2D53B96B15AFCF6ED72BCFC729BBCBB7D4EC190
            2F53A381EF9F7FC3AEE58BA57D2A4F2D496BFFE428B3190B753182A1B4FB6CD6
            12732F8C34F634E6B2022A65CE9E3D839E7DBA8B8745272C9ECA4C69F7301812
            4FA8F7D23BAC5C90F9AFF5B341423B6F09380D8A09E5D512C51C558F31718900
            4A4E61CB9061C4BB1A4C9EA29622C462F7B33F6F097D961CEF8C3CC5B5CD2B57
            D4C5D21F1B60C2A423183CEC6CAE96BBC0D429F658FEAB0DEAD7AFEFBB71EBCE
            88D21ED767916706C38EAFB6C6D6DDFB0AB56DADAA151608201C4B3733B59613
            B3573F36E8224C5CAA4AA1D5CCFE72122CC5C027B6F6E2A4568A32535A0CF1A7
            C50B60E4DECA42EC2E25C27D4318D4759C11DBCD2FC7AC105AA5E79F2152BACD
            4843673CF155B9B9D71031ACA2C4B8F1D0DD21966BE743D14812FB2662082680
            D5E702408ED6C9617B3E91C196A2D31465A70958E1581ACE5FBC91EFCAFF3C83
            A151FCFEF80B360D1B97F6693CB5C47CF505E2BF5F04B991CFAF287D86960A62
            01455CF8031C3E7208A7CF9C426868289BCB5473AC13F625B950C8A7AC727347
            E5CA55D0A6F52B68D2AA25BB71B20D5D97F6ECDD85E1EF0EE5AAA97B936AE4F4
            EC311E8752BB282B225ACB0C37092F8985DAD7C6ACC7B8CC90FEA588D2F23310
            D3D5978B0FA8293CF9187FFC2E19DDDFD09A186F3EFFB00D579A7896579B7C8C
            37CFAAB07A556D4CF96A5F4EB45A6CDBB5830BAEDFB0C7CDBBA1653277F049A4
            D82FC0C7C30911D149A85BA3F2C4F8F8F899E44F4B0FB04564BFC0479F9558D1
            1442E5A7768944D945A630711DC674F7E3E277E3407BACBB0FEB7BA9881C523E
            278A9C2DD18FD304A1BA68FA8E12BBD9CF68486ECDB2B144C4D0F24C3CE1F5EB
            3D2453BF936AB912A5C5A471FC3716AE7B23A566F3B59CCD834264E68BD55619
            9506D5E6089E5C26135C9C9E6AFE65FC36F767BCD6B18B69629B5DE27F000C29
            341974E4142CBD0AD7F7B82CCA831143A1DEBB5B7A5304E5780472494949D8B7
            7F2F7E5CB218972E5D84C2CA8AC91664143451988F27B96FB846393B0BE91919
            DC5D71EEECF968F9C28B4CABB54668B0C4824326AF1989884108E42890985ECE
            0E916F96CFC3BB49F3DDFBB77B4C0841693D91FD0391E16D2DF5F43911C7C40F
            C70EC5A312517519881FBABDD41FE7CE78C3D333155DBA5F47A76ED7E1EF9F84
            F5EBAAE36DA2093382A1D8B662800A5656F647AF05DF2BD3FD4D0A232582E6CD
            1BD67D27E241C48F34A188BE3FAAF723F811A90BDDAD140E8C281F68D8FF97F8
            823BD72D9B516F191255FDBFBDC9266B0415C5E7FA8E9A48790AD3967A93509D
            729C309B35359D38626C7B3325A7C4AEA53B547F85F264A3BA63E3EFC91F499C
            89C4459756D9C18C4ACC323E83CFCF3A44CD51BC8457BDD8F7C95AA3F8ADEBEE
            28D408B5C6FE83470B4CBEFE4F80A1184F0B5757046CDB0B0B37D5B3EFAF342E
            215D8BE0EA15B81EFB59C1F0CFD5ABF8752BF82652E2936061A7849EB2220408
            5A878A057B5010325D73987A288B81EAFBA91B23910A930B88FCD619593AF8F8
            F8A09358488956EBE7A54B98E424AA8FF973C3590ED4F9D1512116F60A79B446
            5AD0BD7FB9CD693C44161BD52FC05438E0254094CA64699D0EA306F546E34500
            5CA38AEF222EC68EAB4FA8CC984C6527272D86BE7316233F382E8126A5ED0820
            F52BEF8EA040D7E9E72E5F7F7EA36AC6F128AE1D776EF70A36EFDC8326F56BBF
            FCE041C43ED208C94F114EBD8A6D1EE21127E66AA23817AB17AD58D42F961A4C
            690408111B35D3853D9CD82D237AADBBAC15521328CADDCACFB14C3D926D6E26
            73E4996A97135BB943E7690DB7CDE1703C1687FBE3AB7234DAEA8116D104D234
            71C53EA9350001309BF20690A548B2E3C938E63024461E62CFA184DAEC5C3D2B
            681BCF1F6EE0A3B113F0FEA8B105DFF8FF02189288075AE1EB87801DFB8BA7B1
            7B09C8CD0A3E905134F729C1904CE205F36761E14229ED88DC37D4722285DC36
            62F85C3745F0A2FC40CC53D6DCF299A7C63C5D260D399FC856110559F442FBA6
            EE92D47A82F8024D622987EBD6709E8FD17D02F859316BC696910DCF3521CC09
            40CF12758D34F9472DA4FE3DB47DAD9A3A6CDE9260C6449394688D2D9BAA60D7
            F68A4C0B1613638B348D8209647BF6BD6C3867E0F02189F1A65EFD2ACD77ED3B
            5C26AB4A9E448A55335CF1D312DBE933A6C6512F64D2F0C8016CD66F848E2E80
            CEF1682C77A1A37C424A80A63E2899B4A2E63287CD44688FEEEBA43E0BEABACE
            ACF53DAA569AC0957813AD62B55CC542798C147CA1CE78A46D120905D71F7F58
            15728DD03617DD44525315125FF4904E539C3BB522B5A21556FC9634554A1DA2
            6A18B3F3A3046D01E6AAD349B845E934598F4EC1F94F802189B84E658D9AF0FF
            7B4BDE08ED7320CF0A8624945778E6CC29B46FD71AF2063E88EEE62B819CD0D6
            C88A703A1405B50034CA874DABE694034CC62A2AA31F9A812C8B53B9C8174E5D
            19693FB95970482820526ED655AE00E3B613B97364B3C0E4211461264D900A11
            B28CCDDD650616EAC5B7F8F91A32300D53A73E943263A0E022D1A815484956E2
            D2454F3695AB548B95BE10537FE1423BCC99E7A07372B2F1B871EB6EC2333404
            2913522C60D8BB7B17B4EBD0C162D6CC2F2FA7A5A55525AD90564AD2CA8C6CD1
            043A445DE4BA2B9269CFA9D708810F3B7FF35B3D0D42DBBA6F0C87EDF524A10D
            DA32737581B955A61FC9D8996D159606A723319C634595291460B1BB9284F011
            95B8FE980AEB1D8FC772650AD1797191BD3089895D9BB43FD252337D0A383F3A
            446206BC16DDC0CADF57A3D54BAD9F5F0AAFA7100A123908B3CE7BF192D23E95
            2796A20043122A577C7FF4706CDEB88117599A570474DCAF47CC216A49CBD15C
            4A07B390726AC93D430421B4B852750A4580C9EC8521324CB9ADA42966D9C891
            F0AA37D4E4EAA1EA29B12FCA70486EA192D8710C89D81451F65C15C2955DE40F
            A7741C6E9D6B9CAF86059BDA8FD273B3707E32BA762E04B38391AC212BE77DFF
            01CE3876CC2654E5E65AEDD4C52BA98FDF49D99662D30CEB56AFD23D21317E3D
            DD409D9B95D4398B06D84AD2049D0E47735D260D6E7C5BEFBCA6730142D45C14
            ACA066F2E47B7C2C10E677D162E250F50BF52FA173A2D553E720698C14AC21FF
            0BF9FF28419CAA5AA2DFF07FECF991239CA27A0D836AE0EF75FF080C7BF4F6FF
            353064C9CE8243A76EF05AB0B8B4CFE489A4A8C090E4CCD9D3E8D1AB1BCF0776
            DFE42A3E208D8FFC84F234A1F94568D81D433C9AC6925318FA8BA709C5808276
            C6BA7BEA8FE2F5FB3D4EFD22B70DF167924F9B8032E9454F24BCEC216996545C
            20B6B3BE93C2F3E6C1D05C4145839032419D22F95CC4BE776F8B47C58AB9889A
            2D91A319E67AB4B289BC5596A301A8536578A59D2B62E3AC8E77EBF6FA0BF3BE
            FDEE79570C8B0F0CAB942F17A2D5A695A3A6EDE1EF55E63E1064AEBA08739534
            28751D17E62ACC306A5A8F12E2214CCA80B7186802A8E486C26468E7F5744DAA
            D83F23698A44B1EEFB43309B22C4AF6891A6438A38AFB84EBE9C764040CB13ED
            71C71100EFBA391CCEE71271F8F009F8F8F8FE77881A9E5028295BF5E104B8BE
            FF61699F4AA1A528C150A6B442F326F5101E1A8A4C3F3BB65CF2B8708C04C9B9
            68EDA8C789B5D0E6ACEFA8D9BF4DDA1CCD438DA19E9E5C34DEBF493475116F95
            E76DA9670AA58E916FDBA8F1919241850051BD0372344CA308B074D921356622
            B1B212D77E3DC6141D8E8EB2C37BC3BA422D4CE3D4542BC34B81E8187B9CBBFC
            1D022B249834C37B211668D3CE0536368EBF5CB9796758698F615148B180618B
            C6F57B8486DE5F470B09B1C5A8EB39C3636D286CC48A453D90939ABB9B27BB3E
            E60CA94A841ACB104943E4C0202999F4298512A81DCEC743793F4D2285A09C2E
            432D359918C9CD556C965053286E3D5008A1BC45AF5577F1DBCAD56849FD920B
            D1BFF7BF0A862C54ABFDC914B8BCF576699F49A1A448C1D0D2127B766D47FF81
            7D606367CBA92C1CDC2BA458A4E9998793D26548C80CA63ECADC66F7B644344C
            E96244B4ECBAEB81546FEFAAE4C023055F8827206C4CE51C1FA1E9C4A89BA330
            ADD786704092A2C8AFB5CFC0CFCB93A44651E2FBB3277DD0AB7BEF3C34603A9D
            1CB71E2CC861AA11B76AE56F3698F8A9BD58F83DFB9C3A7F794D698F61514891
            83619F6E5DAC4E9F3B7D253323B3223760EA17C0C1096D803DFB36F48E968FE6
            4134506351B48A0224946C4D11DA24015294EBC766716188658D7EC99B294CAC
            492B2EED9C226B440641CC379472437E1A3255C86CCE36ACD4F1ED7C9056DE8E
            9BCCB3E4D7ED4F983356115AF641E24C04468E1E83CF274F7BAC4668BACCFF32
            189288FBE0F5CD77EC472CEB5294604842C194A64DEB2332EA01D2C5829A5FFE
            5FC13F066B70B69792B8DD04A5CF10233C3D3B944246257736C1291C60A4B42E
            A2AC5386A5F1E7E42324170F93913C94134BBC9C946663291E2CAA82D1688065
            3F27A123F90B09E4E452195E1F01862FB5BECBAFC4441B6CF9A732A6CDDC8B26
            CDC3722C24A123B46F4DC9D656983973A65DBFC16F690A7771655B8A1C0C6B57
            AB58332525E562963E4BA613C0A748D671BB510A90C8728120F93FB8FC8DCC05
            F2A3182887A8448858AAA99A838815C8B94CAB2B0A5BBB6CB82A9BBB6A2E8BCB
            125A9FBA810B52AB3A32818494D09D13CE7614C77139148584973C7975CD74B7
            E62A17F2E3907F4753D509EA1A4E7C1EAC411A5220A4A4D558640900EDD2A51B
            16FDF873A1A8BB4CA7F85F074312F1D071954AE3A6A57D268F94A20643926F17
            7F83F90BE6402E3090FAFD507968A1AD21A3506A98D012C9A2A2394701992C6B
            39CACDBBCE3EC64C576A6BEB0FDF1F83D9D748F5F8E9F95833A46DFA2EBA816C
            6109BDF4526B1C3F7E5498C219B87F3B169696B90BF8C531EE3BA247E7BE1837
            F15FD4AC1D85BFD6D4C0675F1F306B339AAA91C13FC81D5E5E3677AF0587949F
            F4D1787C35A7703DB7CBB2143918D6AA5A61755252526F69E706F696FC342B01
            00E417A1F03EF54531EBB667E8A9C22D3FEBBB3DD92422202473E2CF10AE7D8E
            E9EA27F59CC85D4247222613B507A5D2BD283189A80D01F12192A648A90894B1
            4F798FA459525085AE819CD1A4ED92A64AE79CA1D7A1C71BBD306FCE37B0B028
            5C0028E7F2FF07C090AED3C606011BB64151FEE96B7A8B5B8A030C694CA977C9
            9EBDBB394F907C7F319D0DE9364F329FC93C16568DEA9F700E7E508B5CD21609
            24090C29C586F834D97D44E678EE7C5C62A711160FB1C0670BF0AB5AAD1AA67D
            3E03FD07F54183FAE958B73AD13CCD8D333D800CAD05162D688AB57FD6C2B809
            FFA2D7B04B39D45D62BBB56BAD31669C830043D799E7AFDC9854DAE3575452E4
            60F8D3A285AE6BD7ADAB1B191531383535F51531893CC4EB8992CF0878A27BF8
            33BF21E71AE6A6BD798C303B8D583953AB3B22B647B9FCCD1331C1A8E194DBEE
            48848DAAC4EC32AE7BA2E0702A8EC12EDDDB1AD17D0225003744ABC98F687725
            91CD0D6A7445932E233303A3478EC1C48F3F7DF21BFF3F02867CAD0A0502F71E
            29B3657BC501867CDD62EC7AF6EA86E3278EC1426EC15A1D053C28258CE73549
            615DE7627EB096784F8D8821E5E1B92E94AD280A50460D2A2F8031A7AE9E0092
            940B9703514C51A7139756A14245ECDEB11F3F2EF90EB3E7CEC2A48F357877B8
            84707ABD1CB7835D519972088D8F8BF8CDC5335E183AA83BE62CD8C166B37422
            C03B231CB173B7353C3D3DEA9D3C77F97C698F5F51499182E1A4711FE0AB790B
            4CEFFBF57CC3EEDAD5CBD4A1A96B8A3A65786666A6BFE94B031F2169819CB692
            6DACD3CC36557450C50A99AD092F7A209D5866321EED772133DCE797DBD05492
            2A57F29D6862DF2E0204898A8B6A93C98748E7E0F9E73D6E4B4AE04849D794F3
            48C9D839DC87921F93EA918925C4E17C02B711D58BD9D3F6D57658FADBAAFF37
            930B12EAA5E2ED8BA083C79EAC8F71094971812149A62E13CB57FC822FA64DE1
            D23A39A59A392AC41C75E43CD70C6313B2AC8792B0F3AB52110B336563D0DCE5
            D23B31DF899C4453C99ED9B2C9BAA10021B1B053FA995C2CD899C27A79A5CDAB
            58FCED8FB0777040F98A7ED068B271F36A2C1C1DA4B9AD4955E08BC9AD31EBFB
            9D66E630E512AA13AD70F182179AB7BCCFE7442C371DBBBAE0F61D45BC9B9BAA
            5AFB57DB46CF98BBE071B7E1B990129999ED5E6AE973EBF6AD7B7ABDDEB47CA5
            09C0221A7ECA9982B1785D980144B165773D9919AD39A0912DF10352FA40FCAB
            5E79D3058C42C40A27E238772B9AB80CB579D39E6875255F1F55BB501B0062C8
            E67D8989E5F7CD0DAE750E99560B960FB4F0FBFE26B70EA5C04DBEA02A7E23D3
            E8B9FE597E37098D9A34C11FBFAF818D4DE122D0FF536048426565952AA3DCC6
            ED902995CFBEBF2294E2044312D28C6F5EBB8A299F4FC2F90BE7909292C28D9F
            2C688A12C0084B24C3D3869BAF53291FF9FDA444E91C80A4FA62627827B205D2
            F6E83BE210252B4A9E9DC3A5A9974934610A85257C7CFCD0AE6D7B4C9DFA25B2
            743AF41BD00B070EFE8B4F3ED662CCF85413F0512BD0395FB76093D859A535F4
            67412E12529834C6E464199ABEE026AC22C5A5E090883AB2DCC987CFB9143B18
            5243E9CA817E31C2A474E3030A4D8BDA79524497573BBAC90640627F87C1C768
            7F31096E5BC33945802608812331CD44F72C27FDF6E10B11BFA1F69FE1EF54E2
            EDF3883816D51B2BEF6BD847C86D41730D76D0D4CBCC281232B526335E13A852
            F7BCF8F63E486AE95E7034509C3BF57976122649BDA68DB161CBF6FF5E0F94A2
            12F100DB346D0EBFDFCB5626467183218934C659484C4CC0966D5BB078F137B8
            7BEF0E944A6BA6F27ADCA398999961CA54A07DD1BF86BD359CBBE79D3D77865D
            36D4ABBB99B8BFF4AA56B53A1C1CA8ED8403A77A1108777FA333DC5CB370F840
            3C6C6D8C757DC0D54B1EE8D26E005CDD34E29586CE5DAFA3F7804B50F96B24C0
            344E7DB1EDD9D30A74ECE62C8056F5F9D94BD7A695F6D815A5143B18D6A95EE9
            8DC4C4C4BF8C4723325762E020A72F47648FC771D4967A1853EF61932F4506AE
            072610A4569FB41A92D6484225460FD705733589784F91EB873547329F29F580
            4A94A88784A6AAA35963284A4D20F39AC170720D29F547FCDBFE4C3C772D4B68
            EB8DC416AA82FD3BE29CED4FC5C37EC35D8C786724A64CFEE27F36E9FA714274
            FB8E3D7AC36BEEB7A57D2A26290930CC2DDCB2542CFE61B7EF62FF81BD387DFA
            24EEDCB9C314FFC679437F6362631840C9BC9D396B9EB03AA47C45A2087BF7ED
            37F1CF86AD68D1FA65F39D1370E9F466A5A0321B2B0CE9D71BFBF6EFC3AB6D32
            B17449528EB7429CCA9FCB6A63E2B8B6B0B6D1719549668605B45A4B04954FC0
            AFABFF4685CAF1267AAF11C39CB0759B35DE7E7388CB94AF662596F6D815A514
            3B1856AF14B83C35357508696E547142B459045614B0A03AE0E4262AA4D47566
            5E36329BF97B83507A0D31CA84BD5759F2D7897DF8FE708B7D8AE102208D8046
            BE46BF6F6FE0FEF86A794F4098CF5EBFDEE5C4EDF0E115CC1B4219BEA7DECDC4
            5D487E182293C8AD59BA1C8CE1227B2A19A404D80273240DFD54DC3684E2EF4D
            5BD0A041A3FF1DA28627147A50DDC68C835B19A952296930CC4FC8E4D567E94D
            0B2EF11F52EF13EAC35CA97215EC15E6AD510834AB550CC4FA75FFA0D58B2F3F
            769E11A7629BB62F0AD3D9160BE6A6A0578F5C8E4181AF9FBDFF2ADC8446F8EF
            117F9C3FEB0D0B7916E416D9D06814387FED3BB888EFE8BCD46A392A5653896D
            6D8F5CBD75AF65698F5B514BB1836195F2FE67B55A6D3D8A701158E9ED2DA440
            C7CFB739F525AE93047EEEEBC36027C024BA973F34B5A4DE10046294A44DB954
            46E0A3941606CE6A4ECC3C43204989CF944F6846F34FFE66B50E9E6BEE731D66
            E4A040EECB9CC7DF28DE526F142276A51E277972B58499EE742006AEBB22D867
            99D4D2A3E0A46FDA5668BBAEFFC6E1DC994B7074742AF8C6FF0F832149962615
            9E5FCE81F3E0B74AFB54CA04183E2CA43D4E9BFA29BEFF61316AD5AE8DDDFB8F
            98BE8B8989116018C035F02F3E060CE9BCC95778F4D851906279F14C9C30CD73
            CD5F31D55F6FDD0FCB57AE87938F16A931563875DC0FA74EF8E2FC392FACF8E3
            6F5345CA2FCB6DF1C50C7BB8BA3AF7BB70F5E69FA53054C57BCF8BFB006205BB
            AED1A456219F5DC827D519D42820E2B7F81657A798780805BEF2482A00006F97
            4944415420949B7D958192822BA49D91E678FFA3EA124BF54367EDBFE0062763
            531DA6FFDCEB087BBFB219B9251D837A9BD071C34656923811F3112A7B22700D
            1D578DFB2B53A63FB5643413CA4914804B6D4DE3DAFB20B9995B5E7E45E3A965
            92F67A13DDDB74C237F31717D8DBE27F1D0C4988E9A6DCDA8DB06ED4A454CFA3
            4C82A118F7EBD7AEE285179BC0D9D915C121E1A6EFEEDDBD83BA35AB62EBE61D
            68D1BCE5235D3271717178A94D0BB14D0AF6EC4880B757DEC06256963447E5F2
            7C6AA80D1FD1FADFA7BF334E9DB64AF5F6F6AD7EECF4B9FB2572234A508A1D0C
            2B05FA1EC9C8C868A173CD61AE61A012E66E725377EEB76C22464DCCE43EB0D6
            77D5FC6FE2708BEBE89DAF694AF45FEE7F87729F664D457B24B532307728E5B0
            23468F6D114CC01A3938A8605E44019E94686D91AC43B400E68019979152CF35
            7F12082A91BA9CC8849989AD3C99DDBAA01C46DBEBC970FFE31E8E9C38053F3F
            FF7C27EBFF83A124A4D5F85314BE59E9B1C697453024215F5FADAA159190108F
            13672FC2D7D78F3FFFF1BB459834F123C4C7AA1F6D220B537BE3FA751836FC5D
            2C9CAF457F6A2E6FC042EA7CB762697D346C1C817A0D23D85CE6B2BC02627FD4
            80BE7A1D15654B1CB97E3BE43F6722F3FD2AEE03D4A81CB446AD56F722728507
            43256A7EF2F191994CA9004473C4656E86B321CD90885809EC1E0C2E9FB74953
            2E09987985DB92DE9B5C53225A106048BC7194504DA90ADC0AA0202C9149E0EB
            BFF086D03EAB42A6CD82EF9260D62089FDBAA01C45454C3A7C7E0A66B39A6996
            F213612E7BCEBC88F7060CC794695F213B3DEF0CFB7F30CC752F84491874F004
            2C54A5D33AA0CC82A100B3F1E3C760EDDA3FF1D3B25FD1FEB58EFCF917933FC5
            D9D3A7F0CFF65D8FCC5C20307DA979135CB8781709EA989C2A1231A5267ED00E
            E9E91668DA3C14ED3ADCC2C71FB447AB97EFA2FFE00B79E7BE129836D91E4B96
            DAA0499386F5376CD97EAE24C7A7C4EE77711F4080E1040186B3283F904C59A3
            9627D55CAA397F304E98A6C4204314E5AAADE1DC27822A508CC9D8F99EB8D0CA
            CA09F398FA93509F12CAB8A7E8B3323495E9C128AA5C602F66032D3AB101534F
            596A3265772D19AA7FC23817318DFAB4F40DC8FFD844B914A9957C9EC4A9D83F
            C0940F6912715C57A199BA5F4BC3F5DBF791ADFD7F307CA408EDC6C2D905E536
            ED80A58F6F891FBEAC8221C98E9DDBF0DEA877E0EAEA863317AFF279540CF0C5
            179F4FC78081431E49207CE6EC1974ECD416AE2A1B5CBB950B0CC563F5D9F857
            3063FE1E9C3CEC8F31233A2036D696CDE4454BB6A06DC7E09CA64F42AEDFB4C4
            ABED5D606F6F734CCCE7E62F34AE8F2327CF96F43015BB142B184EFBF453ACDF
            B8EE958484845DF2F42C19935D5270423CF8A46179FF7AC7403229E51852B084
            802CC140B7FF28B1BF92C47D4CC80CA6723ACA0924F0A3E83435792AB0213C31
            78C40AEDEE973B3CF9EF7F588DD93E28A7D1EE7C02944A258459CFC199E487FA
            2E9B843444EA552BF641DAE8838181C8F0B5350BDE38FD1B0BFB7D113879EC2C
            BCBD7DF29EC6FF83611EB10A2A8F729B77426655B249D965190C636363D1EC85
            86D06AB568D1B2252A54A8847F36ACC79E5D0738AFF051F2CE8861024C776060
            7F2DBE9C9D624AB2A6264F9F4F6A8D69B3F7E2ED81DD70E4608098F73A54A898
            808870071CBBB1C44C8B1C39CA115BB72BE1ECECFCFA85ABB73694E80D284129
            76CDF0AF55ABAD264C1C9BAED7E9993D9AF8D78C472650F25E26010A5367B5F5
            464A53374E7A7EDC59935648A938547AE7BE21945967526B3B21CBDAA2401397
            CC57259138AC09815CA347E49B41D0FAD9716359BF199751BF5E030C12ABEDA8
            D1EFC25A6125B4D37252FBD0FC822514AD4ED533F53A550610BF1CF56E36B213
            13183A1E88C4EA3FFEE224D83C3FFF7F30CC2B42CBB1AA5C15E5366E2BD12A95
            9B157C9976AB2C822191C5BE39B00F76EFD9C56420E9E9E9F86DC51F68DBEEB5
            02B5429A4F947ED3A47903282CF5D8BB2B16776F05A1A530838D7D56BAB41D88
            17C5FB5F7EAACF1FCC9CB31B5DDFB88A2EED0662D3E1DF253014DBA56B65285F
            45055B5B45D2AD7BE1CE933F1A871973E797E83D28B17B5D1207A95FABEA8CB8
            B838663320F395FA0B1B7BA11090A8368671BB448AC46A83EC38858535487DFE
            5A99A7308789E937BEB5A7F89B8AD84E7EEC7F941B4094C0959970C47B3E0C75
            DE13C7215E43D24835551CB8D48EEA9E69E5A3608BED89181C3F790E3E410198
            FBD50C7CBBE81B0626621B260A2F2375571EE120CC03389C8963066EEEE6273E
            2330743A1885995FCE42DF3E03F2DEF87CC1908E290D49F8A03ED01C3DF2BF05
            862459D43AA02B3CA67F2D1E76DDB3EFEF5122004EBD631BA2A77C62A292F3F8
            E22B38F51BC85F97093014E31F1E1686864DEAB0D5A27253E13499CB8FF01552
            EFE6662F3442444434BA74CEC0A8776CF1EB2F7531E7DB1D869D4A66F2CA1575
            61619985A00A09D8B9FF574EB81E37BA03162CDF2A81A1588F3EF9C801BFAFB2
            41A50A81ED0E1C3BB9AB442FBE84A544C070FE57D3E53FFCB424322323DD9D82
            25F7275433333FC94F476C30A465516E20010F317B708F132BF34830F57AF562
            FA731974AE0AE8EC15DC468008148CB59C5C2DA99798AB29735E9E99059D9D25
            97D551BB50620F31ED2F228D7D8DAD5F6C835F7E5E61FAFC871FBFC3D4E99361
            6B630B8A8447F52C071D913A1490744D7D6FBD7EBFC3DB46BC59014E4763E17C
            381A6F0F7B0793264ECE7BE3C5C3B775D3398C1BB5CA048697C2E7C3CA4A4A23
            7A30E26DA8776F1327FF64D460FF09217E4B07C7923810B288E5D41891157FBD
            E62F824397EEFCF6E6B507E8D1761E32332430FC7DDD7B68D838A8C46F0701E2
            2061291C3A7C106AB51AD72F0743E5EE5E604ACDE2EF1662EEFCD9C2AC052E9C
            8FC53BC2149E3977175CBD3558F855738C187D829FFC9F7EA0C200A0EF804BB8
            795D05A58D0E964293AC532F929FB9B3E714E8D5CF5968A4D67B6EDE0D7DB5C4
            2FBCA4EF73491DA84EF5CA4313121296CAB30D018ADE01E64737D42453B73CBB
            CB891C1021204C140046952BC4604340445C822E07A321139A9F95D0F28C6AFF
            C357425169E27D6350ED1B00BD00294E85C9558647545CDE4B6EC14EA6C4B6CD
            BB1014543EE7F73656D8F1CF3FF8E4D309888E8A8232DB929B57A53472E57242
            96DCEC2232A9D90E6989D6A11AAEAA21401CD07F106608D32BBF897BEC483086
            0EF889FF9D2DF6B5F3C4670828EFCEEF3562E2878907E0796CBDF9DC8A589402
            76EC835590A4FD9D3C1A8C21AF7FC763478BD5D6BD1FA142A5C7FBB38B438E1C
            398C3EFD7BB0A95CB3462D6CD9B4234F0E2B99D4A78F1DC590B706202D4D8D6D
            9B1210E00FF4EFD5134B96FF0355390D0677ED8165BFAF87854D1636AFAB8ABA
            F51FC0DD23156FF67F43006116BEF97E2BDC541A2424C8D1BAAD0B12132DA8A1
            7D230B0BC5E9C3C74F95F60815AB9408187669D7169B76EE42DD1A55D6C6C7C7
            F5A4414CABE080E8BEE5F2D5B448A3733C150FA743D1923F5108516A2535CB95
            7A916DFA5F8197A68C4C836A7338338010F9A599362A80D167E91D2853F4D8BB
            FB20020383F2052CFA68C2C40FB176DD6AC99F47CC49CE566C3A13612791C19A
            F5C03550AC7BADBAC77C7303FB0FC6744AAFC967DFB76F45E18D8E0B91912199
            83D3E7F7418FFE065668B164478E1D85E4CD1B257F5619A4BEFACF08D1C669B5
            F09AB7108EBDFA993EFEEAD30DF8EDE7030C3A7A7D166E86CD7D62B2EAA2125A
            9CFBF5E88EC3470E71A9DEA26F7F40A78E5D4C7986748E9BC45C19FBE168A4A6
            66331036689889C87007B46EF196B038F47877D40931E754C25CDECE79852D6B
            BE8D7FB6AF6472866C03F30D99CA748D6DDAB922F8B61CDEDE5ED34F9EBB3CA5
            B487A844EE71491DC8D5D11AF1C95AAA48D9919AAA6E4774E8191ED65C85C2B5
            C00F4F320B192743BBEC8B94288B00CE394C6CE901B5D014A12B444F09B9CC90
            82734D1CC7C05423268D853A13AEDB1FC0E2520C7EFC6129BA0AB3E85159FC32
            6B2BDCBD7E035BB66DC68103FBB81D646A520A14D44FC25909BDCA067A019032
            71BC2C9D5E20B716F2C474A6047B73C850CC9A3937DFFDD303D6AAD17424C44B
            2D67832A7A60DBBFE6C4C1DA7367907EF3468E295756843C101A35D2AF5F837A
            C75664A5A64A04040F49569A065681E561D7A6ADF81B54E6E8BB985753A9804D
            A3A650940B307D1CF520112D6B4D119A981CBA4C3DBABED110737F1EFC449C95
            452D69DA34B478A13133D550C6C3D75FCDC1A03787F135CCFE7A06162C9C0342
            B9F97392D1B7BF965D44572E786080D00C535294C8D2CB50BD5634C68C3B8ADA
            75A298B875CB91DF7322C724D6C0AAE536F8748A3D9456CA8B37EF85D509F275
            C7DDF098D21BA31292525137EA54AFB4313131B12BBF11A0173ABAB21405CEF7
            0C654C5A49D526648692A6C8B9856F94937AA814E20AA9EE99FAD752E73BE53D
            0D3C57DF83B5A51556AF5A877A44A8A02F7CCB57D6D2848678F3EA159C3D7B06
            37836F202A321289C9494827EDC2CB8B4BA48469C100486D432B55AC9CFFBE2C
            E558F3DB314CFC7035ACAD15FCD0B5EF52178B560C2D8D617926891CFB1E52B6
            6D31FF506E01D507E3E1F2CEC8D23EBD2792344D06BABE3C0BA1F7A4969AC41C
            73FACA97707054969A6668942D5B3771DE2199CB34BFDE1FFD016EDDBA81ED3B
            B641A793E183F753317E922687A4D5E042FA70D46BD8B9B51297DED1CB4AA1C7
            F4AFF7A05BDF6B4066CEB6DBB62B31F82D273838C850B76EBD0A1BB6ECB853BA
            575C7252A2603875E2444CFDFA6BFE77ED6A15672427277D4A0E5CA2E38A7EDD
            1FE915ECF367B3260D4F6882A421523F63D2F6744E0ACE05A48E798FEB3CE6FF
            ED0DA4D475E5408BF26C0C6AD4A983450BBF47A52A559F0808CD6E1C99CCC657
            6E9FA52178C39E697E9FFDE892292B0BF47AED1B5CBA10CAEFB384B6F84A87DA
            98F5DD40D83B94312DEA3192F0D3F7889EFA19E4F6F60C847E2B56317FE1F324
            37AE46E0E3512B71ED523847F6C957D8A37763CC98D3B3B44F8D85AC9495CB96
            62E2A713606961C93C8732995C9CAB25860F4BC3679FABF32FA9134AFBD5731E
            5830A739F6ECAC002BA51E5782BF85A5B12DA8309AFE5C6E8D49931DC8E4CE72
            5779BC72F2FCE5FDAD9A35C2A163FF6D5FA1E9DE96C6419BD6AF8DE3672FA271
            BD5AEF4447472DA61E290470C94D55486AE1CE7D1D0A3A5B8A1A53B327F20752
            902449FC26F1658FBCD5263229D5C6E7E76036B7B9CA419871ED5FEB80EFBEFD
            B1D02D3D4B426EDF8A46CFCE0B9196962111778A73D309F07F73C44BE8D6AB09
            541E0E65C6654866A35268B176F6CA7C49285843DCBA19AA0F3F86CB885179BE
            D7E9F4D0A46620233D9381A62C08DDEFBBB763F0C72F87B175C359011452D08A
            825A9E5E4E38706AF29377B63308254BAB53D57057B917D99CA3FB3E73D60CFC
            B8E47BB331A858418F85F39351BD9A4E2CD6C8DFA52ECCE05D1B2B61ED1F35B0
            F4F78DFC11F550FE7AB63D167D670B1B9B6CAA76F9F4DCE5EB5FCD9D3B17E3C7
            8F2FD1B1284D29B547ECC5668D71F0D84934A957BB414262FC8EF474AD8AEA8C
            B394161C6D8E6FEFCD49DAACF5E5D30FC2FE5C3CDCFF09E79CBE741F5BF63D32
            2103B1D31053F6B904669AA1DEB2A9A9A96828CCE139B3E7A3669D7ACC965296
            44260026F84624FA765B8C9414AD09F8F40210F502C42DC5F7B22769955A8C62
            65650967573BF8FABB62E8C8D6ACC5E696F46B5771FFF58EA874F54E9EA0CFB2
            EFF761F3DF6710159188E4A434A1D5E8CB04C86751F5132D96E23ED38B8440BB
            4A556FACFA7B249C9C6D9F18C8687BB9A5257AF5EA867BF7EE62FBD6DD5C5257
            5422B354887DFE83E1EF0E357566CC326497B56C91892FA7A720A8AADEBCA789
            51C4E6599932717ED98808B3C0F0F71C71F192A5D88F0CCECE2E43CF5FB9B1AC
            D406A314A554A7E280DE3DB172CD3A2CF97E9162C1BCB91BB4DAB476DC492F5B
            8AF66A6A3A23B9810BB744642EC25C145DF46F1B62875917CA7E44757D17682A
            3AC0F95034ACEF6B902D065C27CB4639FF721835720CFA0E195222CE6F5EA929
            1D86965BFA2BCCF0EC42063F289032E2ADE5B87C319481C2F86096554955A7A3
            C90B15B1F097B7E0E3E7227D28AE3576D697507D92935B79F9FC7D0CEFBB0451
            91490CA66555B2B9AF4816ECECACD1B6432DCCFE7E00B2D30B97F8CD6E131A7B
            71FDB41F4A73193CA037F6ECD929A681022A950A5B37ED8497B74FA1E7C3638F
            29E6D7ADEBD73074F810DCBD7BC7048A04885AAD0C9326A6A24B272D5C5DB204
            A06733081A150BBD7814B6EF5462D418299F532E9767BABAAA3E3A73F1CAC27E
            3D5FC71FEBD697F67094B894817539479A37AC5B3D312969A55A9D528F41C5C8
            A52634BE2C5B4BA919945184096361E802664CBF31A6B65006BEB5B53516CCFB
            16AD5F7E05760E0E4FED1B7CA29B291E088D2615E3277C80F3E7CF71BACEC07E
            83F05AF76E4265D23DF621909EA56CDCBB1383E53F1FC2FAB5A7919CAC3195E8
            9586B03B5468A5A49D5A2AF2BA2FE8C1572A1558BA66041A3597F2F37411E126
            C285153F1CC09CE99B40E5980F9BD5EC0E108B1E0110FDBB348D66D2040302DC
            3068682BF4E8D3082A77C7426B83E4C7BB74FA0C4E9E3A810E1D3AC1BB5C391C
            D9BF0FBDFBBEC11DF168E1CECEC882AD9D2D667E391BDD7AF72EB28599EE2945
            96FF5ABF161F4F1CCFEF8DF385A6BC780CB80B9EA363361A35CC44BDBA99AC01
            FEBECA1A172E5A722A8D959555BABBBB47E363A7CF5F2CC52128752953606894
            E68DEA768C8E8EF9382B4BDF42AFD7C94DA7F9F0DC7CE8EC3385F91B2400A867
            8FDE18336E020366B6AE684BBA64C666F1040C9939BD266812AEFAE3377C3269
            0232C479706751B9054F546F2F6F4CFEEC0B74EDD20D564A65A140110260E81F
            C9D1C9484C482D747FDDA2946CBEA77AC4C5AA71F35A044E9DB88B6B57C27157
            80B5A5A5DC046EF4870071CB914FD87C36CAC13D5731B4D70F02107240940244
            2455AAFBA07A4D5F346A521EE52B7AB0296A594A9A30813DF906AD1CA909BB00
            E68CC26B83EA94644C9D3605CB96FD0CA5B512E962BCBB75E9CE5A1AD513934B
            27B58A03FBAFA98DA73A3919FDFA0DC094CFA641E5E555642E1B4A6B4A4988C7
            575FCFC0F1E3C7101A769F9582DC426F29E24C626595CD63289486B5576FDDEB
            4B419352B9F96548CA241892F4E9DE4D9EA9CB70BE7DE7F684E4E4A48FF58FD1
            EC281195F2F9BA74EEC6AB71710448C8F41937E63D6CD9BA1955AB56C3B8B113
            D0AACD2B7C17DFE8DA11A7CF9CA4ADD0A74F3FF4EED917B3667F8943870F7007
            3412B1FA62DDEAF5080C2A5F64A6524989A17497EB742F5E08C5E8B77F457CBC
            DA64CAD3FDF6F271C681F35FF0FBB0FBF168D764BA59908482420D05F8CDFEA6
            AF001F4753E961198A653DC1FD9089EB8F6716696AD024A3FF0C160AB96838CB
            405C98B69C1DB4E5EDA1B79173BD3DB12B510DBED0C6F0C3773FA34D9B578B64
            2EB099AEB044724C2C66CFFB5A2CCCBF17F80CD0E7F6F60E17CAF997EB9AAAD5
            DC3F7CF45476A7766DB065E7DED2BEADA52A65160CC78E7817DFFCF0A3E97DC3
            3A35BAA4A42477CACACA7A51AC7895B967AC2CE712089C88D2C853BC6AD6AC85
            06F51AA07ADD7A793A853D8B2425537FE4BAD06564224B9B89D4F434346BF902
            32C5FB8B972E0833A431338A3879AAD82C86D2128776EFE192BE90907BAC2D90
            F6FAC1D8F118FBFE075008902C09F3BDA885023E10AFEFE7EEC4B7F3A4E27FC9
            5CD361EA9C5E1838AC15A67DBC0E7FAE909A18D1C3E7A672C02753BAA053EF46
            92CBE0794440D3F55B20E4DE5D74E9F61A921212B91E9D58D9A92F0F05F41CCE
            25705F1EF27B53E514F9B255DB22F0E09D8A50DE4E81F7F2BB52E02F5D8BE16F
            8FE0DA7502C77C8F2599188697CC44569CA549C783070F10161ECA019A4B972F
            E2F889633877FE2C254B9BED8F8339E2F74249B8A2B0546CF3F7F3FF6DE781C3
            97E9BBA103FBE197DFFF28ED5B5A26A4CC82E1A364CA848F1CB7EDD8FABE3A35
            F5FDB4348D7B41DB51C233E513361020F5ACA0432BEF2FBFFC84E95F4E85D6DF
            16D1BD03E0743C164E8763A4941F3169376FDCCE40FCF0834E00D8F5F58EB876
            EDAAE9336AFBF8C7CAB5A85BA75E69DFCEA7BF27E29A6F0747A147C785D06A25
            73AF56BD7258BBE343D4F21BC749E424CE2E76D8B6EF23F1D7F6590E5766242A
            3A124D9A35E0EBD739592162687989502497580B93D8F3CF7B88EE1380742F1B
            F8FF1F7B5701DFD4F585BF244D93BAB79442A194E2EEEEEEEEEE32746C0386BB
            0C19EEC387BBBB96E2142B6D690B54A97B1AFFDF739394160A14C6FE0CE8F92D
            6B485EDEBBEFBDFBBE7BF43B2BFC743D80A8D4F4660C6F936B10AA893F7FE612
            CF177C5BA8E1FC335F1FF8FAF9C28F5EFECFE0EBEBCBFB2F6747D818D5D6D636
            3B3D3C3C26ED3D74ECBBEB5BF225E59B03C3713F0DC71F2B56A6FFBB79C3BAF9
            5EBC78D142AD518F4E4D4D2D98D149AFD56A2093A5A15AD5EA183DEA67D469DC
            E8B31CD714B5BB77E716DA7668092133715E77CD0F594173CE8F68CD26353590
            2F57A9220E1C3CF15E1F1039D9BDAE5CC15F7F6DC0FE83FB606A6ACADB43D6AF
            D7909339346ADE82DF8DAC58B1FFCB425AE2A3FB2FD1A5CD0A6E129B981A63F1
            DADEE8D57605CF45742FE8885D8746C0DC52CAF3F6BE65A105313626064D9A37
            4064E46BEE07A466634A62337AEBD4A42F52386F66587F5D7B5A9735CF796F1D
            E2DFA432396A3741A2B214C3E865229CF2E5C151367F72B9E4C19EDD3B70ECD8
            11DCBB7F0F11AFC3B95627120AB90F5AC8FF66ED5B258A2F667D0431EBE931D3
            0C1FB1D7E5A58B965EAAD5A8099F542D9B34C0D153E7BEF665FCCFCA3707866F
            CBDC199399F93593BF6F50BB7AE3A0A0C0BF98194DD42299429F2AB50A6D5BB7
            C3A2857FEA227CD9BD400C5CFD9FFBA145AB2650C8E4482A6B83186A54AFAF7A
            E1840F2BFD50AD6425ECD97B185AD5871DE2E4E87EF1DC1F5DBB774464542407
            44727493093D70C0104C9A38E59B3321E91ADDB8E68FFE3DD6F3A86CBD262571
            FEC443484CC438727A2CDCDCBF0ED3CB9796F8B83854AA5E0E0AB92E399EC885
            A3DBE7CDB2028A82250EFB5E21787461DE57873A309239CDFBE6307397B443FB
            23A1FC7B6A776177328C370F23FF23697D8634990CD798C2ED0A62AE63EF5552
            A934C8D858F288CD656F0B730BEF9EDD7A3DE8377C5874C6DF0CEBDF17AB36FE
            F5B52FDB3723DF3C181AA449FDDA3875FE320792B2250AD795CB15BF3313BA7E
            46602173D5D1D111A3468C459FC18301C5FBFD8994D44A75D34B16CEC3DA75AB
            9096940A85AB19C2FBB8BDA30550E3F8FA5625B07BFFE12C9B3FBDB36F2115FF
            2BB17DE7364C9B3689594E1ABEDAB3F162DCCFE3F1CB8449D9DACF7F4928223B
            B8D7465C38F7946B847131C958B6B6175A77A99CEDE8EC7F5568017B1514888E
            9DDB20222202228516C9A5AC10D536EF7B7F63793B86FB0E4389D99D61A5C3BE
            601847A6F12665BCA52D03D33C6C11A5204BC82806884C93B43D1E0A49441AB4
            125D42A0482426DFDF2913A9F4AC52A5F0161B198716702B10B9FFD8C9D8AC8E
            3971EC18CC59BC24CBF1746DDF067FEFD7559C746CDD1C7B0F1FFFDA97F53F27
            DF0D181A64CEF429983875067F5FBF66D58A2F5FBDDCCA34AF823C995B2F7285
            1C6EF9DC3065F2749429530E6CB2F1C45812AAF54C4E49E151E0397367213E36
            1622330912AAD8E9DA91EA390C890B91B4429AD41677625022CC1CF3E7FFC123
            C5D65656303133FF202DFBA347DE68CCCCAD56ADDAF2DC44EF070FD235826B97
            BDB2EC9B92E5BE188892233E3232923BCD1D1DBE921646F99D0A0D8AB9FDCA53
            368A1677C181D36398A6FC6D45CDDF392D76AF2E5EBA80EE3D3BF3EB4B4016D3
            CC0529A53F50134FE420FB8339BD5B7C5D273E67A81ACAD22B86B7BDE08DCE98
            1058522748AA9EA2A833A422587846C3F65418D3AAA5F7478F185B73D8D8B19C
            D2A86FF7AEB0B0B0C0B235EB3EF91CAE1C3F251C3D7E8C2DD3264BE47375F5FF
            7BFFE1D04FDEC90F20DF1D181AA446D50A254D2426F9552AA5A93C2DADD6EBC8
            D7C332E65DE9EA7F553033358395B535F7B7D067C43C139F100F79722A04A6C6
            48AA628FE412D650116FA1BEEA8526B5242C95277C73B61DA641CA53D3B8E669
            6363C3A3DA0D1A34C254227555BCABE1C5C7C7A36E831A68DEB23566CF5BC83F
            A366DF35AB9467C0988A35ABD6A371A3A61F3D47F2657A795EC36F13C6E1D5AB
            97BCAFEEE913E7B93FF26B88402CC29CC907B165C3554C9BD30E5D7A54FD2AE3
            F852C25961460FE74C31FCFCD45A7EBFE52E2688699A5BD7C6368BDC5749781A
            726D0944D8C08250DAE9A2BA26FEBADE3BC14C0BE494754C44A96AE4F9D397ED
            CB997789A45252FB8321B0F54D55FABD0CE53F1C36A01FCF65DCBA7B5FFA216A
            55AE504AA95216898B8FB7363737B3120884628D46AD484B4B4B661651B295A5
            A58601B7365526B350AB54E5D9E795D51A757E4B4BAB33DE4FFD3A7DEDEBFA5F
            956F1E0CC70C1F8A252B57F3F7154A172F9A96269BC000A527F9E2B889AC2781
            15E842BE99CE9A5A10D084E62B75FA22CF26BC8911AF8F4EAA6CABFB9CADEC46
            710A38F1E64F72FE30A494B0426A614BE45EED0F39D326C78CFE99FB7C8E9F38
            863BB76F21914DE03C79F3729A30778FC2E9C9DFA46910F557B3160DB171EB0E
            346FD12AFD5C66CD988AF56B5661CCA89F317ACC2F1FD42CA931D0864DEB306B
            D63458324DD4C6C616C1C1AF70F3C63DB87C85769B06B97B2B08DDDAAFC4CD87
            33FED3D163813E08F1A11CBF07DEF7D1BE636BA8055A9E2328CF6B0AD3A709BC
            9119A51685F72D00452E69E60E8AECDEB82EF4E19C99AF7E2D06B599AE411905
            5BF2CF7EC2C0B01003481D1B91304D83BC4B9E314DD3997785348061EE179A35
            0FFD0286F2F1B1395CBA58E1E2EC202D1572456F459ABC884AC4E6A8119FD1BA
            A22BEA459E467345FF99A178CB30DD79558A486E656595272925253AE045C8D7
            BEFCFF49F9E6C190E4CCD1A39251A37F3A2A4B93D562934737D36882A8D82476
            36D1113E18D8FED9E7C6C129BA66510C0CC9EC492E6B8B583621D3E9C332D271
            E9FFEDB4E3054C9F2723AA958B6EE2B26789E8FD9DB6BD80D2448016B59A60ED
            862D5C13A4DCAF3AF56A70CD9392C1274F9A863E0307F3483169735B376FE41A
            C7EBD824AE91A69FC7E993E8DFBB07BA75ED8EF90BFFCC32324D0FB18C698F2D
            5B37819FBF1FFF8C98BA67CE9A8633674FC3F3DA6D14A0A4EE4F08C2F0369986
            5E33CA7F9697191B938C813D37E2C0C55FBE2A11EA07CF576A8CA70F1EF0409A
            4789E2598E937209376C58839933A721A5BC1D621AE7D2A55029B5307F1C0FBB
            6361D08A0508EFCD00D1599ADEE08CCC5E931729300E49C5ABDFDE80215DDF3C
            4B7D1157C7912DA4D6BA7252999A7F16D9D9952FBE0630B47B261BEEFB2A6455
            ED2A151B85BF0E5FA65028DCA0D218136D1DF9295536620678991F5D110343A3
            58DD79503F726A8046FD7D88FA8EC0512295DEF60D0CAEBC74CE1CED98DF7FFF
            DAB7E03F29DF24187669DB0ABB0E1E418FCEEDADBCBD1F8C4E4D499DA66240A3
            353582C249CAA3760A0729520B5940E528C992F546CCCC5C8B3B71300948E28E
            6DA20F8B6996FBDD8E7C6C82DA1D0981D99304DE298F2288064D80B815891D27
            AAA32B0A1F89C385ABD789F543977F17F01C53A74FE234EDE4879C3E7536060E
            FF89B739D8F2D77A8C9FF80B5AB46A0D272767D4AE531765CB95E74D7E9CEDAD
            306AE4588C1F3FE91D50A287F8D491C3183A6C20D298669897699E7F6FDFCBFF
            36685407C121C1B8E9799757BA6457C8DFB870D1025EB1E0EA9A0F356BD44483
            FA8D787BD3CF896A532065DD8A0B1834A661B6480E78A04AAC9F86ECDAFC9B8C
            42B49050B23471019E3A758207AD6A54AF8939B3E6A378E932998E4D60B876CD
            0ACC9D3503E1833CF8BC4A170B2338AFF4E75160CA330C1D5290E7199A3D8A87
            C3A110FE6FEACB1DCACC646A5AC6E79F48001B365F68EEC53570E2E74AA4C54E
            3B5F2274B8074FB1A16DA8ABA2CBCDA45D6AAD86593969A529C042E679424D47
            C435CC95358B131F30B8B62A610BBDF5E548BE70CBF29BF2F61A9637A291CFD1
            A5E9B55BF74EFD6B17F73B906F0E0C6B56A980AB5E7750A362B916A1E1A1FB35
            6A8D3135818F6E9D07A9B4BABE4DB4FA3161DB983E4B84D39E573C4812DBC225
            9363DC285E0917660A870EF5E02B72C67DE65E1FC09B4E911FC869BD3F36CD5A
            89A6CCEC35801831243F7CE88D164C8BA3C0488B662DB16AFD5FD8B2611D264D
            99003333334E2F46E049CEF95E7DFA62EDEA55D8B7FB20AABC458A4ADB0C1D3E
            909BE1F4BE72C52AD8B9630FDF6F7878186AD7AD0E730B735C3C7F0D569656D9
            BA96F4C04F61E3D8BA6DF33BC71AD06F107E9F3A334B9FE707F7C97E4BB5CB6E
            EE0E1FCD2BA4E36FDFBE197FFFBD9D271C77EED4153DFB0DF8D722E902231103
            7C270E829C188280868D9734C415CBD6A04993666F7A8AB06DF6EEDDC549375E
            4D2AF16691647F883ACEF459026F5466C580867AF350B084B4C244F63EAEB623
            EF81439A5C34A5D2A874BDB44D7D9360E69388A80EBA741CEB4B91BCDBE36BEA
            CF438126EA9FC3B43BDE4B5CA9E3E322EB25B6B90B6F4686F75D4F06B0445AE2
            782004C661C4D824E4590F4A1713E46273D4264EF0D027E065E97FE5A27E47F2
            CD8161AB260DF2F9F9FB2F4853A475525A88B8FF459EC78CFBF4041922975AB6
            CAAAEC8CA1B495F0A457452E135D0FD1AC5A7DB26DCD1E27C071EF2BC4D77AB3
            0293499D6B4B10AF2D8DD34705B9B0C94749B554679A54CE06D1EDF2C2EC6E2C
            8ADF54E1A6F7E34C669780819CF7DDDB3CAF900233C58B95E0B462E7CE9F8554
            6A824BE7AFE2D1E347BCA48A34C86AD56AA06CD90AECA1D41340488CE179F912
            A6CF988C274F9F70B39B7C8AA3D88B1E5CDAFFDA95CB78658C47410F9C387696
            33F67CF4C63310484E4A824751376EAA53C274858A157910E8A69727FBABC2B5
            2B5E7CBC9FAA21D2BE841FE15F2420ECDAB53D33ED4959D16D4B6E85DAB5EA60
            D7CE7DBC42E74B0A81DBE1C30738FF1FED9B34DF9E3D7AE3C60D4F6CDEB68997
            544E9D3C8369DD23D3FB35130B4DD72EED11C3E64362253B3E4F2CAF47C1EE54
            38A25BBA20897D667B328C07D408B888799D34380236EAE0481A59783F77281C
            75AE1063067C9677E310DD360F2784705DF80CE1FDDDA1B4D19172D85C7C0DEB
            F3AFA161A635B962528A5AEAA3CC420898492D5064BE0FD406833A44D2DC35F7
            8EE32E9FA432363C824D411AD2541D0F8668EC733BD5B8FDE0C98D2F7A41BF43
            F966C0B061ED1A4E11AFC34F24242494CB4405C535C12C4EC3D03D4FABFFC326
            32F54049AC6C078D91F0DD33670FAF895F225BD15F22A1BA3D621B3B7362D8BC
            CBFC1032B420EF8897BE299B847997F8F2645ADE035AADA313B35AEC8DBBD7EF
            237FBEFCEF00486262025AB76D81A01781E96C2F14E4A17E29BBF61DCA521BA2
            EF7F1E370A07D9434CDA0C698F870F1C439122C5DE9CBE89314A167167FB4F44
            A992A571E8C0515EA9F031A1DCB97973A663D9F2A55C335AFCE772B4EFD8857F
            B773FB56FCFAF3685E1DB365CBCE2F5E3F4DC7FE7DFC381E001A3C7438DA75EC
            CCF32E4F1C3B82756B5661FAD459E83F60F0173D2E81E1EA35CB3173D6747E2D
            67CF988B5EBDFAF27B41F7A66DFB5608087C8EA64D9B7302055A68225E47A07E
            C35A9025A520B2533EEEFFA3C591B4BD9462967C5E49426570DE12C817CB8CDD
            1B8D23E5C8BDE1B92E499F6976B490D267947F4889DA76FB83611C2DD7E5ADB2
            B9677D350AD60C0C65EEE68864DFD3DCA2FD53AB0AEB2B513C7093C92CE19113
            41FA3CA6F6B5149556E969EE8C9255705EE30F0B89E9B5A7FE2F6A7ED11BF89D
            CA37038624658B17AE919C927C50A150D853673DD2E032F972329C15B5073062
            1389CC5C69682ACC1F502F6615F7EDC8F231F394ADBC3C9D81379A7FA3F191A9
            63C1B4BCD0C105B913DAEE4C38827F61E02357A7EF9B7A3BD336C4C64D939D93
            D1326DC06EC553AC9BBD026DDBB47F070C0D05F7070FEEC3AA55CBE1FDE8014C
            9866A8665A48B97215306CC84F2853BA1C942A2537AD4F9D3981B3674F232E2E
            96E7400E1E3814E37EFE0DA6E699F31767CF9D914EFFDEBFEF404C9B334F1701
            A7E393C9473466DA7723A634BE2AD5CBF362FF6AD56BF084F18CD2AB5B67BC08
            0CC0995317330579BE8490865CA3566554AF590BEB366EC9F45DAD6A1511121C
            8CC080B0740DED4B0881E191A3073170703F88D9F59C35732E7AF7ECFBE6DEB0
            D7B163873177DE2CC4C4C660F0A061E8DEB527162D5E80ED3BB7C25868C47935
            13AB3A20BEB683CEC2608065C3E607053FD20A5AE87BDFE81760A6A5993293D8
            9E99D4049C948A43E0677B46A755E6618B6C446F37DEB191EA94AD987619D6AF
            0014F99926C8B440EAF743811A13FF24DED24249968D7E4ED1BF292848693BD4
            173C2D8F29D494E6A337E509A0C91729158A03674F9B55A4639F3EFF2D6AF7FF
            A87C3360F8C7AC59983C7D12AA54ACEAF13238C84BA350D92A99B646A571692E
            263A468FF78950B7825253774BAF680E944266066BD8648EECE48A34068EE969
            086C92BB2E7986C4F2B61C0CC9C48E69913BDDBC264BDB75DE53AE25848C2CFC
            E618EC73FBD53E9837622AFAF71BF8E1D6A34CC33BC51EBC19B3A6212A2A9273
            1E9279AAE60FBF80FB012957502A91A26EBDFAF863FE12489869971104793958
            6A0A6AD5A9CA7314E978CECECE68D7A6030FA0989999C3DECE0ECEB973B3BFF6
            DCBCA6FDD28B34C7E701FE3C6D84B4A27B8F9E71528B8CB277F72ECC9E3E0557
            2E79C2C2C2F28BDECB878F1EA25D8796ECD5090B17FF99E9BBF367CFA0738736
            BCD7F450B6407C39AA3376BD529290DFDD8599C9A63CE19EFCA2EF6CC534EDE3
            070E708EC2D0B01098B26D959C9F52C0E706CD97D4C2167C5BE3883458DE8AE5
            9166E338B6F0462BA0B63482C2419FD0201171774AAE1DA44DE6E5990DB9B605
            21815928E43B0C1F422C36C9BC4F4F44AF02BC8323917F90794D8BB63C971429
            A5AC915CCA269DAD26E37C4B5FF4DE9C225FFC73AF7B0E915690E2ECEC529ECD
            29DF9BF77E68CED66CCB37038624D3A64DE3AF364D1BD9F807F8AF484A4CEA46
            2720CF6B8628665A50B3F80F92E31128B2D5D3382A8D27C15ADD8AE1E62DADEC
            B45AF3245A26E487217388267F52055BC436CAA55B75890474C70B9EB2409AA3
            DAE24DBF67A14203FB953E98336E1A03C3411FF5B391CF8CC0EDA9CF530666D1
            3CFA9C9292CC0E21847BC182BC02A5400177985BDB50598CCED94FB44CCC027E
            E51F80A30C4C2F5C3C8F3B776EA59BDD3ADA7A7D7E2574CDC00DF44DE4272380
            2520209F22E52952E0A54AD56AEF6885240FEEDF438F2E1D70FDEA2D587E4130
            A4B1525BCBC143FBA373D7EEEF80217104962B598427909F655AE997F41D12D0
            B56DDE04F7EEDFE50DD8572C5B85AC1E01BA372AB640519E21698B67CF9F818F
            8F8FFE3AB3EB5AC585EFCBFC411CD4E6220E405491C48936A8A39E8988BB65C8
            7A216A2FB25048FB8B6A9717F64743B99F3BA584254FE6A7E01C7578A4B41893
            E749482D62C5037994BFA895EAD372B24370C18E671C22E3C02B1188E31DEC1D
            AA7ADE7DF0EC8B5DBC1F40BE29303448AB26F571E4D479EAAE37222A2A6A8146
            AD96D299447674E56607AFEDFCD804226064ABAFF9ED58DEA89E2633FD9EB8E7
            4828BA2C0D4C4264D77C90E5374F2FAEA76D695273F6910CFB2273C662EB33DC
            B8768783D8A7061D3883767A2728757AA4137A36E590906066E61DC2EE3D7FF3
            6A136363493AE184E1505A6DD66B81DE0A7CC7B54AD1EEBAF51AE0E75F7F43D1
            622532115850DB827E3DBAF2200A01E89712CA695CB76E2566CF998ECE5DBA63
            C15B6018C1CCF69A552BF0AE72BBFFDEAFA3381350D6884EAB35A2311A585B0C
            27AC8F0C7FF4D8EC77C7F57D873D3C0AE1E4B1B35C63FEE06FC46C01629BA4C4
            C4F372494AA6FF69F86004040630D3D4180995ED202B62A9CBFBA37CBE5729DC
            4C354A5241F2321946094A281DA43C299AFC80049294B44D8BB7A95F2237A509
            3CC9DC8D6DE00415DBF663AD6FDF19235BA82DEEC572F78D91D438B048916235
            8F9D3E17B690290EBFB0578E644FBE4930340C9CA67FED6A155DA2A3A34F2725
            2515A7FC7B8AA225D474E02B324F57F8D833427893AA86DDE9701E95236AAED7
            3DF3C3FC5E3CEC8F8420BC5F015E7D60753D8AA74244F474E3950819C1562853
            C3F98F27EC211989F193A67D723ACA3B43A2074B2A46C0531FAC5CB51C9E37AE
            73CA2832D774F44D44A42A80923AA032CBD9D959037777350A1650C3BD800A76
            76DAF4F851C46B219EF98AE0EB6B045F3F66C2B1A1516A9FB1988800748048C7
            CBEBEA8A56ADDBE1D709BA84DCC3870E60C982793C55E78BDE370666CB97FE81
            F90BE732501AC9538BD264327E1FE2E3E29906F604AF2322B8866B6969097333
            738EE244612562406A6424629F5BF1DC4AB7FC0518A81546B162C5E156A490EE
            008423CAF7F79B0963DA70A3C67579FB4EDFA781D9F687D235225EC1DE7D7B20
            58168DE82EF979EA0C0F7418E6024D4A0ACE31C013C5C861C24C60023C13BFA4
            376E1CFACBE625652810E721A585C5D6CFC534424B9E12C3B54B53A1EE3CD4DA
            AC1775817E3FEC38C26415726D0E84344E054B6BAB5F3DDC0B2FDB7BE4A8FC8B
            DEB41F44BE593024E9D2BE3576E94DBC12850B2C670FD670F6700B28478B56E3
            B87A4EDC1FA8FD486B0DF2036A2CC53C6DC2E65C04EFC49758D196A73A507EA1
            F4652AEC0F053373D91989CC8431541BD0449584A6C2EAC00BD42D519593B566
            D54B38BB4240214B4AC275CFAB58CC00E3D6AD9BFA3419237628011C1D3470C9
            AD46E1422AD4AFA74085F24A38B96ADEF89334195E06A1EF28B8AC1F56729400
            0F1F8A71FEA2316F08F4F29508A1A1A4759189AD03F1454B97E3F2A58BB0B7B6
            C5ACD9F3BF585497B45F9FA78FD1B77F2F6EA26B7827394DFAE028D7905E86D8
            4FA6DFEA099F759757CB7F4B8069A040A3EB5EAC6831942B5B01952A5746618F
            22C89D3B379C5DF2F086F650EB0092B4C3EA352BE1F9737FECDF7B18356AD6FE
            E8F9D1B8BD1FDC43A70E6D906A0644B5CDC3FD7F6FAEB180E705927FD0FC513C
            03C0249E89401A1F757624FF1F99D25C3B14196A41B57C9E51AD330FF4B1ED0D
            DF91BB4791DB84930893C6480BBC464F1E4B552B6206B4C661329EF46D16A148
            14994BCED7AA5567C8FACDDB22BFC88DFA41E59B06C3B7A56A85B2252323236E
            B187233DC4CC7B2967759A991CCF021E2889671A251175523235991E3429934B
            59F38C7E6A6E1FD7D089038D40C1B4963B71307F18074D540A1AD46E80BF366D
            FBEC2E76064D70D3EA550C04177347BFEE6117F0877F403F197AF590C1C19E3D
            70522D8C0CD6ECE7D21EEA2F076995D452322656C88E6B869DBBA47CFF942348
            C71F37F6578C1839F68B8021F9D8D6AD588E054C233404244868D7D4A488C0CF
            DC42CB404C85421E4CC37557412AD1EAC729C0F32011FC9966FBCC4F84D85861
            3A13BE919116192FBBC15C26939A161222E2A08E75BD7AF6857BD122FCBBC1FD
            7AE3C0C1BDF87BE73E3468D8E4834DC3083CD7AC59813F162F407C2166CA3673
            D1517019AE23E5A83200B43DFB1AC21415F721C6D5C905858B09D4A6229E34CD
            B763F3C9EA762CACAE44F2DF50F6C1EB2EF974C13BB6A84A19B8D91D0AD1F91E
            856F009326803603DD3FED87F25FA52626894C6B9E686C6CBCF3FAC55BF1424B
            893687BCF59FC977038633264EC49439737078CF7EB3B1E37E4A4E67A8D1A7BD
            502A826E3527AA762328ED75782954D04AAB8088ADCEC6EC2F99BCF2DC524842
            643A2A7736F1D416625E5560F232051A850AE20751B03436439DFAF53160C060
            54AE55F393EB70391848C478E9FF1C274F1DC7DAB5AB101A160A919119AC2CB5
            A8565581E64DE568DB260D421AB61C597707249757C6B44295FEF54983612F76
            8CA85742ACDB608A4347245C5B3436D660EEEC85E8DABBCF673370530961A0CF
            33FC3E7902CE5F380353064E72B900160CF8AA5452A0512305AAB373CD9387DD
            07439C86CEF36DFCCDA0DDD2B5880813E255B008F7EF8BF1F889119E07889819
            6B04998C2A4A742E008328940A4EC85AD0C303AD5BB6C5EDDB3771C3CB132F02
            4278B3AEF7F91BA98EFCA6E73574601688AC9203625ABAA4A7D410FF20552E91
            26489A1ACD2D4AD5A21C5583D590E97E51A9DDD548D85C8A6456871D2769A02A
            96909F0A4163AAF717B3E966C100937A7F8B52D4B0B1B73D9194941C6C642472
            6243A4684A8A9191919F9D9DDDF12B37EEDCFAAC1B9223EF95EF060C0D52B55C
            E9AEA1E1A13B39D8B00949F959149DA3663DD9395BD208CDD824A7DE2664BE18
            7A31939049462D04BA74EE86962D5AF11495CF318B49DB080F0FC5AFE3C7E1FA
            F5AB7A73115C2B1BFF4B2A7A7493718D27CB5D1BCA0DD983131D6E86F3670BC0
            EBBA2BD7AED45A21BA7479845A8D823E1D103308AD230B179B63F94A53360E35
            060D1C82DF274CF9F4F36427B06EFD1A9E0B49EFE91C4D4CB4F86D5C2ABA7795
            71D0FA075E854C429AA58A699057AE1863FB4E292E5CD225C9BF4F592700A45A
            EC0B67AFBC3788E2FDF03E3A766E8764472344F470D36967EC3854A9446408A4
            A1A5E533E7D90686749AF70A0343D7053EDC9C26B6A3A87679380B1205530810
            DF5EE8880FD12220950248EEEE053D82A8EF4AF16225B4BF4DFEF4FB9023D993
            EF060C256C3E376DD4C4ECF193873ECC0CCB2B506810D7485F1E9595239A566F
            B100A26805D3F89279CE18E515929648E60E09ADD8C412621427E7D50354472A
            0E4E4193C64DB178F1329859587E9209495AD28553277992F495AB5718281A31
            803542F3267274689786A6ECAF901456831246CF574657381BF2CEADA571606F
            3104F8DB22315182054B4EC3397712E6CEAC059F278E484D15E3ECE5CD285EF2
            75B6C795A5983230F01263E4580BF8F868D1B367372C98BB307BD52DEC3CEF7B
            DDC48CD9D370E3C6350678A628575689512352D18869BB7CD6FD5B8436846B84
            83696CFC0FC478E0CDB4BB5B6278B15730D32429184D3D83F9FD6508EAE4E884
            56ADDAF0A47647D73CE9BB7972F73E5A76688E98EA76482E6BC3F302A581C9DC
            1F284C5521B59815E26B39404E49D28A8F07EA08DC4C9F27F1E650E44BA4CC05
            11DB4F9E55FE6CB1B6E75DF432CD51CA5EF08A86E3E598A842858B543F71EEA2
            FFBF74C572442FDF0D1892942C52F07C6262423D9A98D16D5C745449EA2C6629
            69610CD46CCEBFE6691044C54409D814E1231F0E0554C8B7C3741944B7C88354
            0F73FDD512402057C379FD7358AB243871FC2CAF33CE8E50D494523ACE5F38CB
            53584863295746854DEBE36169A37DC72C94CB8DB0716D790CFBF92690A17EE0
            D0FE629830AE217F4F418F2D7FEF43F9CA61B87A213F7A76EEC0CC6C0DFEDA71
            00B5EABCF83217950172978ED6CCAC14A354C992D8B7E7F07BDB5A9290F63C67
            EE4CAC5AB382FBEC481B9C313519BDFBC9329DC7FF55F441A44066466FDD21C5
            C1C352763F04C8E82AA4C4775B5B5B54285F91FFFBE62D2FC852653CF794D263
            0C659F3417E2EAE5E23EE66CE5FF3150B3781007BBA3A19C198952B7EC4E8622
            6C50411E3D2662853C6B9EE3E5AF4575A4AF1977C98E69FE301E0EA722D83CCB
            5FFAB2E7CD8755CA9786D75DEFAF7421BF6FF9E6C1B05AC53202CFDB0FB4C53C
            F2EF4F4E4E6E2762AB34953E510DF23BABB544049367093A100C49E58EF0846A
            0EBC285E696FCC4D195E62753C0CD257A97C1FF60783798F0A9ED0AD174AB076
            F9D3175626E678F4D8FFBD0E78225948898BC7A2250BF0F7AE1D484A4AE69A5B
            EB966918F9532ACA5656EA342452B6085F480BD483A25A2D449F6EEDE056200E
            33E69D4F3F97E82853542B3F9801A1CEB4EEDAE311FA0DBA8B11835BC0E7A903
            032A35F61ED9852265A2326B95FF50A6CD30C7D215C62852D805EBD76E42C952
            653357C4B073BD7CF62CA64CFF9D27906B34625428A7C49F4B12E1E6A17E1708
            09A0F4612E5582086A8D00126B956ECC864832058AD83926C749D8E2A185A995
            226B7F6276858E69A4DB67909F889BD26B3798E2C50B1137DF0D516ABEA950A8
            33ED8D8448A8E1C04190EAD32915465776F79163E9D36CAC2E46F2DCD4F8FAB9
            105FC711D28024381C0841C88842BAE831FBCF7973108F34F3FE28A2B71E492A
            113D1B011BAFD8D43CEE6E9D18201E37141FE4C897956F1E0C49CA9628BC3036
            36761CBD8FAFE7C423BFE989ABFA481E45E9ECCEBE86E9E378BE0253613B559D
            18822406218EB95CDB5E20AEBE6E3FF6C742216626B4A1A0DEB04FE2407458ED
            8B662D5A62DD86ADE9B9853ADF18D32863A2B171E37A2C5FB9949B9662EA9096
            4B83650C1CCA5767C820D3050B53928DE1E5E98AF14CDB238DAE64A90CE62D1B
            5AA5E243B161FB41942A1BA1030966BE7669DC19F7EE3A73CD50C85EADDA3C83
            8D4D1A0EEC2B8AF83829929325CCBCF5C2AFD3AF7C3940641AE2E409E6D8BADD
            046A95127B771F44D5AAD5F9B912806CD8B81633674FE7FE373A2F328B0F1E8B
            E7E769F0736A54020E6AF43EFAB5193AB7EB8C905756A859FB05BC6EE4457EB7
            38CC5A700E65CA8773B039B0A738460E6BC600F61282026D70E26821EC3AB007
            458B47A6DF87D464311293749C95740D24D24F7096EA01F9F46109162E324370
            88900760DE4E50A7C58F5264922AD821A9B4B58E19DD90E8FAB6E80960C5B172
            D89E8EE016487C1D27C43340A50B43F3CBE16008F7131A808F12A6890987933D
            D0DC7D5BE314E92A9F282F3197B373B39BF71E9EAC5CAE1472CAECBEAC7CB360
            D8B679631C3C7E9A185BA62626264EA3CFA83C8EF202B506D022C24D666690EF
            85CC6162F4E0B9876E663C42FC8E09AD2FB793BE4AC1EBAEFA263D6C2292BF87
            4CE968EA8696810DDB61CF4B144EB3C5D59B7719E828797ACC839BB7307FC15C
            3CF0BE87C4C424A4C9C568D3528E61435251BA941246A401EA77A15488D0BC41
            2F04065A3310D1A054E948EC39F3B70E40F87880C7DE4EE8DDA53DCE5DFB8B3D
            EC32AE453EBC9B0B2D1AF584999902F2342378DE5D875CF99370EB4A1EF4EE4A
            24116CCC8E29B8FA783D438B2F78D1D939F7E9678533E78C79F063C4F05118F7
            DB2474EAD012D73DAF71F39F80D0D2428BEB576260E9A0E5E7E073DB1117CE15
            C0A9E31E70CC958C8D7F1FE49FE7B31E078944856367B7F3F499C6757A236FBE
            045C63E3BE73290F7A30B3DFDD2306474EEDE03ED236CDBAB36B14815D477773
            4D7AD9ACAA38C81600994C8CDFA75EC68DEBAEF865C255D8D8C97440459A2561
            E3C7B438D2CC99B6191048DAA2045BB69AF0141E136986A8B456C7924E79810A
            6713AE29A616B5D2B319E9344571B482275913E12FD175A516B7422C9B6F4A22
            1351EB1681ACC090C475C15308D9BC7831B17896E63731B353AF65A156A0CD97
            DFADD1A5EB5E3939345F58BE593024A952AE549DD791AF2FF2682CD3BCC27BBB
            41E928E52B30D517DB9D0C87E44532142EA6BA8832D1F5BFAF2A85012171C251
            EA0371C7850DD435FFE65F311386720F29E19AD2220C62C6B4CC72F7453876EC
            0C33971F62DEFCD91C14A4269670B0D3A2524525A64C4A465E3213D3F0EE7199
            C9E679C995FBFAC8BC4D4D1163CEC273E83EE0C11BB3923DD00BA7D7C4ED9B2E
            D87570B74EB3624052B3C20066329B7110A95DFF05D6ED3A8463BB0B63EC4F4D
            F96D5DB4EC245A767CF6E5FD744C096B54DF167EFE225EDF4C9D00535253D373
            2C2937D0F36A2C6C9D355832B31A162FA8CE35BEF35737E397D18D71EC4861B4
            6EF70C8B379C40830AFD10126C8989532E233CDC1C1BD65440DF01F73071FE65
            2C9C5C93FDBB3C8A148BC23E66F60705D83030EC86C4042942E21660FFAEE218
            C3CE95D27F6EDC5B0B07E714785DCDCBAF498B0ECF38086EDF5C06795D1350A4
            68149C5C92F5C4061F393F7D00C6CFDB089B369BC0EBA61821A122A4A501192B
            2629EB806AD7DFD442EAE610F918A9D69D02222AEA7592B1B48EFDD6E47932B7
            36328121FBCB7D837B5FF1BECAC97A26A4B7E72767C6DEFE422B14099579F3E6
            CD57B64CF9883F57AFFDC237F8C7956F120CAB55247F95A672F8EBF06BD40294
            26157522238A7F13DF241EFC2032059A98C42AACB093EA56FFF73D08026ADB18
            CF893AA9948F4AEF4207154C07435EB2C70031CF723F840C33E485E91A85E7DE
            1D0C334B0BC4C5C5F1F416333301664D4F4693C669B072D4BE4996A563BF0710
            674CAC8BBFB795E2FF24503C727A3BF2E58FCFB4CDC0EE6DD0B4853FDA757BC2
            01EEB79F1BE3C8015D12B1B1448DC64DFDB19F9995F4E04F9F7301152A877E7E
            52F64724325288B295ED207E2B23254D2E60E097846E5D74E575519166A85C7A
            302C2C143874720707AE26F57AA142C530FCB5673F86F66A854B17DC3070C85D
            98982AF1C7BCEAA8DF289003FBA26935B066454574EAF608B3E79FC393478EE8
            D8BA0B1C99C67BE9E646B463C0F8F489236A30137BC3DE43FC5C132324502845
            B0774C454CA429AA951B04015B3C1A35098095B50CBF4FBB0CA954F57E13F7AD
            3941AFB4545D52FAC12312AC5E6DCADF4B246FA504314D2EB5A435D302733113
            5AA82BD1CB2A70C7E6290552282B21AC6F814C4C4B94DF4A1C99B242169C19E7
            1DED502284F91D664E1F0FE3FF747470EC78DBFBC93EE4C817936F120C490A17
            C8EB452D10E90C621A3BC32851C5002D96B75F242A24620449A2D2B90F15BDEB
            6B3C0938736D0AE0EC218915EC38596726302431A2891CC6B581C42AB69004CB
            38A7A12852CE4BE5CA94563273310DBDFAEA6CDCD7C1E69837AB168E1C2C0223
            B106850B47A3FFE0BB68D9E6994EBBCB2049491234ABDF0B91AFCDD870B42851
            FA35B6EDDE07A9994A172C60CFD685330570F3461E4C987D8583EAD5CBF9B07C
            4955D8DBA772D392F65FBDF64B38B925EB40F7DF6C57CC40F0E103315AB5B54E
            FF8862292D9BCBB16A636226D3BC6BFBCEB8CFCCFACEDD1E33404A839FAF1DA6
            CFBEC035B52573AB63DDEA0AE8DDFF3EC64FBD82FA55FB310035C5C1133BF122
            C80643FBB7625AA40F162E3B856D1BCB62FAE43A68C6168445CB4FA06AD9C148
            4A9460DB9E7DB0B49263D6D43A5C8BFC75E235189BA8D0AC4E2FF8FBD961CACC
            4BE839EC3E1A55ECC3EFD3B9AB7FE129035632ADCB960F839099C2D94AF331D6
            9DF7B573C6D8BB4F8ABBF78D101868C440510B4A5314EAC12FAD80198F18D31C
            A4F9A3B67C437E4139867956F8F3EE8A44E09A692AB2EF5CD63E87DA4C8CF001
            0532E5B74A9846684B41BF57293AA06562696939FDD1B38069FFE25DFEE1E49B
            03C3E103FB63E5FA8DF0C89F47AB50C8F9E420D398925E656EE6DC44E1E5521F
            3A337D1995519402D6572361F63481036134358462BFCD37FB0937930D2D1D39
            4F5C928AAFCAD2A0649D4F924D7E2A65AB524589A57F24226F1EB5AE4C8E26B1
            2950BF6C3F8447583050DB8B62C5A3F0EA8535D3E0543C3A9CD578121324A853
            65007B48750108F2F96DD8760885CB46C3FFBE3D460D6B8E9DFB77C3DA3A8DFF
            84FC821A8D804795B3A5E97C61A131F61D60854B578CD3FFED5E408D0BD76233
            812199AA33A6D445FB4E4F307BC1590E1E06ADEAC8C1A2F8754C233469EE8F25
            2B4EA0539BAEB8732B3766CE3D8F1EFD1F708DF9C0DEE2F873F571AC5B5901E5
            2A8463E4D81B10B273EED9B923FC19B01E3BBB8D2F36B49898982871FAD2169C
            3E5110BF8D6DCC23F24347DCE4C0F7D7FA7210B3EDAEDE5E8F4E4CC324B3DC8C
            69A3BD18108FF8D9EB9323D44494111A26C2DFBB1920EF30414282307369A040
            C7AE4EF5C7320F0B5EA647945E0EFB822177354364C7BCE9C0C68569821455A6
            E00B8121911153D23F55B9182528A0A1755123D027AA0BB4E6E6E6751EFB065E
            F9FFDEF5EF5BBE393024E9D8BA45855BB76FDEA6F7D40691BAE171BA73ADAEC8
            9D6890A8AF04752ED38A339EA28047F9886E8B9267C551694873B7E0ED1B6585
            2D755AA4B1100EBB5EF1200BD52593D648A4B026BE8990B3874BC0C0B26A1505
            EAD651704DC8B5B05A17F0308011B3A0CF1E2F88EE1D3BE2C0F19DA8D1E4A5EE
            41D33BE295ECA1513153CEC44E99398D84C973A6C9D0437CE7766EFEEFC46409
            DCF2C7A14CB970FC34FA260383B0FF3BE87D485EBC14A1720D3B1E6820A10CA3
            2A9594D8BC3101E6965A7E6E942F59B2D008FEFE69E09F1CB8D2CFD7DF0E278F
            79A042A53054ADF10AF234110F08D17DB224D0A7B588F082C055AABFC6FAE8F8
            AB975658B2A03AF2BA2632B3DD14470F15E151E9357F1D419DCA03F09A69D914
            5197CB455834BF3A060FBFCD4157AD12A26FF7B67065DAF4A96B5B70746F119C
            3BE3CE34C88BB8EDE5C2F3334D0DF7263BA6B4B1EEDE063D11E19AA7316EDE16
            E3F16323F80788D87D16708014D30240DB13EB389B5F02BD094C6422E93E4776
            59A88F0F09B595500B8490B3DF5B586B51A38612AD5AA4412A11A0EF204B989A
            08128B16299AFFC4B94B71C8912F26DF1C18D6AE5A09976FDC82EFEDFB82FDC7
            0EDAFB3C7B9AEFE1436F3B9191B8A446AD2AAF52AB6B2625257EB08B3A3110A7
            94B4E294FDD4D52CE3A4A7141C7B660E139761469F0E552D0C1D24C3F0A1A94C
            C3FB409E197B789F3E744493BABD616AA660401681526522101A62899B9E7978
            DA0B8983530AD66D3A84A24C6B7C5B5E47982324D80A050AC6C2C656F69F02C0
            4C62028CF9C912FBF64BD2A3AE8668F24DCF18F6D06A39882D9852836B7873FF
            388BBA0D03BFA809AFD5774B272D51A91462F78E52D8B9BD144C4D1578E8BF02
            C398A97D8201EE28A6FD8D997A1DF5CBF5E3F7A252D5102C5C7A1A4EB992F8F5
            9D3EA91EFE66BF239F64E366FE183AF2266C6D659F3D2E721B5CBB6E8CE32725
            3875C6188989D927F1A0732A5C5885312352D1B4993C3DA5AA7D0B1BDCBA2362
            E3B2DEF5D0E779D77FE59EFEC0F2CD81617644ABD58A6A542A5788380E556A55
            15B55ADD44A15014A7EA089E07C8CC13F2E9109BB0C166A3CA1271781A044132
            F650099839AB4695CA4A54ACA044C9122A94657FB996921DFF125352CF1C2988
            8DEBCA2394819AC848CD73E06CED64DC6F46A6E2C5730520355131B372130F1E
            64127DED71B6A29F6F8B50777CAE89B2B13EF735C2531F23F8B05744A4F00D33
            B7500B2B2B2DECED347070D07033BF08D372AD73EB918ACE331B297B449650BF
            B12D9171734256AA4E211AAE82EE6AA6F5C58217ABD0F948B3BFCFCF12A1EE15
            1B69C234BC3C0CE49279CE61839A7D616EAEC07D9F953C6F71C22F0DB9F647C1
            14D226BB747FC801B05AF9413A303DB807CE2E89DCEC5EBFE5104A967B8DB828
            13D8B8C8325B00D911BA077A228D98602122A384BA078EFD2F8502333142FEA2
            7BE1E8A8E1146DF47260EF69A1C978BD68BB52E5ED21950A51AF5E03FB0D5BB6
            C7FC4B57F28795EF120C0DD2A679131C3AAEEB9B3D6BEA249BFDFBF62E8C8B8F
            EBCAC0323375331108986A192068D0BE6D1AAF13B673D1E8D2523EB7DAC1C028
            43A67B9A1022534D7AA7BED444315A36EAC935C7FD47FEE6D1E07F24021D1D17
            B1C1F83C33C2858B125E5D71DF5B0401EFA9A2CDC005A83F65437321ADC1FFC8
            BB57C2D21C9C31A77D3B39EAD69683889E8D3F40A8909C2C40C3A6B60809D5E0
            F4C90B183B6E342768A57D3A396971E34A343E4226FDAF09B91DD6AEAA88F030
            9DEFB67E8D7E888D31C545CF4D4CE34ED5DD23A6A88FEEDF1CC70E178247A158
            9CBCBC05212FACD8FDE98102EE7158B5E10837F3AB540DC69EC3BB78349A7C91
            DC57FB7F94F51B4D306BAE39CCCC4CF7F93C7FD971FEAC69F86DD2B4AF7361BF
            53F9AEC1D02003FBF4C0FACDDBF9FBDEDD3A593C7870BF914C265B2597CB1DE9
            33F2756D5C9780C62D15BA9598B0E90B99A61424983AB11E96AC38C9344125CE
            9E2AC83492C270CE9D8C357F1DE6240B9F752C7D3EDCEB2021F61F94F2400651
            584545E9340D325BDFC7D8427C82EBD76C624027E69DEA7C7D9FC1CFDF0F4181
            019CCE3E2D4DC9343AEA952240FE7C6ACE2F3878602ACAD750BEA31D11183660
            60181767826B976FC2DADA1A8B972CE4FC7F44D7D5BEAD1C8B9727EA22DC6F4B
            460AB20F5991743F0CF7E553445F7EA795EBCA1B1F7AE7C285B305E0EBE3C035
            C2FA2D02F0E4AE234FE64E4B33C2C5EB9B50B04C0C0677698D4BE7DD509999D2
            A42DDEBC9117ED3B3EC1C2B5A7A04E11F2C4767B8714CC9C770E1654226860CF
            FC54CD31BBC2F65FBFB62D25856BECECEC1BDF7BE4939370FD2FC80F018619A5
            5593863872EA2C5A376B68F998894AA5E2390E79982678FE742CCF21FBA2C226
            F29695E5B0796319AE2D1564DA47976E8FD0A0E5F34F676ED1478D09F02E33F0
            5BB7C984F3F9D1980DDA577AEF948C3F23F25A86F822BD638FB6A95DBB2E1B93
            9E905664C4A3E886D970F3CA552CFC631E03485F242424F0723B0A4454AAA8C2
            BC5949DC9F25D6175E6404C3AB976EF0CE7CC4D8BD77D70E4C9A32818D558EBF
            B725A271537DE4434D3DA405484A12229A997E0F1F19F197F72331C2C33313F1
            923B8158BD4B9762AF924A142BA6629A9116664C8B373767E7A9D7BCD35FD911
            B1EE75706B31BE685CBB928F9BCBF51B0660E58EA338B0A518C68E68C6493AE6
            2C3C8BF9B36B324014E1DED355BC5AA667A78E78F4D0912D146A9CBAB419D191
            66E8D5A53D0A178DC1EA8D872135552122CC1C264C83B4B44A4332950A12E182
            B9FC8D76ADCF79552B8448931BB17B23E429551696F22CC7BB79A3297E9D600E
            6B2B718CFFCB50FB6C9E698E7CA2FC706048B278D62C8C9D34092D9A34B4F17B
            E6132457C8AD0C91D07D87E3B3D662FE89644CF8D6977E7D5210414FBE7AE7AA
            188B969AE1D16323C4C70B32554410EB8A4C968A1A356AE3E5CB20DE549E8440
            F02803FFE8A828FC346420AF1A2121FFE9D1432751A66CB977FA8508F4367564
            4404EFBD72F5FA15CE4B483D96A91115698AF3E724F11A6B6A23F03618F27DB0
            C105063C67C0DF1EB1B1AF31E1D754DE8FC5F3861851D10C08A329BF52C5DBA3
            EA5AA46A3299E204E0D4F344D7DAD488BFE83373730DF77512016E210F1533E9
            9568505F0EC77C9A4FF349EA71F7FE2D67664A57829F8F3D4F67F2796ACFAEA5
            11E62F3ECD4B00D7ADAE8826CDFDB074ED09CC9F560BDD7A3D44DBE65D612C56
            E3E28D4D9C4E6DCA84FA7CA1BBFF7425BF0EAD9B7487A99912F9F3C7232E5ECA
            B7FDFBC01E9EFA43C79C38AE118202ACD9753141A36601BCBAC6FB7E2E1EEDFE
            7DDEA537E598D02D7CD5EBD8B1FBA685BBBB47F38BD76E9CF8C2B33347F4F243
            822109F504FE7DEA0C542E57B26C6464E46DA6FD880813A87AA4571FD9BFE7E8
            FF1461DA577CA410B7EF12089AE2DE3DB19E969FD3DA333C5373558FC811C68C
            1A87A1438643682A41FF9EDD39551801E1D94B5751B46871BEBBA103FBE1C4F1
            A3E9641236D63678F0D88F99911F565149D323CD71E982F9D8B67D33221848AA
            54C6E8C7AE53DFDE32F4EE6785D8B7C0D02032990C5D7B748297D73D364E0103
            3253E4CB971F1E050BA16C99B22853A61CEF80476D013289520BBF674F782B55
            F2413E63A67C0C43D0E4E42404BD08E2E7403E4E050309D2AC4A1457A11D33C9
            6BD754C035AF1AB6B934BA7BF8B145471FDC498D1173F39972147F99788DEFB3
            90EB688898F678FCFC563C7BE288E0604B0C187207A53C462057EE245CF35E8F
            41DD5BE3C13D67C4B3F3F7F65D8151439BF384788542843EFDEF63D78E923C70
            769A69910490AFC3CD99B6590BD7AFB8F2F49F759B8FA001D34ADD5DC6409626
            C6ED87AB7912BDAEBC0F58B9D2140B179B111D5AA06F60B07BD3067571F2DCC5
            AF3D33BF4BF961C190A467974ED8B66B0F95F70D0C09095E470F1801E2A67509
            68D044F1F5F8F708E2D838264CB4C0D11312A641196E93969AC3FBDAD9DA4EB6
            B5B1BDFBE0E183001A3375783B73F202676E268D6CF1A2F958B66229F2E4CD8B
            6B5E77D377BB75F3268CFF656C3A1F21F90E37ACDBCCC96AB323742C6A3ABF67
            EF2E4C9E3A9101B2312C2C043C7023164BB2044302B91E9DDA33B3FE1272E572
            C6C1FD4739A1AA98C6901EC4D1BEF778FA37FC8F8A8D979A65F5E8A5CB2A216D
            B86CB9F24C83F347527232D75AC95D60CACCE8522555983A2919854BABB22E83
            CCF2804877458432E09B35AD0ED26446183AE216F735523AD4CE2DA5111A6A09
            47A7645CBAB1118DEBF4E1E075E35A5E74EAFA188F1F3AE1E913075E5574FCDC
            36B46DD60D2E7912756068AEC4BD9B2E3877A600FCFDEC71FEAC1BEAD47BC15D
            275B3795C62F13AEA1FFD0BBE9004E0A7381220EFCF4CDCDCD273CF10B9AF795
            66E40F213F341892D4AC520157BDEEA07821B71DC9C9C9DD68E25175C1A1FD71
            3CADE6FF96E3A78F6C06FA88B0EF800956AE318152019E9A22168B5FB2D73177
            F7826B8E9D3EFFD8F0939245DCAF3173B83AF9F40EED3F86B2CCE4251377C992
            3FF0E7F2C51C1CAFDCB89D7E881DDBB6E097B1A3B8E99937AF2B7BA843780B83
            7973167EDA5025C650A6A462DA8CC9D8B2ED2FDED398885CB302C3C56C2C8B96
            2E600FB61ACD9A36C79A551B3E480EFB21214DB76193BA080A0AE42D4DFB0D18
            94DED3D9EBC675FCB9F80FDCF0BCCEFF4D5A2311B812812EB51868D5420EBB5C
            9AEC2F7019F816EF5C7241859AA1FC1E25454AE091770C0A1589C16F93AE30ED
            D50EF1CC14DEB1B90CCCCC1518F5F30D2C9C5B03B99C93B17CF571B46226B34B
            5E3D185A2871684F511ED156AA449837B32672BB24A157DFFB58BDA2322F0F5C
            B5EEA82ED58A2D883D7A5AE3D2153133B3852859B2B473ADEAB522C64D9AF42F
            4EC21F5B7E783034C8BC6953A41BFEDA10C3B425FE7451C3A247F7A3FF3F60C8
            1E3C197B70878EB0C2D56B6218385319C0C4DBDADAF7924A8D4F5EB8EAA5224D
            49CAB64DD36B0EF56A56A91C1010E0A5D1A83171C2640C19368A87C677ECDC86
            DF278F6726A41CDECF9EC3C1DE816F3FA85F6F9C3C7114237F1A837265CB63C0
            E0BEA85EAD26D318777C768B53325F3B766EC3B5CCB7C19034BEE62D1BF340CC
            F469B31828F5FCEC4B441A66EB668D70E38627A6CE988DE12346BDB34D970E6D
            18287AF2F7B44064EC5648E4AD0BE626A1653BF93FE278A4A8F4B9D3EE781164
            CD4CDD7C58BBF930B324CA63C19C1A3C1AFDC73CF6F7BC1BDA777ACA80FB39FA
            766FF74633B4649AF8CA0AB0B692A180471CDA34ED067B0719EE05ADC4B06E94
            1C5E0813265FC6E091B7F1225084262D6C78C9A7A5A5E5FE47CF023A7CFEA873
            243B92038619A47983BA6E3EBE3E4FD56AB594CC6597DC1A1C3B1C073BBB6C34
            A3FF54A1E7942948B719F8516DEBBEFD524ED44A661E03414F3353B3E5F71E3F
            DBF5BE9FB76FD58C99634FA40AA5E2050322A75A356B737207EAD247C193F295
            4A335C5472137AE3E6ED888808C7B429BF23312101C78F9EE6FB68DBBE253327
            4B73A2D6CF6D734A80D7B24D333C7FEEF70E181220B915CCA3F34DDE7BF28F2E
            D7539F2768D6A211D70E435EC76609DEB61612B8B9B9A377CF3EC89FDF0D67CF
            9DC1AEDD3B788A0F6D9FCC169C5A3515F8EDE71454AEA3FCFC541823BC49C067
            7F435E5AF1A874973E0F31BC4F4B785E77E5B4642D5B3F439F6EED71FF9E33C6
            FCE2C9EE859AA7555130452C56C3C9723C67F4098C588475AB2A32502D879AB5
            5F62E1CA5358F1A729162C32E37ED6A2458BBB9F387B31F01F5DC01CF9A8E480
            E15B52AE64D13E3131D17FD17B7265D9586B71C72B86D7987E29A1FD52F3F69F
            4659F2B4123D0E6925C692308F821E9D8E9FBBE8D9B0760D9CBD7CEDC3FB91A9
            50A4B8DB31994CD6DCCCD4144F9FBFE460480D993AB66D012FAF1BDC242650E2
            0107A672F6EDD31F3367CC85B7F77DB4EBD01AA54B3330DCF5F960989A9A8AC6
            4DEB212A3A2A4B30CC5720376C6C6C70FBC67D48A4D2CF3A0699FE0B16CEC1AA
            D52B50AC78099C3873E19D6DAE5EBE8CD60C2CBB77ED85E5EBD6EBAE03FB5D48
            F02B3462E3A3711A84346F4AD759BF3A11CECEFFBC277426D147A9B52A014F0D
            D2304D32E0B92DA712A3549E02EEB1E9DB3DBC9F8B976AA633D4D06FE93DBB4C
            E54AD823368E7CB1C67ED656D6C55AB4EBA8CEA1FAFF7725070C33C83C36D9C6
            B357996285C6C427C42FD651DA03F9F2A9718269881656DACFAFABD5BBC90EEC
            91E2EF5D52787A19F387835E66666677D8A49FF1D0C7FF286DD3B076750684D7
            B3B5DB4A654A7488781DB137353505972FDE40B1A2C5F8E7D1D1D1E8D5A71B6E
            DFB9C50191C072CA9419E83D6010EF81FCF09137DA776CFD8F3543E271ACD7B0
            164FEBC90A0C4B9629C2CBF476EDDC878A152A7DD631C84759A26801242727A3
            44C952E8DCB53B1212E291274F5EB469D79EB6609AA93F2A962E8E1E3D7A63F9
            DAF5E97DACD51A35D7801F3DD251E48BC5E20823A66E2525A53A91C95BA3BA02
            3DBBA7A155FB34DDBDFD378266192F6DC6F96348B3CA74B260E72242A5EA76BC
            C69B5909DBBA74EDDE6BFAEC9CD8C9BF2D3960F896646827F027333747D267A4
            C9515E1BD5DABAB8E8677376A3935A5D923155894C9F6D0125F5C730E2915235
            03A99002F90B0C397BE5FAA97F32668FFC2E5AB9428E8AE52A61CFEE03E926A4
            C0D81857CE9F83F7A3071831EA67AE1219720A6FDFBE85CECC84238022A0FA5C
            9F61484830AAD7AA0C1393AC526BB418326C204E9D3E89AA55AA61D7FEC39FD5
            8C9E9AB95BDB48C134240EB0E935E6B458B1F7BDFBF5C7A4A93350BA586128D9
            7578151CCD343325DF26986986B5EB55D7F7A6D6B2F1390CB9FBD0676D8D4AE5
            FB858685CC639FD9B17B227476D660DC68A6E5369233D355C3F3D0BF0A410603
            C859B3CDB17A8D09A7EBB2B5B5EF7DFFF1B3AD5F61243F9CE480E107A474B142
            FD9806B2911E2202444AB76BC21E162A31ABDB589E9E02F3CE6A4F66528A00C7
            4F18E3F031296EDD12F36A0BEA73425A9A8989E951B191D18299D3E77AB5EAD4
            4155BF46559CBF76E393C7377AD8102C5DB506E54B15FB393A3AEA0FD2EE2E9E
            BF867CAEF9D2D35504FACCEC8C1DFCE8B3CD7F6DE09DEC3AB6EF8C3F162CC9D6
            F13860124AE8BBBA11E559F0CBA00F8021B0F4CF4558B26C115CF3E4C3B55B77
            D335B64F11015B3D6CAC4D184859F0D6ACDDBAF5640B8A116E31ADF7E4C96350
            29553033B760D757C4F31A5FBD8AD281A18931CF1678F9F205D77C2512499C5F
            5088AD61BFAB972C12AFDFB4BEB23C4D3E385526EB9196A6D625731752F3FBDC
            AB870C66D4C7E5DF26CBCD2074DB9AB6B4E1A595F4BE76CD9A2EDBF61C08FBFF
            1CFDC7961C307C8FB46FD90CFB8F9E40ED6A956B878606FFAD542A9DE973A2A2
            A3BC3A2D7B3888DD9A186D28D0425752A910701E3B5F3F23F8FA8A784044421D
            48459CDA3ADCCCCCE26295CA557FDEB075DB3FECF0FE469A35A88B90B060C7E4
            A4E440364633B67FEC3974F483A0431A63F93245F13AF235962D5D89B66DDA67
            FEDED01E8E01883C3515098909484D49417C7C3CEE3FB887E701FE1C6C2922ED
            5EA020DAB46F01A9448AAB97DF05C3250C0C0910C97C3F7581BAF5BD9BCDFE76
            054CA6B1B031907FB36EFD9AA858B1124ED33E887792AF4E22AEBD4D9AF00BAE
            5CBEC835C69E3D7B63C84FA37922F995AB97D0AD4727F2BBF17D393A3A76B8FD
            E0C9FEAC8E73DBF3A664D0A09E13121393BA312DD2552ED748A88D038162CF1E
            69285E54C57EAF86C8D0D0EBDFD01AD9E944840AD1B41555F408606E61E1F3C4
            37B0588B46F5702C0B3F698E7C59C901C30F88B39D05C2639218E0D433898A8E
            6C92929232392525B96C3AE30B5701DFF073F24F04BA5693A4A54824526F1313
            E98EB4B4B443AEAEF9234E9DBF94445B0DE8D9031BB66DFFA2632DE496F7BA5C
            9E568D00A15DDBF6F873E53A40A17C27A199B4C28183FA308DEA38FF2E3432EE
            4D6DAFDEB7151B16C100E8010E1F3D843B776F23292991375497A5E9EAC40C26
            35999E9696963C3841C7BD71ED365C5CF2643ADEB4E993B179EB26CC9A391725
            8A97446848487A12351DDFDEDE9E9BEA46E626BA1F705206553A409289BC66D5
            32FC3E65027E1A3612D367CF7FA76286C6632833A4200DFD967E57AD5A798485
            85A66FE3E8E0D8E2D683C7C7DFBE76CD1AD6C389B33AB0E9D3B593F1C3C70FF3
            A8D59A766969B2DF5253D3EC357A3709D19D356EA840EF9E32B850932F1A2BF9
            18FFA9D698A165E9C449E6BCCF0A69B20E8E8ED56FDD7BE4F945274A8EBC5772
            C0301BD2A86E4D9CB97895BF1F3164A0DD9D3BB72A2895AA520C182DC0C9B605
            5451A1911A4B92D94319646D6BF3ECD2F59B4F0DBF6FD3AC110E9D38F3AF8EB1
            4EB54AF5835E04713613CAF9737272C282B98B5096696F3ADF25F5728EC1A2C5
            0B70F2D4717DCDAF10B973E7469142453988F83C7BCA196CC8D4A4123F09536B
            45221D03040117557CD0E7544E67207D204024C0A1200935976FD6BC35B46A55
            FA6F7AF7ED81ABD72EF37DBE9DFB67F83DA5CBE4CEED8222858BA268D1A2285D
            AA0C0ABA17E4C112B1B929562CFE0333674D47218F42BC2DEBC74C6D2A1F1C32
            B82F8E1C39A46F5FAA3598C929CC4C36FFA4EB5ABD7285A8A8A8BE0C18ABB1FD
            1496A5A94DA8B7B293A306756A2978AA4ED122347E0D074B1165A966536B4C8A
            1170B6706F6F31366E36C193A7469C888269B20F5DF3E4EF75FEDA75EF0675AB
            E3DCC5EC05D372E49F490E187E8254AB50069E771E647BFB91830761D9DA75FF
            B7F11529E0EACBB4B742867F9336646AFA86BA51C1342A8552F14EB024DDBFF8
            81200AF921A74E9EC1AB5CA8DAC4A0DD1108B66ED38CD70B77EDD21D0B962C4B
            0F92D07E3B766987BB776FA7FF9B34C88CDA2A815446361D8310E89A999A61C4
            4FA32067203C7BCE745E6EB771FD66D4AFD708EF431CF2138E1A32886BB504B4
            7998A64AD536376F79F1FDDBD9DA0DBFFFC477D5A75EDB26F56A89030203A479
            F3E4AD14151D35802D0C5D08E089A0416CA4658B89CEA74CA5801E0555B0B5D5
            E87A526421B234E0C103312778A5A46AA53E82CDAC88182747A71E161616678F
            9FBDF885737E72E463920386DF91942D59B46B6C4CF4CEF77D4F0F1DF9C1E841
            A5FC49A2E222458D9851020244996603911D383969E0E9490FAD0ABF4F9C8A61
            A347BFA395914FAF779F6EB878E902010D18D0A46F43E0D3BA6D73DE539A7C8A
            C3878F641A9F07ACACACD2A9C6A824D0EBE60DBE8D8FCF53FE5946ED91C056C4
            80910226F41B024EF27352743A73599F00915191F869E410EED7A412C18A152B
            E3C0BE233C0D87C6416C3E128989D7C9C327AB152C5DF293BD7E1D5A35C3BE23
            6F48635A3669582838F8655536C6320C783DD82B371BA28B4623706096834063
            F0850AD295732E2291908D5D440E9630763EAFD8397BDB5ADB1EBE71CF9B6715
            D4AF5915E7AF7E7A402D47FE99E480E177228DEAD682324DEE10F42AC88F8186
            75C6EFE821A4CA16F2750DEC970AA75CBA8A9ACCCCD799F7C76328EC372D5BDA
            E0E163E2DC53E0D58B08080599CD5C02C3DDBB7662F4CF3F31AD4F83FB771F23
            B7B3AEA1158141990A2590949848FE3ADC7AF0F8BD262E011D55CEB46DDF8213
            CC660444FA8E694DBC0E99B621ED32ABBC481D6BB7869BF37D7AF7C39CD90B74
            FE4376328F9F3C46D3E60D0840436D6DED8ADEF17E92F425AF7FDBE64D042F18
            D832935FC0C62BA855ABB644AB8647E08B40EB8888309146AD11383A3AA90BB8
            BB2748C512DFF397CEC9D939686DAC6DB5152B56D02E5EB1E6FF304B72E44392
            0386DF99942CE2BE392121A13701000160E54A4A4E54D08CC855A9175576BABE
            1984CD8ED85821CA55B2E3C0366DEA4CF4EDDDFF9DCD525252E0EAE6CC4C4413
            CC9FBB08DDBAF6E0001419198112A58BF2B49BD6ADDA62D9AA751FA40B13E822
            4FF873C942CC9A3D8D187A28211DAB56AC45EDFA8D78B4559E90CC7D9E878E1C
            C4A95327383092A6A5627F4DA426183D6A2C3A75E882BC05DD33E53412883668
            5C9B9D4FAC5A2A91E46ED1BC55E4823F977FB5FB346BD2244C9A35EBAB1D3F47
            DE951C30FCCE84692562775767058104B1775FBB1EF3CFAA2A1880F6EF638573
            E78D51A850219C3E71FE5D266DA9317E1E391CFBF6EF41FD7A0D382D98D05882
            4D1B56E3F749E3B939BB6ECD26346ED884E1F0C79198FC7E53C7FF86BFB66CE4
            C120229268D8B8D93BB99224F7EEDE819F9F2F2F2BE4BC8D3C27F4DD6390B9DD
            B8597DBC7AF512853C0A573A7BF9DAED8F0E24477E28C901C3EF487A76EC806D
            7BF7A1B887DBBAE494E481A9A9029C39417D9795FFA8B1D50D2F31BAF6B0E6C0
            D4BFDF40CC98B7E01D73F7C5CB17BC469934C809BF4D62E054065DBA75E09162
            8AE89E3E791E6EF90B64FBB064EAD6AA530DE11161DC3FB8FBE0912C4D6C8150
            A46BE94A152619F21539604B74BDB429C5885D0F346A528F47BE1D1C1CC73333
            79FED7BE5F39F2DF921C30FCCEA44543F6C087875589898DB94EAEB5AA9595D8
            73F01FB63260DAE1C86196D87F480A915085450BFF44C78E5D32830F336F478E
            1C824387F6335CD2722A7F8944CAC1B06EEDBAD8B6636F26CDEE6342BEC87367
            4FA35BCFCE1C4C435FC765BB948F7E4B9C879B36ADE7AC3D9D3A75855C9EC683
            2804D6E6E616FB9FF805E65062E54826C901C3EF548AB8BB06C964A9F94943BA
            703A166E6E9FA81A1ADA7B1AF08BCD94464D6DE1E7AFCB4F5CBA78395AB5EF98
            C90748A6EB9CD9D3B16ACD0A9E1A439A64DE3CAEF0BC7693F752FE542173D9D9
            DE92FFF6D4F1732859B254B67FC7CE9F133BE80A69443C399CFC86743D6C6C6C
            263C78E297C37C90239924070CBF536952AF76F967BE3E77C87F3676740A468E
            48FD78A584CE0DC7FB0653AB4C625C6EDFE549FAEF02024568DBC106098942A6
            F9297960A36993E69CC23FBD628481CD9C79339969ED89BA75EAA15F9F813C95
            E6738440AD4EF5CA9C1CF6C09E23A85CB94AB67E477EC15A75ABA5FB3689D895
            5C06BA2A43013C0A7A943C7BF9FAE36CED2C477E18C901C3EF50CA152F8C7B4F
            7C51B840DEB36969690D2C2DB578E8130DA4BEE707FAB69F7FFF550AFB7697E0
            2CCE89F112903277E8E40E142B11995EAE171D29E44DE35F4752EF15016F2DB0
            62F91A942C5F2EDDA7C7BBEB6975B93B1FAA3BFE98E834BC7C484A4AC0FE6C82
            2199EB3F8FF909FB0FEE4BFF6CFCAF29983ED39CB754158944C1767676C52A96
            AF98BC6AE3E6AF7DAB72E43F243960F89D4A859245A015089A4745451D4B4D15
            62FDDA44B4699B96C9EC0D0BB14460800D76ED28C5A9EC93938D616EAEE0E047
            FD383A777B8C4245B2687DC04CE883FBA5D8B0C90477EE1941A1484083FA0D31
            78E030546180656E63CB33BCDFD7E8293B421A5C5252125CDD72F1FC42EAF142
            440D1FDA9E64F7DE5D1833760433D38D79D2F85FEB1370FAAC044B979972EE48
            0B0B8BCD4FFC82FA7EEDFB9323FF3DC901C3EF54162F5E8CB163C7A268C1FC2F
            5352525C1D1D35B8713506467A53989A932F985613EB5757D0619D568031BF7A
            A26397C7B0B54BE57463D911E269FC65BC0527C1E53D5AA452B46AD906E37FFB
            1D36D47B250387E2A708697833674CC6EA352B61C9CCEC67BE2FA155641D4021
            4D343E2E8E075B9E3E7DCC2B6D4A145733D33A8E9BC89DBB5BE3F61D31AF5E99
            337BB149975EDDBE7467EC1CF90E24070CBF73A95BA34AA9A0A0206F72FC2D5B
            9288962DE56F7C87A640FBFADDD0B5C74374E8FB58977E43786350E868769009
            CDC0E5C2E90270738F875BC1D8CCBE4706AA11C1428C1C6B898B978C39C59946
            CDB44210BD597154AF5685F748D66989BCD529CA962987DC2E2EB074B003D232
            6B905CC3938AB175FD7A4C99F63B8FFEEEDF7308152B578556ADCEBC9DB118A9
            F10958B97A19962D5FCABB1AE6CB078C199982AE7D755AF0E573C6E8D9D78A97
            1DDADAD88EBCFFC47779BB96CD71E0E871E4488E64941C30FC8E65C9ECD9B874
            ED8AC0D7EFD91E992CB503F9CC7C7DA3332561C7449BA266A501D87B64378A97
            C84CB39892628C954BAB60EB5FA5795738A9548583277622BF7B5C96C118A552
            17A4F0796684132725781E20C2C5CBC6E9DDFE0C98C7091B346A74E9D40DE3C6
            FEC619760CB5CA7171B118397A38EFB34C3260C0604C9E38F59D63C5C6C660CD
            DA95D8B67D2B88E59BF64D4DED274F4C36F49441448410E5ABD873C668B1D838
            A85AB56A4573E7CE2D9FB7E8CFAF7D6B72E43F283960F80348D78EEDAC6EDFF2
            7A2D932925CD9B2AB07675C21BED8F0845432CF0E49123EAB70940A89F254E1E
            2F84AB97F2E1C13D67EE47245F9BAB6B02BAF47C88D5CB2A3373FA3A7A0E7EF0
            FE969B0446860E72741C069C694902DC7B20C6531F23DCB963C4CC5663F8F96B
            982629473E5717A63D166026AD31276DA0DC444ACDA1AE7A0D1B3602D36C214B
            4BE3409B9A22C3ABE070848446238F8B00AD5A68D1B4891C35AB2B21B1D2B352
            B3E3A6B0E3356F6DC329B2C46271B28747E1C227CF5DCC618CCE91F74A0E187E
            E73267C60C4C9C3205F56A5429131814789F3AB61DD8138F326594990223AF23
            CC317E5C635C3CE7068944C55B599A9A2A7944B966ED17F863F5299D462901BA
            34EB8C761D9FA253D7479F372823DD2BE1B580819F310FC2DCBD67CC5377488B
            241723BD741AA5002291966B7BF472B0D7A055CB3474682B47DE426A9D59FF56
            0A65428210D56AD9F2D6A02291509E2B57EE9A37EEDCCF29BFCB910F4A0E18FE
            00D2A2517D1C3B731E250BBBAF8D4F4818646E0EDCB911C3B9F70CA2D10870E9
            821B860D68897E83EEA1794B5FB8E64FE0A6F1B8914DE0C64CE3D1BF7972E051
            A984B8713D2FEFF14B7E471EA1FEF4D6266FDA631A5ED4CA980158AA4C0059AA
            EE2F99BF44784A6335632F89855607E204806F9BEAC680FF5323F4E96FC93447
            D2088DD40E0E8EB5BCEE7A7B4E1C371673FE58FCB56F458EFC8725070C7F3029
            E2EEEA9B9A2A2B54839995DB37C767A2F1A2D970E18C3B56FC59199BB61F80B5
            B52EE89A9A22E6FD5CC85C8E8A34C3DFDB4BE1B1772EFE1D8168951AAFD0B8A9
            3F1C9D5260612DFFFC3AE87F226CECA7CF48D077802588E650281426E4CEEDD2
            E8FAAD7BB7FAF5EC814D5FB8CD428E7C7F9203863F88F4EAD6115B77EEA5F600
            B95FBE7AF94CA5D298FF3A2E45F0D3CFA99993B199F9FAF89E13A6FD5E0FBB0F
            EF02EF6525028283AC30FEE746DCB7989A62CC674E529231DAB4F78173EE2428
            E4229C3B53103F8DF2428FBE0FFEBF6D36D9587E1A658963C7249C15C7C4C4C4
            D7CECEBE9EE7EDFB61BF8C1A85857FE6044C72E4E39203863FA0D4AA5CA17970
            E8AB638989C0B6CD093C009109BC0464AE8A39A5BDA99982819E04D5CA0D8242
            21E29AA4B1B11A35EBBCC0A4E997E0EC9EA4D3049999AB4E12A262E9A158B2FC
            046A370AE2E67374B4292412352C6C33A4F47CA9EE72026A6520C0B8F1163870
            48C2FB514BA5A617AE5CB9DEB84D9B162ACFDBD96FD19023399203863FA8942E
            56A8577C7CDC162280BD762906B99C35EFAD5D7EFCD0099DDA76865A451DDB52
            B062DD31142F1189417D5B63E0903BA856E715340A01962CAC86658BAB62D1B2
            53E8D0E33107C3F2C586F1600CF91C7BF6F1E6C1905A75826062AB7C530D4360
            FA19E0A862BF6BD1DA8647A82930646FEF30B949E3C673E6FCB1F4FFD4E53847
            BE27C901C31F50DAB76C8EFD478FA37821B7754949C903A5522DAE5C888393E3
            FB9D7DEB5757C4F2A55570EFF14A18596A785ACDA9638530A84F6BB46EE7835F
            265C656024C3E58BF9D1B4B51F37AD572FAA8C8573AB73CD907C8BE4839C3EE7
            3C37A70920F3BBC5213EDE0465CA86A37173FF4F62E00E0B15A15B6F2B3C7F2E
            62DAA051AA93A35337CF3B0F0E7FED6B9B23DFAEE480E10F2E250A17D8929494
            D42B8F8B1AD7AEC4BE9FD986CD9473A70A62FEEC1A3CDABC667925444599E9FB
            8E9079AAE6A40EF90BE8FB309B02550A0F467C9C949BD6F23423CCFC5F7BE71A
            D36619C5F17F29058A76D00E045BE4362E03C6081395CB4418D7817618A751E7
            62D09065C6F841A35F8C89CE4C2599F1837351962C020923A038B7882430D20F
            0A0699DA7959B9E8A4C8A5632054A05CD6B73ECF5B988C714768D69D5F72F2BC
            4DF33E79F3E4CD3FE779CF73CE296EC08142BDE8097271E4C6EF9DB0C8A0D832
            B9B20766730D0EBA604F960A236609AFA23D9698981C5A5E597D2529210ECDAD
            7A472F29718B4262781BF350F2FDC8C84C773D5D51F995D93C9E1D1C64C5D99A
            617B9BCB859031511B95E2EC1751A8288FC38516B578FCA6E0B1DF5074B8155E
            CA89EB62DADBA3C09E94E7C5ED2B871FC7C9D7B62326D684E4946E28B78E431D
            F68F3D7823B68E5BC103BB00CD4DF6F4BAA929B1495447585844526D7DE3E023
            B9993857D7E0E825256E61480C6F731277C5E1BB1FF4FCC84DA3C56249D7A805
            B6651E8454BAF47D3C3DAFBA72079E2CBC683F8C3D4FCC6AAAA3F1FA6B59E235
            F7FEF63D6AC0D163F568BFE4839213F7A1B12104BB538D385E724E3CB2B32C4C
            083BDAA4C8D8AB12ABFCCBE5F23F0DBF1B431CBD7E84F3406248E0815D3B111B
            1BE3DED4D45C65368F697DB6DA70F2931124244D2F9E72C7619EE282CDA69890
            1E2ED48AD92CB3E7183FF8A816B90F77D87FB8B1ADF1B0AB28A01EF295B50230
            185CB1779F12829547B365C361DB22C2EB1A75575F79F105BC7F7CD53DE109E2
            26480C0991C47B998778418FE8F0E02FC7C6C6B4A3A3129CF8D08C27F6AFA1DA
            15D3B943070BC422B1434372D804094A4F7F86F0C841B8B9CF09D2AC3460C253
            02D354E8EE968A25FC7332B3FD3EFEB4EC8AA3D78C702E480C891BE0D563E2A2
            C3DF309BCD47AC561B72B2A7D8B67644CC515ED5F19799EAD97F9BE4E8F96B0B
            7EBEE887CB7F28D166F0C183A95D4861169530604FE35BCA3974075E7E4981CA
            2A396432012A95EAD04FBFB697E465A4A1F6BCCED1CB4538112486C40D64A5ED
            46BDEE1BC4EFD8FEEAD0D0E011418087AFAF0D1565C3888CBAB6F6543BFE0D92
            0BA400E86A43F1795534BE6FD1E064E919C4C69B169DB7BDC315795A2578633D
            4F4FCFA64B9D5D298E5E23C239213124162524C07FBB2058BF65CEA24A26030E
            3C65C15BEF8D0216AC2F83847B99ECCD9B9E7011BDBD45F1041ED77AA3A555C6
            BF3DF62A145E61BFB4755A1CBD2E84734262482C4B90DAB79A0DFB272725B827
            40C0B1623352D3A7ECC768362AD78309A65E2F435A86125E5EA2F21EECEA1DA0
            6A0BC4864162482C0A134130019ABDE6DD9874CCE43C421C117E0DA74E9AA109
            B22E1C515E27BC96614EBE0A1D9D623E74197B8E671DBD1E84734362482CCBAC
            28B291572F2C6656240870E7F506F373A7F0CCD31664664C4222873D20B21E6F
            916DC787072478F3ED3B5173C6831774EDB4495C222536ABD0D57BD5D14B4138
            312486C48A08F4F787B1BF9F09E25D6C076B5330BDE35B56EDECFFBC86605EEE
            249E2B1CC7CED839E1E1D57C5B6442585E2AC7D177EFC0C4C4F557D39F09B129
            50E307638F69159311C4EA203124D60CF314A3D9C07B101731F39A661AC83BD4
            F9FB09080DB542E92540A9B4C1DB5B80D4658989786F9371E0EB3A0FF4F5F3C6
            53A2828E304B64426898BB5D27888D82C4905833F3BE2916B0E11D66DBF05F3B
            A8B5C0DD4A5E883095CD4D916362D3203124D68546A3829B20C3E53EFB169689
            22EF0710C32C9E59F2CC18BCCC344666BCBBD479663A26823FCECC451E21B169
            901812FF3B816A1F18E7053B02D4BEEE5236B04B05EC5B601313BAF19BEEBDDB
            17C63E124062F32131241C4AA08609670F458909C7F32FE008C2198BC0B0EE00
            00000049454E44AE426082}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object PageHeaderOrgao: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Picture1: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
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
        object Memo4: TfrxMemoView
          Left = 68.031540000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897637800000000000
          Width = 612.283860000000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 5.000000000000000000
          Memo.UTF8W = (
            'SISATER Dektop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo6: TfrxMemoView
          Top = 56.692950000000000000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
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
      object PageFooterOrgao: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 385.512060000000000000
        Width = 680.315400000000000000
        object Memo7: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
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
        object Memo8: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
        object Memo9: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
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
        object Memo10: TfrxMemoView
          Left = 340.157700000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
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
    end
    object PageComissao: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeaderComissao: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Picture3: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
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
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Width = 612.283860000000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897637800000000000
          Width = 612.283860000000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 5.000000000000000000
          Memo.UTF8W = (
            'SISATER Dektop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo13: TfrxMemoView
          Top = 56.692950000000000000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
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
      object PageFooterComissao: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 272.126160000000000000
        Width = 680.315400000000000000
        object Memo14: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
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
        object Memo15: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
        object Memo16: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
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
        object Memo17: TfrxMemoView
          Left = 340.157700000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
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
      object MasterDataComissao: TfrxMasterData
        FillType = ftBrush
        Height = 60.472440940000000000
        Top = 151.181200000000000000
        Width = 680.315400000000000000
        DataSet = FrxDtStEmaterComissao
        DataSetName = 'Comiss'#227'o de elabora'#231#227'o'
        RowCount = 0
        Stretched = True
        object ComissodeelaboraoPAR_VALOR: TfrxMemoView
          Top = 41.574803150000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'PAR_VALOR'
          DataSet = FrxDtStEmaterComissao
          DataSetName = 'Comiss'#227'o de elabora'#231#227'o'
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            '[Comiss'#227'o de elabora'#231#227'o."PAR_VALOR"]')
        end
        object Memo75: TfrxMemoView
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            'COMISS'#195'O')
          ParentFont = False
        end
      end
    end
    object PageSumario: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeaderSumario: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Picture4: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
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
        object Memo18: TfrxMemoView
          Left = 68.031540000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897637800000000000
          Width = 612.283860000000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 5.000000000000000000
          Memo.UTF8W = (
            'SISATER Dektop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo20: TfrxMemoView
          Top = 56.692950000000000000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
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
      object PageFooterSumario: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 272.126160000000000000
        Visible = False
        Width = 680.315400000000000000
        object Memo21: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
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
        object Memo22: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
        object Memo23: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
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
        object Memo24: TfrxMemoView
          Left = 340.157700000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
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
      object MasterDataSumario: TfrxMasterData
        FillType = ftBrush
        Height = 60.472440940000000000
        Top = 151.181200000000000000
        Width = 680.315400000000000000
        OnBeforePrint = 'MasterDataSumarioOnBeforePrint'
        RowCount = 1
        Stretched = True
        object Memo25: TfrxMemoView
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            'SUM'#193'RIO')
          ParentFont = False
        end
        object MemoSumarioTexto: TfrxMemoView
          ShiftMode = smDontShift
          Top = 41.574830000000000000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          LineSpacing = 12.000000000000000000
          ParentFont = False
        end
        object MemoSumarioPagina: TfrxMemoView
          ShiftMode = smDontShift
          Left = 582.047620000000000000
          Top = 41.574830000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Consolas'
          Font.Style = []
          HAlign = haRight
          LineSpacing = 12.000000000000000000
          ParentFont = False
          WordWrap = False
        end
      end
    end
    object PageApresentacao: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeaderApresentacao: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Picture5: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
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
        object Memo26: TfrxMemoView
          Left = 68.031540000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897637800000000000
          Width = 612.283860000000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 5.000000000000000000
          Memo.UTF8W = (
            'SISATER Dektop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo28: TfrxMemoView
          Top = 56.692950000000000000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
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
      object PageFooterApresentacao: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 272.126160000000000000
        Width = 680.315400000000000000
        object Memo29: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
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
        object Memo30: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
        object Memo31: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
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
        object Memo32: TfrxMemoView
          Left = 340.157700000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
      end
      object MasterDataApresentacao: TfrxMasterData
        FillType = ftBrush
        Height = 60.472480000000000000
        Top = 151.181200000000000000
        Width = 680.315400000000000000
        DataSet = FrxDtStProater
        DataSetName = 'PROATER - Principal'
        RowCount = 0
        Stretched = True
        object PROATERPrincipalPRO_APRESENTACAO: TfrxMemoView
          Top = 41.574830000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'PRO_APRESENTACAO'
          DataSet = FrxDtStProater
          DataSetName = 'PROATER - Principal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          LineSpacing = 12.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Principal."PRO_APRESENTACAO"]')
          ParentFont = False
        end
        object MemoApresentacao: TfrxMemoView
          Width = 332.598640000000000000
          Height = 22.677180000000000000
          OnAfterPrint = 'MemoApresentacaoOnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'APRESENTA'#199#195'O')
          ParentFont = False
        end
      end
    end
    object PageDiagnostico: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeaderCorpo: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Picture6: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
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
        object Memo33: TfrxMemoView
          Left = 68.031540000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897637800000000000
          Width = 612.283860000000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 5.000000000000000000
          Memo.UTF8W = (
            'SISATER Dektop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo35: TfrxMemoView
          Top = 56.692950000000000000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
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
      object PageFooterCorpo: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 374.173470000000000000
        Width = 680.315400000000000000
        object Memo36: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
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
        object Memo37: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
        object Memo38: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
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
        object Memo39: TfrxMemoView
          Left = 340.157700000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
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
      object MasterDataDiagnostico: TfrxMasterData
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 151.181200000000000000
        Width = 680.315400000000000000
        Child = FrxPrincipal.ChildDiagnostico
        DataSet = FrxDtStProater
        DataSetName = 'PROATER - Principal'
        KeepChild = True
        RowCount = 0
        Stretched = True
        object Memo40: TfrxMemoView
          Top = 79.370130000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          AllowHTMLTags = True
          DataField = 'PRO_ESTATISTICA'
          DataSet = FrxDtStProater
          DataSetName = 'PROATER - Principal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          LineSpacing = 12.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Principal."PRO_ESTATISTICA"]')
          ParentFont = False
        end
        object MemoDiagnosticoMunicipio: TfrxMemoView
          Width = 332.598640000000000000
          Height = 22.677180000000000000
          OnAfterPrint = 'MemoDiagnosticoMunicipioOnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '1. DIAGN'#211'STICO DO MUNIC'#205'PIO')
          ParentFont = False
        end
        object MemoEstatisticasMunicipais: TfrxMemoView
          Top = 49.133890000000000000
          Width = 332.598640000000000000
          Height = 22.677180000000000000
          OnAfterPrint = 'MemoEstatisticasMunicipaisOnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '1.1. Estat'#237'sticas municipais')
          ParentFont = False
        end
      end
      object ChildDiagnostico: TfrxChild
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 272.126160000000000000
        Width = 680.315400000000000000
        Stretched = True
        object SubreportDiagnostico: TfrxSubreport
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Page = FrxPrincipal.PageSubreportDiagnostico
        end
      end
    end
    object PageCapacidade: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ChildCapacidade: TfrxChild
        FillType = ftBrush
        Height = 41.574803150000000000
        Top = 245.669450000000000000
        Width = 680.315400000000000000
        Stretched = True
        object SubreportCapacidade: TfrxSubreport
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Page = FrxPrincipal.PageSubreportCapacidade
        end
      end
      object MasterDataCapacidade: TfrxMasterData
        FillType = ftBrush
        Height = 71.811038270000000000
        Top = 151.181200000000000000
        Width = 680.315400000000000000
        Child = FrxPrincipal.ChildCapacidade
        DataSet = FrxDtStProaterFuncionario
        DataSetName = 'PROATER - Funcion'#225'rio'
        KeepChild = True
        RowCount = 0
        Stretched = True
        object MemoCapacidade: TfrxMemoView
          Width = 680.315400000000000000
          Height = 22.677180000000000000
          OnAfterPrint = 'MemoCapacidadeOnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '2. CAPACIDADE OPERACIONAL DO ESCRIT'#211'RIO LOCAL DA EMATER - PAR'#193)
          ParentFont = False
        end
        object MemoRecursosHumanos: TfrxMemoView
          Top = 49.133858270000000000
          Width = 332.598640000000000000
          Height = 22.677180000000000000
          OnAfterPrint = 'MemoRecursosHumanosOnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '2.1. Recursos humanos')
          ParentFont = False
        end
      end
      object PageHeaderCapacidade: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Picture7: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
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
        object Memo41: TfrxMemoView
          Left = 68.031540000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897637800000000000
          Width = 612.283860000000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 5.000000000000000000
          Memo.UTF8W = (
            'SISATER Dektop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo46: TfrxMemoView
          Top = 56.692950000000000000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
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
      object PageFooterCapacidade: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 347.716760000000000000
        Width = 680.315400000000000000
        object Memo71: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
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
        object Memo72: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
        object Memo76: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
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
        object Memo83: TfrxMemoView
          Left = 340.157700000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
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
    end
    object PagePlano: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterDataPlano: TfrxMasterData
        FillType = ftBrush
        Height = 332.598613150000000000
        Top = 196.535560000000000000
        Width = 680.315400000000000000
        Child = FrxPrincipal.ChildPlano
        DataSet = FrxDtStSubProjeto
        DataSetName = 'PROATER - Subprojeto'
        KeepChild = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object MemoPrograma: TfrxMemoView
          Top = 30.236208270000000000
          Width = 52.913420000000000000
          Height = 113.385885350000000000
          OnAfterPrint = 'MemoProgramaOnAfterPrint'
          OnBeforePrint = 'MemoProgramaOnBeforePrint'
          AllowHTMLTags = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapY = 11.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            '3.[N1].')
          ParentFont = False
          WordWrap = False
        end
        object Memo123: TfrxMemoView
          Left = 52.913420000000000000
          Top = 68.031540000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Projeto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo124: TfrxMemoView
          Left = 143.622140000000000000
          Top = 68.031540000000000000
          Width = 536.693260000000000000
          Height = 37.795275590000000000
          DataField = 'PRJ_NOME'
          DataSet = FrxDtStSubProjeto
          DataSetName = 'PROATER - Subprojeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto."PRJ_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo125: TfrxMemoView
          Left = 52.913420000000000000
          Top = 105.826840000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Subprojeto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo126: TfrxMemoView
          Left = 143.622140000000000000
          Top = 105.826840000000000000
          Width = 536.693260000000000000
          Height = 37.795300000000000000
          DataField = 'SPR_NOME'
          DataSet = FrxDtStSubProjeto
          DataSetName = 'PROATER - Subprojeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto."SPR_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          Left = 52.913420000000000000
          Top = 30.236240000000000000
          Width = 90.708720000000000000
          Height = 37.795300000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Programa')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          Left = 143.622140000000000000
          Top = 30.236240000000000000
          Width = 536.693260000000000000
          Height = 37.795275590000000000
          DataField = 'PRG_NOME'
          DataSet = FrxDtStSubProjeto
          DataSetName = 'PROATER - Subprojeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto."PRG_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          Top = 181.417413150000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'SPR_JUSTIFICATIVA'
          DataSet = FrxDtStSubProjeto
          DataSetName = 'PROATER - Subprojeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto."SPR_JUSTIFICATIVA"]')
          ParentFont = False
        end
        object Memo137: TfrxMemoView
          Top = 154.960730000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            'a) Justificativa')
          ParentFont = False
        end
        object Memo138: TfrxMemoView
          Top = 264.567073150000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'SPR_OBJETIVO_GERAL'
          DataSet = FrxDtStSubProjeto
          DataSetName = 'PROATER - Subprojeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto."SPR_OBJETIVO_GERAL"]')
          ParentFont = False
        end
        object Memo139: TfrxMemoView
          Top = 211.653680000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            'b) Objetivos:')
          ParentFont = False
        end
        object Memo140: TfrxMemoView
          Top = 241.889920000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            'b.1) Geral')
          ParentFont = False
        end
        object Memo141: TfrxMemoView
          Top = 313.700963150000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'SPR_OBJETIVO_ESPECIFICO'
          DataSet = FrxDtStSubProjeto
          DataSetName = 'PROATER - Subprojeto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haBlock
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto."SPR_OBJETIVO_ESPECIFICO"]')
          ParentFont = False
        end
        object Memo142: TfrxMemoView
          Top = 291.023810000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 8.000000000000000000
          Memo.UTF8W = (
            'b.2) Espec'#237'ficos')
          ParentFont = False
        end
      end
      object ChildPlano: TfrxChild
        FillType = ftBrush
        Height = 41.574803150000000000
        Top = 551.811380000000000000
        Width = 680.315400000000000000
        object SubreportPlano: TfrxSubreport
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Page = FrxPrincipal.PageSubreportPlano
        end
      end
      object HeaderPlano: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 151.181200000000000000
        Width = 680.315400000000000000
        object MemoPlano: TfrxMemoView
          Width = 680.315400000000000000
          Height = 22.677180000000000000
          OnAfterPrint = 'MemoPlanoOnAfterPrint'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '3. PLANO DE ASSIT'#202'NCIA T'#201'CNICA E EXTENS'#195'O RURAL DO ESLOC')
          ParentFont = False
        end
      end
      object PageHeaderPlano: TfrxPageHeader
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object Picture8: TfrxPictureView
          Width = 64.251936770000000000
          Height = 56.559060000000000000
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
        object Memo54: TfrxMemoView
          Left = 68.031540000000000000
          Width = 612.283860000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              'EMATER-PAR'#193' '#8211' Empresa de Assist'#234'ncia T'#233'cnica e Extens'#227'o Rural do' +
              ' Estado do Par'#225)
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          Left = 68.031540000000000000
          Top = 18.897637800000000000
          Width = 612.283860000000000000
          Height = 37.795290240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          LineSpacing = 5.000000000000000000
          Memo.UTF8W = (
            'SISATER Dektop '#8211' Sistema de Acompanhamento de ATER'
            '[unidade]')
          ParentFont = False
          WordWrap = False
        end
        object Memo62: TfrxMemoView
          Top = 56.692950000000000000
          Width = 680.315400000000000000
          Height = 15.118120000000000000
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
      object PageFooterPlano: TfrxPageFooter
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 653.858690000000000000
        Width = 680.315400000000000000
        object Memo90: TfrxMemoView
          Width = 181.417440000000000000
          Height = 15.118120000000000000
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
        object Memo97: TfrxMemoView
          Left = 585.827150000000000000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
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
          Formats = <
            item
            end
            item
            end>
        end
        object Memo104: TfrxMemoView
          Left = 181.417440000000000000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
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
        object Memo114: TfrxMemoView
          Left = 340.157700000000000000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
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
    end
    object PageSubreportDiagnostico: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterDataProaterComunidade: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 139.842610000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataProaterComunidadeOnAfterPrint'
        DataSet = FrxDtStProaterComunidade
        DataSetName = 'PROATER - Comunidade'
        KeepHeader = True
        RowCount = 0
        object PROATERComunidadeCOM_NOME: TfrxMemoView
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          DataField = 'COM_NOME'
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Comunidade."COM_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          Left = 226.771800000000000000
          Width = 219.212740000000000000
          Height = 30.236240000000000000
          DataField = 'PRC_LOCALIZACAO'
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Comunidade."PRC_LOCALIZACAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          Left = 445.984540000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          DataField = 'PRC_QTDE_BENEFICIARIO'
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Comunidade."PRC_QTDE_BENEFICIARIO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          Left = 563.149970000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          DataField = 'PRC_QTDE_UPF'
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Comunidade."PRC_QTDE_UPF"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderProaterComunidade: TfrxHeader
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object MemoBeneficiariosComunidade: TfrxMemoView
          Top = 18.897650000000000000
          Width = 680.315400000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            
              '1.2. N'#250'mero de benefici'#225'rios de ATER e UPF cadastrados por comun' +
              'idades rurais'
            'identificadas pela EMATER - PAR'#193)
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Top = 68.031540000000000000
          Width = 226.771800000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Nome da comunidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          Left = 226.771800000000000000
          Top = 68.031540000000000000
          Width = 219.212740000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Localiza'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          Left = 445.984540000000000000
          Top = 68.031540000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N.'#186' de benefici'#225'rios de ATER cadastrados')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 563.149970000000000000
          Top = 68.031540000000000000
          Width = 117.165430000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'N.'#186' de UPF cadastradas')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataPotencial: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 298.582870000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataPotencialOnAfterPrint'
        DataSet = FrxDtStPotencial
        DataSetName = 'PROATER - Potencial'
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo51: TfrxMemoView
          Width = 294.803340000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataField = 'CTX_CONTEXTO'
          DataSet = FrxDtStPotencial
          DataSetName = 'PROATER - Potencial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Potencial."CTX_CONTEXTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          Left = 294.803340000000000000
          Width = 192.756030000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'PRP_PROBLEMA'
          DataSet = FrxDtStPotencial
          DataSetName = 'PROATER - Potencial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Potencial."PRP_PROBLEMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          Left = 487.559370000000000000
          Width = 192.756030000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'PRP_PROBLEMA'
          DataSet = FrxDtStPotencial
          DataSetName = 'PROATER - Potencial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Potencial."PRP_PROBLEMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderPotencial: TfrxHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 192.756030000000000000
        Width = 680.315400000000000000
        object MemoProblema: TfrxMemoView
          Top = 18.897650000000000000
          Width = 680.315400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            '1.3. Principais problemas e potencialidades do munic'#237'pio')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          Top = 52.913420000000000000
          Width = 294.803340000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Contexto')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          Left = 294.803340000000000000
          Top = 52.913420000000000000
          Width = 192.756030000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Potencialidades')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          Left = 487.559370000000000000
          Top = 52.913420000000000000
          Width = 192.756030000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Problemas')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataAcordo: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 457.323130000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataAcordoOnAfterPrint'
        DataSet = FrxDtStProaterAcordo
        DataSetName = 'PROATER - Acordo'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        Stretched = True
        object Memo59: TfrxMemoView
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataField = 'PRA_TIPO'
          DataSet = FrxDtStProaterAcordo
          DataSetName = 'PROATER - Acordo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Acordo."PRA_TIPO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          Left = 283.464750000000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'PRA_OBJETIVO'
          DataSet = FrxDtStProaterAcordo
          DataSetName = 'PROATER - Acordo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Acordo."PRA_OBJETIVO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          Left = 427.086890000000000000
          Width = 170.078850000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'PRA_ACAO'
          DataSet = FrxDtStProaterAcordo
          DataSetName = 'PROATER - Acordo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Acordo."PRA_ACAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          Left = 71.811070000000000000
          Width = 211.653680000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataField = 'PRA_DESCRICAO'
          DataSet = FrxDtStProaterAcordo
          DataSetName = 'PROATER - Acordo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Acordo."PRA_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          Left = 597.165740000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          AllowHTMLTags = True
          DataField = 'PRA_SITUACAO'
          DataSet = FrxDtStProaterAcordo
          DataSetName = 'PROATER - Acordo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Acordo."PRA_SITUACAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderAcordo: TfrxHeader
        FillType = ftBrush
        Height = 83.149660000000000000
        Top = 351.496290000000000000
        Width = 680.315400000000000000
        object MemoAcordo: TfrxMemoView
          Top = 18.897650000000000000
          Width = 680.315400000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            '1.4. Acordos, conv'#234'nios e parcerias')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          Top = 52.913420000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          Left = 283.464750000000000000
          Top = 52.913420000000000000
          Width = 143.622140000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Objetivos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          Left = 427.086890000000000000
          Top = 52.913420000000000000
          Width = 170.078850000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'A'#231#245'es previstas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          Left = 71.811070000000000000
          Top = 52.913420000000000000
          Width = 211.653680000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          Left = 597.165740000000000000
          Top = 52.913420000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Situa'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object FooterAcordo: TfrxFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 510.236550000000000000
        Width = 680.315400000000000000
      end
    end
    object PageSubreportCapacidade: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterDataFuncionario: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 102.047310000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataFuncionarioOnAfterPrint'
        DataSet = FrxDtStProaterFuncionario
        DataSetName = 'PROATER - Funcion'#225'rio'
        KeepHeader = True
        RowCount = 0
        object Memo70: TfrxMemoView
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          DataField = 'FUN_MATRICULA'
          DataSet = FrxDtStProaterFuncionario
          DataSetName = 'PROATER - Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Funcion'#225'rio."FUN_MATRICULA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          Left = 105.826840000000000000
          Width = 377.953000000000000000
          Height = 30.236240000000000000
          DataField = 'FUN_NOME'
          DataSet = FrxDtStProaterFuncionario
          DataSetName = 'PROATER - Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Funcion'#225'rio."FUN_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          Left = 483.779840000000000000
          Width = 196.535560000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterFuncionario
          DataSetName = 'PROATER - Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Funcion'#225'rio."FST_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderFuncionario: TfrxHeader
        FillType = ftBrush
        Height = 60.472458030000000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        object MemoForcaTrabalho: TfrxMemoView
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            '2.1.1. For'#231'a de trabalho atual')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          Top = 30.236218030000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Matr'#237'cula')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          Left = 105.826840000000000000
          Top = 30.236218030000000000
          Width = 377.953000000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          Left = 483.779840000000000000
          Top = 30.236218030000000000
          Width = 196.535560000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Situa'#231#227'o funcional')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataDemanda: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 253.228510000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataDemandaOnAfterPrint'
        DataSet = FrxDtStProaterFuncionario
        DataSetName = 'PROATER - Funcion'#225'rio'
        KeepHeader = True
        RowCount = 0
        object Memo80: TfrxMemoView
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          DataField = 'FUN_MATRICULA'
          DataSet = FrxDtStProaterFuncionario
          DataSetName = 'PROATER - Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Funcion'#225'rio."FUN_MATRICULA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          Left = 105.826840000000000000
          Width = 377.953000000000000000
          Height = 30.236240000000000000
          DataField = 'FUN_NOME'
          DataSet = FrxDtStProaterFuncionario
          DataSetName = 'PROATER - Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Funcion'#225'rio."FUN_NOME"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          Left = 483.779840000000000000
          Width = 196.535560000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterFuncionario
          DataSetName = 'PROATER - Funcion'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Funcion'#225'rio."FST_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderDemanda: TfrxHeader
        FillType = ftBrush
        Height = 75.590565830000000000
        Top = 154.960730000000000000
        Width = 680.315400000000000000
        object MemoDemanda: TfrxMemoView
          Top = 15.118107800000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            '2.1.2. Demanda de pessoal')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Top = 45.354325830000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Matr'#237'cula')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          Left = 105.826840000000000000
          Top = 45.354325830000000000
          Width = 377.953000000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          Left = 483.779840000000000000
          Top = 45.354325830000000000
          Width = 196.535560000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Situa'#231#227'o funcional')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataMobiliario: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 404.409710000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataMobiliarioOnAfterPrint'
        DataSet = FrxDtStProaterMobiliario
        DataSetName = 'PROATER - Mobili'#225'rio'
        KeepHeader = True
        RowCount = 0
        object Memo88: TfrxMemoView
          Width = 483.779840000000000000
          Height = 30.236240000000000000
          DataField = 'PRM_DESCRICAO'
          DataSet = FrxDtStProaterMobiliario
          DataSetName = 'PROATER - Mobili'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Mobili'#225'rio."PRM_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          Left = 483.779840000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataField = 'PRM_QTDE_EXISTENTE'
          DataSet = FrxDtStProaterMobiliario
          DataSetName = 'PROATER - Mobili'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Mobili'#225'rio."PRM_QTDE_EXISTENTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          Left = 582.047620000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataField = 'PRM_QTDE_NECESSARIA'
          DataSet = FrxDtStProaterMobiliario
          DataSetName = 'PROATER - Mobili'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Mobili'#225'rio."PRM_QTDE_NECESSARIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderMobiliario: TfrxHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 306.141930000000000000
        Width = 680.315400000000000000
        object MemoMobiliario: TfrxMemoView
          Top = 15.118107800000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            '2.2. Mobili'#225'rio')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          Top = 45.354325830000000000
          Width = 483.779840000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          Left = 483.779840000000000000
          Top = 45.354325830000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade existente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          Left = 582.047620000000000000
          Top = 45.354360000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade necess'#225'ria')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataEquipamento: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 555.590910000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataEquipamentoOnAfterPrint'
        DataSet = FrxDtStProaterEquipamento
        DataSetName = 'PROATER - Equipamento'
        KeepHeader = True
        RowCount = 0
        object Memo91: TfrxMemoView
          Width = 483.779840000000000000
          Height = 30.236240000000000000
          DataField = 'PRE_DESCRICAO'
          DataSet = FrxDtStProaterEquipamento
          DataSetName = 'PROATER - Equipamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Equipamento."PRE_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          Left = 483.779840000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataField = 'PRE_QTDE_EXISTENTE'
          DataSet = FrxDtStProaterEquipamento
          DataSetName = 'PROATER - Equipamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Equipamento."PRE_QTDE_EXISTENTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          Left = 582.047620000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataField = 'PRE_QTDE_NECESSARIA'
          DataSet = FrxDtStProaterEquipamento
          DataSetName = 'PROATER - Equipamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Equipamento."PRE_QTDE_NECESSARIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderEquipamento: TfrxHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 457.323130000000000000
        Width = 680.315400000000000000
        object MemoEquipamentos: TfrxMemoView
          Top = 15.118107800000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            '2.3. Equipamentos')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          Top = 45.354325830000000000
          Width = 483.779840000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          Left = 483.779840000000000000
          Top = 45.354325830000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade existente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          Left = 582.047620000000000000
          Top = 45.354360000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade necess'#225'ria')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataVeiculo: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 706.772110000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataVeiculoOnAfterPrint'
        DataSet = FrxDtStProaterVeiculo
        DataSetName = 'PROATER - Ve'#237'culo'
        KeepHeader = True
        RowCount = 0
        object Memo101: TfrxMemoView
          Width = 325.039580000000000000
          Height = 30.236240000000000000
          DataField = 'VEI_DESCRICAO'
          DataSet = FrxDtStProaterVeiculo
          DataSetName = 'PROATER - Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Ve'#237'culo."VEI_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          Left = 483.779840000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataField = 'VEI_QTDE_EXISTENTE'
          DataSet = FrxDtStProaterVeiculo
          DataSetName = 'PROATER - Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Ve'#237'culo."VEI_QTDE_EXISTENTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          Left = 582.047620000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataField = 'VEI_QTDE_NECESSARIA'
          DataSet = FrxDtStProaterVeiculo
          DataSetName = 'PROATER - Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Ve'#237'culo."VEI_QTDE_NECESSARIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          Left = 325.039580000000000000
          Width = 158.740260000000000000
          Height = 30.236240000000000000
          DataField = 'VTP_DESCRICAO'
          DataSet = FrxDtStProaterVeiculo
          DataSetName = 'PROATER - Ve'#237'culo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Ve'#237'culo."VTP_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderVeiculo: TfrxHeader
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 608.504330000000000000
        Width = 680.315400000000000000
        object MemoVeiculos: TfrxMemoView
          Top = 15.118107800000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            '2.4. Ve'#237'culos')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          Top = 45.354325830000000000
          Width = 325.039580000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          Left = 483.779840000000000000
          Top = 45.354325830000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade existente')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          Left = 582.047620000000000000
          Top = 45.354360000000000000
          Width = 98.267780000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade necess'#225'ria')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          Left = 325.039580000000000000
          Top = 45.354360000000000000
          Width = 158.740260000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Tipo')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataDespesa: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 857.953310000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataDespesaOnAfterPrint'
        DataSet = FrxDtStProaterCusto
        DataSetName = 'PROATER - Despesa de custeio'
        KeepHeader = True
        RowCount = 0
        object Memo110: TfrxMemoView
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          DataField = 'PCT_DESCRICAO'
          DataSet = FrxDtStProaterCusto
          DataSetName = 'PROATER - Despesa de custeio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Despesa de custeio."PCT_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          Left = 521.575140000000000000
          Width = 158.740260000000000000
          Height = 30.236240000000000000
          DataField = 'PRC_CUSTO'
          DataSet = FrxDtStProaterCusto
          DataSetName = 'PROATER - Despesa de custeio'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Despesa de custeio."PRC_CUSTO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderDespesa: TfrxHeader
        FillType = ftBrush
        Height = 75.590565830000000000
        Top = 759.685530000000000000
        Width = 680.315400000000000000
        object Memodespesas: TfrxMemoView
          Top = 15.118107800000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            
              '2.5. Despesas de custeio do escrit'#243'rio local (m'#233'dia do 3'#186'. quadr' +
              'imestre)')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          Top = 45.354325830000000000
          Width = 521.575140000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o fixo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo116: TfrxMemoView
          Left = 521.575140000000000000
          Top = 45.354325830000000000
          Width = 158.740260000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Valor mensal (R$)'
            'M'#233'dia do 3'#186'. quadrimestre')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataQualificacao: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 1009.134510000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataQualificacaoOnAfterPrint'
        DataSet = FrxDtStQualificacao
        DataSetName = 'PROATER - Qualifica'#231#227'o'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        object Memo111: TfrxMemoView
          Width = 393.071120000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'QUA_TEMATICA'
          DataSet = FrxDtStQualificacao
          DataSetName = 'PROATER - Qualifica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Qualifica'#231#227'o."QUA_TEMATICA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo113: TfrxMemoView
          Left = 574.488560000000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'QUA_QTDE_TECNICO'
          DataSet = FrxDtStQualificacao
          DataSetName = 'PROATER - Qualifica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Qualifica'#231#227'o."QUA_QTDE_TECNICO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo121: TfrxMemoView
          Left = 393.071120000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          StretchMode = smMaxHeight
          DataField = 'MET_DESCRICAO'
          DataSet = FrxDtStQualificacao
          DataSetName = 'PROATER - Qualifica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Qualifica'#231#227'o."MET_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object HeaderQualificacao: TfrxHeader
        FillType = ftBrush
        Height = 75.590565830000000000
        Top = 910.866730000000000000
        Width = 680.315400000000000000
        object MemoNecessidade: TfrxMemoView
          Top = 15.118107800000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            '2.6. Necessidade de qualifica'#231#227'o pessoal')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          Top = 45.354325830000000000
          Width = 393.071120000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o fixo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo119: TfrxMemoView
          Left = 574.488560000000000000
          Top = 45.354325830000000000
          Width = 105.826840000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186'. de t'#233'cnicos')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo120: TfrxMemoView
          Left = 393.071120000000000000
          Top = 45.354360000000000000
          Width = 181.417440000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Metodologia')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object FooterQualificacao: TfrxFooter
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 1062.047930000000000000
        Width = 680.315400000000000000
      end
    end
    object PageSubreportPlano: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 15.000000000000000000
      RightMargin = 15.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterDataMeta: TfrxMasterData
        FillType = ftBrush
        Height = 30.236240000000000000
        Top = 105.826840000000000000
        Width = 680.315400000000000000
        DataSet = FrxDtStSubMeta
        DataSetName = 'PROATER - Subprojeto - Metas'
        KeepHeader = True
        RowCount = 0
        object Memo129: TfrxMemoView
          Width = 461.102660000000000000
          Height = 30.236240000000000000
          DataField = 'MET_DESCRICAO'
          DataSet = FrxDtStSubMeta
          DataSetName = 'PROATER - Subprojeto - Metas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Metas."MET_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo130: TfrxMemoView
          Left = 461.102660000000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DataField = 'MET_QUANTIDADE'
          DataSet = FrxDtStSubMeta
          DataSetName = 'PROATER - Subprojeto - Metas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Metas."MET_QUANTIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          Left = 544.252320000000000000
          Width = 136.063080000000000000
          Height = 30.236240000000000000
          DataField = 'MET_UNIDADE'
          DataSet = FrxDtStSubMeta
          DataSetName = 'PROATER - Subprojeto - Metas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Metas."MET_UNIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataMetodologia: TfrxMasterData
        FillType = ftBrush
        Height = 30.236220470000000000
        Top = 245.669450000000000000
        Width = 680.315400000000000000
        DataSet = FrxDtStSubMetodo
        DataSetName = 'PROATER - Subprojeto - M'#233'todo'
        KeepHeader = True
        RowCount = 0
        object PROATERSubprojetoMtodoMET_DESCRICAO: TfrxMemoView
          Width = 283.464750000000000000
          Height = 30.236220470000000000
          OnBeforePrint = 'PROATERSubprojetoMtodoMET_DESCRICAOOnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'MET_DESCRICAO'
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Highlight.ApplyFrame = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - M'#233'todo."MET_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Highlight.Frame.Typ = [ftLeft, ftRight, ftBottom]
          Highlight.Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto - M'#233'todo."MET_DESCRICAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          Left = 283.464750000000000000
          Width = 79.370130000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'MET_ANO_1'
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - M'#233'todo."MET_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - M'#233'todo."MET_ANO_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          Left = 362.834880000000000000
          Width = 79.370130000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'MET_ANO_2'
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - M'#233'todo."MET_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - M'#233'todo."MET_ANO_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          Left = 442.205010000000000000
          Width = 79.370130000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'MET_ANO_3'
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - M'#233'todo."MET_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - M'#233'todo."MET_ANO_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          Left = 521.575140000000000000
          Width = 79.370130000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'MET_ANO_4'
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - M'#233'todo."MET_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - M'#233'todo."MET_ANO_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          Left = 600.945270000000000000
          Width = 79.370130000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'MET_TOTAL'
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - M'#233'todo."MET_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - M'#233'todo."MET_TOTAL"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataBeneficiario: TfrxMasterData
        FillType = ftBrush
        Height = 30.236220470000000000
        Top = 385.512060000000000000
        Width = 680.315400000000000000
        DataSet = FrxDtStSubComunidade
        DataSetName = 'PROATER - Subprojeto - Comunidade'
        KeepHeader = True
        RowCount = 0
        object MemoComunidade: TfrxMemoView
          Width = 181.417440000000000000
          Height = 30.236220470000000000
          OnBeforePrint = 'MemoComunidadeOnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'REL_COMUNIDADE'
          DataSet = FrxDtStSubComunidade
          DataSetName = 'PROATER - Subprojeto - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Highlight.ApplyFrame = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Highlight.Frame.Typ = [ftLeft, ftRight, ftBottom]
          Highlight.Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Comunidade."REL_COMUNIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          Left = 408.189240000000000000
          Width = 68.031496060000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'REL_ANO_1'
          DataSet = FrxDtStSubComunidade
          DataSetName = 'PROATER - Subprojeto - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Comunidade."REL_ANO_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo156: TfrxMemoView
          Left = 476.220780000000000000
          Width = 68.031496060000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'REL_ANO_2'
          DataSet = FrxDtStSubComunidade
          DataSetName = 'PROATER - Subprojeto - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Comunidade."REL_ANO_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          Left = 544.252320000000000000
          Width = 68.031540000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'REL_ANO_3'
          DataSet = FrxDtStSubComunidade
          DataSetName = 'PROATER - Subprojeto - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Comunidade."REL_ANO_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          Left = 612.283860000000000000
          Width = 68.031540000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'REL_ANO_4'
          DataSet = FrxDtStSubComunidade
          DataSetName = 'PROATER - Subprojeto - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Comunidade."REL_ANO_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoCategoria: TfrxMemoView
          Left = 181.417440000000000000
          Width = 113.385900000000000000
          Height = 30.236220470000000000
          OnBeforePrint = 'MemoCategoriaOnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'REL_CATEGORIA'
          DataSet = FrxDtStSubComunidade
          DataSetName = 'PROATER - Subprojeto - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Highlight.ApplyFrame = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Highlight.Frame.Typ = [ftLeft, ftRight, ftBottom]
          Highlight.Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Comunidade."REL_CATEGORIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoAtividade: TfrxMemoView
          Left = 294.803340000000000000
          Width = 113.385900000000000000
          Height = 30.236220470000000000
          OnBeforePrint = 'MemoAtividadeOnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'REL_ATIVIDADE'
          DataSet = FrxDtStSubComunidade
          DataSetName = 'PROATER - Subprojeto - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Highlight.ApplyFrame = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Comunidade."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Highlight.Frame.Typ = [ftLeft, ftRight, ftBottom]
          Highlight.Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Comunidade."REL_ATIVIDADE"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataOrcamento: TfrxMasterData
        FillType = ftBrush
        Height = 30.236220470000000000
        Top = 525.354670000000000000
        Width = 680.315400000000000000
        DataSet = FrxDtStSubOrcamento
        DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        object MemoFonte: TfrxMemoView
          Width = 158.740260000000000000
          Height = 30.236220470000000000
          OnBeforePrint = 'MemoFonteOnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'REL_FONTE'
          DataSet = FrxDtStSubOrcamento
          DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Highlight.ApplyFrame = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Highlight.Frame.Typ = [ftLeft, ftRight, ftBottom]
          Highlight.Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Or'#231'amento."REL_FONTE"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoAno1: TfrxMemoView
          Left = 272.126160000000000000
          Width = 79.370078740000000000
          Height = 30.236220470000000000
          OnBeforePrint = 'MemoAno1OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'REL_ANO_1'
          DataSet = FrxDtStSubOrcamento
          DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Or'#231'amento."REL_ANO_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoAno2: TfrxMemoView
          Left = 351.496290000000000000
          Width = 79.370078740000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'REL_ANO_2'
          DataSet = FrxDtStSubOrcamento
          DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Or'#231'amento."REL_ANO_2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoAno3: TfrxMemoView
          Left = 430.866420000000000000
          Width = 79.370078740000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'REL_ANO_3'
          DataSet = FrxDtStSubOrcamento
          DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Or'#231'amento."REL_ANO_3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoAno4: TfrxMemoView
          Left = 510.236550000000000000
          Width = 79.370078740000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'REL_ANO_4'
          DataSet = FrxDtStSubOrcamento
          DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Or'#231'amento."REL_ANO_4"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoDespesa: TfrxMemoView
          Left = 158.740260000000000000
          Width = 113.385900000000000000
          Height = 30.236220470000000000
          OnBeforePrint = 'MemoCategoriaOnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'REL_DESPESA'
          DataSet = FrxDtStSubOrcamento
          DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Highlight.ApplyFrame = True
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Highlight.Frame.Typ = [ftLeft, ftRight, ftBottom]
          Highlight.Frame.Width = 0.500000000000000000
          Memo.UTF8W = (
            '[PROATER - Subprojeto - Or'#231'amento."REL_DESPESA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          Left = 589.606680000000000000
          Width = 90.708720000000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = FrxDtStSubOrcamento
          DataSetName = 'PROATER - Subprojeto - Or'#231'amento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -11
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 14211288
          Memo.UTF8W = (
            '[IIF('
            '  <PROATER - Subprojeto - Or'#231'amento."REL_TOTAL"> = '#39'Total'#39','
            '  <PROATER - Subprojeto - Or'#231'amento."REL_TOTAL">,'
            
              '  FormatFloat('#39',##0.00'#39',<PROATER - Subprojeto - Or'#231'amento."REL_T' +
              'OTAL">)'
            ')]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeaderOrcamento: TfrxGroupHeader
        FillType = ftBrush
        Height = 64.251968500000000000
        Top = 438.425480000000000000
        Width = 680.315400000000000000
        Condition = '1 = 1'
        KeepTogether = True
        object Memo154: TfrxMemoView
          Top = 7.559060000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            'f) Previs'#227'o or'#231'ament'#225'ria')
          ParentFont = False
        end
        object Memo165: TfrxMemoView
          Left = 272.126160000000000000
          Top = 37.795300000000000000
          Width = 408.189240000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Previs'#227'o Or'#231'amento (R$)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          Top = 37.795300000000000000
          Width = 158.740260000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          Left = 158.740260000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeaderBeneficiario: TfrxGroupHeader
        FillType = ftBrush
        Height = 64.251968500000000000
        Top = 298.582870000000000000
        Width = 680.315400000000000000
        Condition = '1 = 1'
        KeepTogether = True
        object Memo143: TfrxMemoView
          Top = 11.338590000000000000
          Width = 200.315090000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            'e) Benefici'#225'rios de ATER')
          ParentFont = False
        end
        object Memo152: TfrxMemoView
          Left = 408.189240000000000000
          Top = 37.795300000000000000
          Width = 272.126160000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          Top = 37.795300000000000000
          Width = 181.417440000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          Left = 181.417440000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          Left = 294.803340000000000000
          Top = 37.795300000000000000
          Width = 113.385900000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeaderMetodologia: TfrxGroupHeader
        FillType = ftBrush
        Height = 64.251968500000000000
        Top = 158.740260000000000000
        Width = 680.315400000000000000
        Condition = '1 = 1'
        KeepTogether = True
        object Memo146: TfrxMemoView
          Top = 11.338590000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            'd) Metodologias de ATER/Cronograma f'#237'sico de execu'#231#227'o')
          ParentFont = False
        end
        object Memo150: TfrxMemoView
          Left = 283.464750000000000000
          Top = 37.795300000000000000
          Width = 396.850650000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          Top = 37.795300000000000000
          Width = 283.464750000000000000
          Height = 26.456690470000000000
          DataSet = FrxDtStSubMetodo
          DataSetName = 'PROATER - Subprojeto - M'#233'todo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeaderMeta: TfrxGroupHeader
        FillType = ftBrush
        Height = 64.251968503937000000
        Top = 18.897650000000000000
        Width = 680.315400000000000000
        Condition = '1 = 1'
        KeepTogether = True
        object Memo132: TfrxMemoView
          Top = 3.779530000000000000
          Width = 680.315400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            'c) Metas')
          ParentFont = False
        end
        object Memo133: TfrxMemoView
          Top = 34.015748030000000000
          Width = 461.102660000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo134: TfrxMemoView
          Left = 461.102660000000000000
          Top = 34.015748030000000000
          Width = 83.149660000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo135: TfrxMemoView
          Left = 544.252320000000000000
          Top = 34.015748030000000000
          Width = 136.063080000000000000
          Height = 30.236240000000000000
          DataSet = FrxDtStProaterComunidade
          DataSetName = 'PROATER - Comunidade'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Frame.Width = 0.500000000000000000
          Fill.BackColor = 14211288
          GapX = 4.000000000000000000
          GapY = 2.000000000000000000
          Memo.UTF8W = (
            'Unidade de medida')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterDataResponsavel: TfrxMasterData
        FillType = ftBrush
        Height = 49.133870470000000000
        Top = 638.740570000000000000
        Width = 680.315400000000000000
        OnAfterPrint = 'MasterDataResponsavelOnAfterPrint'
        DataSet = FrxDtStResponsavel
        DataSetName = 'PROATER - Subprojeto - Responsavel'
        KeepFooter = True
        KeepHeader = True
        RowCount = 0
        object PROATERSubprojetoResponsavelFUN_NOME: TfrxMemoView
          Width = 680.315400000000000000
          Height = 49.133890000000000000
          DataSet = FrxDtStResponsavel
          DataSetName = 'PROATER - Subprojeto - Responsavel'
          Memo.UTF8W = (
            
              'O subprojeto ter'#225' sua execu'#231#227'o coordenada pelo(a) t'#233'cnico(a) [PR' +
              'OATER - Subprojeto - Responsavel."FUN_NOME"], com a participa'#231#227'o' +
              ' dos outros t'#233'cnicos que comp'#245'e a equipe do escrit'#243'rio local na ' +
              'execu'#231#227'o das atividades programadas.')
        end
      end
      object GroupHeaderResponsavel: TfrxGroupHeader
        FillType = ftBrush
        Height = 37.795258500000000000
        Top = 578.268090000000000000
        Width = 680.315400000000000000
        Condition = '1 = 1'
        KeepTogether = True
        object Memo170: TfrxMemoView
          Top = 7.559060000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          LineSpacing = 6.000000000000000000
          Memo.UTF8W = (
            'g) Respons'#225'vel pelo subprojeto')
          ParentFont = False
        end
      end
    end
  end
  object QryEmaterCorpo: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    SQL.Strings = (
      'select par_valor'
      'from tab_prd_proater_parametro'
      'where par_nome = '#39'EMATER_CORPO'#39)
    Left = 88
    Top = 208
  end
  object FrxDtStEmaterCorpo: TfrxDBDataset
    UserName = 'Corpo da EMATER'
    CloseDataSource = False
    DataSet = QryEmaterCorpo
    BCDToCurrency = False
    Left = 56
    Top = 208
  end
  object QryEmaterComissao: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    SQL.Strings = (
      'select par_valor'
      'from tab_prd_proater_parametro'
      'where par_nome = '#39'EMATER_COMISSAO'#39)
    Left = 88
    Top = 240
  end
  object FrxDtStEmaterComissao: TfrxDBDataset
    UserName = 'Comiss'#227'o de elabora'#231#227'o'
    CloseDataSource = False
    DataSet = QryEmaterComissao
    BCDToCurrency = False
    Left = 56
    Top = 240
  end
  object QryProaterPrincipal: TFDQuery
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    SQL.Strings = (
      'select'
      '  a.pro_id,'
      '  a.pro_data, '
      '  a.pro_periodo_inicio, '
      '  a.pro_periodo_fim, '
      '  a.pro_apresentacao, '
      '  a.pro_observacao, '
      '  a.pro_estatistica, '
      '  a.und_id,'
      '  a.reg_excluido, '
      '  a.reg_replicado, '
      '  a.reg_usuario, '
      '  a.reg_modificado,'
      '  b.und_nome'
      'from'
      
        '  tab_prd_proater a  join tab_sis_unidade b on (a.und_id = b.und' +
        '_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)')
    Left = 88
    Top = 272
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftString
        ParamType = ptInput
        Value = '100000000017'
      end>
  end
  object FrxDtStProater: TfrxDBDataset
    UserName = 'PROATER - Principal'
    CloseDataSource = False
    DataSet = QryProaterPrincipal
    BCDToCurrency = False
    Left = 56
    Top = 272
  end
  object QryProaterComunidade: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.prc_id,'
      '  a.prc_localizacao, '
      '  a.prc_qtde_beneficiario, '
      '  a.prc_qtde_upf, '
      '  a.pro_id, '
      '  a.com_id,'
      '  b.com_nome'
      'from'
      
        '  tab_prd_proater_comunidade a join tab_cad_comunidade b on (a.c' +
        'om_id = b.com_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.com_nome')
    Left = 216
    Top = 208
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStProaterComunidade: TfrxDBDataset
    UserName = 'PROATER - Comunidade'
    CloseDataSource = False
    DataSet = QryProaterComunidade
    BCDToCurrency = False
    Left = 184
    Top = 208
  end
  object DtSrcProaterPrincipal: TDataSource
    DataSet = QryProaterPrincipal
    Left = 120
    Top = 272
  end
  object FrxDtStPotencial: TfrxDBDataset
    UserName = 'PROATER - Potencial'
    CloseDataSource = False
    DataSet = QryProaterPotencial
    BCDToCurrency = False
    Left = 184
    Top = 240
  end
  object QryProaterPotencial: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.prp_id,'
      '  a.prp_potencialidade, '
      '  a.prp_problema, '
      '  a.pro_id, '
      '  a.ctx_id,'
      '  case b.ctx_tipo'
      
        '    when 1 then '#39'<b>DIMENS'#195'O ECON'#212'MICA</b> ('#39' || b.ctx_contexto ' +
        '|| '#39')'#39
      
        '    when 2 then '#39'<b>DIMENS'#195'O SOCIAL</b> ('#39' || b.ctx_contexto || ' +
        #39')'#39
      
        '    when 3 then '#39'<b>DIMENS'#195'O AMBIENTAL</b> ('#39' || b.ctx_contexto ' +
        '|| '#39')'#39
      '  end as ctx_contexto'
      'from'
      
        '  tab_prd_proater_potencial a join tab_prd_proater_contexto b on' +
        ' (a.ctx_id = b.ctx_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)')
    Left = 216
    Top = 240
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStProaterAcordo: TfrxDBDataset
    UserName = 'PROATER - Acordo'
    CloseDataSource = False
    DataSet = QryProaterAcordo
    BCDToCurrency = False
    Left = 184
    Top = 272
  end
  object QryProaterAcordo: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.pra_id,'
      '  case a.pra_tipo'
      '    when 1 then '#39'Acordo'#39
      '    when 2 then '#39'Conv'#234'nio'#39
      '    when 3 then '#39'Parceria'#39
      '  end as pra_tipo,'
      '  a.pra_descricao, '
      '  a.pra_objetivo, '
      '  a.pra_acao, '
      '  case a.pra_situacao'
      '    when 1 then '#39'Previsto'#39
      '    when 2 then '#39'Em andamento'#39
      '  end as pra_situacao'
      'from'
      '  tab_prd_proater_acordo a'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.pra_tipo, a.pra_descricao')
    Left = 216
    Top = 272
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStProaterFuncionario: TfrxDBDataset
    UserName = 'PROATER - Funcion'#225'rio'
    CloseDataSource = False
    DataSet = QryProaterFuncionario
    BCDToCurrency = False
    Left = 280
    Top = 208
  end
  object QryProaterFuncionario: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.prf_id,'
      '  a.fun_id,'
      '  b.fun_matricula,'
      '  b.fun_nome,'
      '  c.fst_descricao'
      'from'
      
        '  tab_prd_proater_funcionario a join tab_pes_funcionario b on (a' +
        '.fun_id = b.fun_id) left join'
      '  tab_pes_funcao_situacao c on (b.fst_id = c.fst_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.fun_nome')
    Left = 312
    Top = 208
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStProaterMobiliario: TfrxDBDataset
    UserName = 'PROATER - Mobili'#225'rio'
    CloseDataSource = False
    DataSet = QryProaterMobiliario
    BCDToCurrency = False
    Left = 280
    Top = 240
  end
  object QryProaterMobiliario: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.prm_id,'
      '  a.prm_descricao, '
      '  a.prm_qtde_existente, '
      '  a.prm_qtde_necessaria, '
      '  a.pro_id'
      'from'
      '  tab_prd_proater_mobiliario a'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.prm_descricao')
    Left = 312
    Top = 240
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStProaterEquipamento: TfrxDBDataset
    UserName = 'PROATER - Equipamento'
    CloseDataSource = False
    DataSet = QryProaterEquipamento
    BCDToCurrency = False
    Left = 280
    Top = 272
  end
  object QryProaterEquipamento: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.pre_id,'
      '  a.pre_descricao, '
      '  a.pre_qtde_existente, '
      '  a.pre_qtde_necessaria, '
      '  a.pro_id'
      'from tab_prd_proater_equipamento a'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.pre_descricao')
    Left = 312
    Top = 272
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStProaterVeiculo: TfrxDBDataset
    UserName = 'PROATER - Ve'#237'culo'
    CloseDataSource = False
    DataSet = QryProaterVeiculo
    BCDToCurrency = False
    Left = 280
    Top = 304
  end
  object QryProaterVeiculo: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.vei_id,'
      '  a.vei_descricao, '
      '  a.vei_qtde_existente, '
      '  a.vei_qtde_necessaria, '
      '  a.pro_id, '
      '  a.vtp_id,'
      '  b.vtp_descricao'
      'from'
      
        '  tab_prd_proater_veiculo a join tab_prd_proater_veiculo_tipo  b' +
        ' on (a.vtp_id = b.vtp_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.vei_descricao,'
      '  b.vtp_descricao')
    Left = 312
    Top = 304
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStProaterCusto: TfrxDBDataset
    UserName = 'PROATER - Despesa de custeio'
    CloseDataSource = False
    DataSet = QryProaterCusto
    BCDToCurrency = False
    Left = 280
    Top = 336
  end
  object QryProaterCusto: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.prc_id,'
      '  a.pro_id, '
      '  a.pct_id, '
      '  a.prc_custo,'
      '  b.pct_descricao'
      'from'
      
        '  tab_prd_proater_custo a join tab_prd_proater_custo_tipo b on (' +
        'a.pct_id = b.pct_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.pct_descricao')
    Left = 312
    Top = 336
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStQualificacao: TfrxDBDataset
    UserName = 'PROATER - Qualifica'#231#227'o'
    CloseDataSource = False
    DataSet = QryProaterQualificacao
    BCDToCurrency = False
    Left = 280
    Top = 368
  end
  object QryProaterQualificacao: TFDQuery
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.qua_id,'
      '  a.qua_tematica, '
      '  a.qua_qtde_tecnico, '
      '  a.pro_id, '
      '  a.met_id,'
      '  b.met_descricao'
      'from'
      
        '  tab_prd_proater_qualificacao a join tab_prd_metodo b on (a.met' +
        '_id = b.met_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  b.met_descricao')
    Left = 312
    Top = 368
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object QrySubProjeto: TFDQuery
    CachedUpdates = True
    MasterSource = DtSrcProaterPrincipal
    MasterFields = 'PRO_ID'
    DetailFields = 'PRO_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.spr_id,'
      '  a.spr_data, '
      '  a.spr_ano_mes_inicio, '
      '  a.spr_ano_mes_fim, '
      '  a.spr_nome, '
      '  a.spr_justificativa, '
      '  a.spr_objetivo_geral, '
      '  a.spr_objetivo_especifico, '
      '  a.prj_id, '
      '  a.fun_id_responsavel, '
      '  a.fun_id_substituto, '
      '  a.pro_id,'
      '  b.prj_nome, '
      '  c.prg_nome, '
      '  d.fun_nome as fun_responsavel,'
      '  e.fun_nome as fun_substituto'
      'from'
      
        '  tab_prd_subprojeto a join tab_prd_projeto b on (a.prj_id = b.p' +
        'rj_id) join'
      '  tab_prd_programa c on (b.prg_id = c.prg_id) left join'
      
        '  tab_pes_funcionario d on (a.fun_id_responsavel = d.fun_id) lef' +
        't join'
      '  tab_pes_funcionario e on (a.fun_id_substituto = e.fun_id)'
      'where'
      '  (a.pro_id = :pro_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  c.prg_nome, b.prj_nome, a.spr_nome')
    Left = 408
    Top = 208
    ParamData = <
      item
        Name = 'PRO_ID'
        DataType = ftLargeint
        ParamType = ptInput
        Size = 8
        Value = 100000000017
      end>
  end
  object FrxDtStSubProjeto: TfrxDBDataset
    UserName = 'PROATER - Subprojeto'
    CloseDataSource = False
    DataSet = QrySubProjeto
    BCDToCurrency = False
    Left = 376
    Top = 208
  end
  object DtSrcSubProjeto: TDataSource
    DataSet = QrySubProjeto
    Left = 440
    Top = 208
  end
  object QrySubMeta: TFDQuery
    CachedUpdates = True
    MasterSource = DtSrcSubProjeto
    MasterFields = 'SPR_ID'
    DetailFields = 'SPR_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  a.met_id,'
      '  a.met_descricao, '
      '  a.met_quantidade, '
      '  a.met_unidade, '
      '  a.spr_id'
      'from'
      '  tab_prd_subprojeto_meta a'
      'where'
      '  (a.spr_id = :spr_id) and'
      '  (a.reg_excluido = 0)'
      'order by'
      '  a.met_descricao')
    Left = 408
    Top = 240
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 100004791
      end>
  end
  object QrySubMetodo: TFDQuery
    CachedUpdates = True
    MasterSource = DtSrcSubProjeto
    MasterFields = 'SPR_ID'
    DetailFields = 'SPR_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from stp_prd_relatorio_metodologia(:spr_id)')
    Left = 408
    Top = 272
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 100004791
      end>
  end
  object QrySubComunidade: TFDQuery
    CachedUpdates = True
    MasterSource = DtSrcSubProjeto
    MasterFields = 'SPR_ID'
    DetailFields = 'SPR_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from stp_prd_relatorio_comunidade(:spr_id)')
    Left = 408
    Top = 304
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 100004791
      end>
  end
  object QrySubOrcamento: TFDQuery
    CachedUpdates = True
    MasterSource = DtSrcSubProjeto
    MasterFields = 'SPR_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select * from stp_prd_relatorio_orcamento (:spr_id)')
    Left = 408
    Top = 336
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 100004791
      end>
  end
  object FrxDtStSubMeta: TfrxDBDataset
    UserName = 'PROATER - Subprojeto - Metas'
    CloseDataSource = False
    DataSet = QrySubMeta
    BCDToCurrency = False
    Left = 376
    Top = 240
  end
  object FrxDtStSubMetodo: TfrxDBDataset
    UserName = 'PROATER - Subprojeto - M'#233'todo'
    CloseDataSource = False
    DataSet = QrySubMetodo
    BCDToCurrency = False
    Left = 376
    Top = 272
  end
  object FrxDtStSubComunidade: TfrxDBDataset
    UserName = 'PROATER - Subprojeto - Comunidade'
    CloseDataSource = False
    DataSet = QrySubComunidade
    BCDToCurrency = False
    Left = 376
    Top = 304
  end
  object FrxDtStSubOrcamento: TfrxDBDataset
    UserName = 'PROATER - Subprojeto - Or'#231'amento'
    CloseDataSource = False
    DataSet = QrySubOrcamento
    BCDToCurrency = False
    Left = 376
    Top = 336
  end
  object FrxDtStResponsavel: TfrxDBDataset
    UserName = 'PROATER - Subprojeto - Responsavel'
    CloseDataSource = False
    DataSet = QrySubResponsavel
    BCDToCurrency = False
    Left = 376
    Top = 368
  end
  object QrySubResponsavel: TFDQuery
    CachedUpdates = True
    MasterSource = DtSrcSubProjeto
    MasterFields = 'SPR_ID'
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDReadTransaction
    UpdateTransaction = DtmConexaoModulo.FDWriteTransaction
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'select'
      '  b.fun_nome'
      'from'
      
        '  tab_prd_subprojeto a join tab_pes_funcionario b on (a.fun_id_r' +
        'esponsavel = b.fun_id)'
      'where'
      '  (a.spr_id = :spr_id) and'
      '  (a.reg_excluido = 0)')
    Left = 408
    Top = 368
    ParamData = <
      item
        Name = 'SPR_ID'
        DataType = ftInteger
        ParamType = ptInput
        Size = 4
        Value = 100004791
      end>
  end
end
