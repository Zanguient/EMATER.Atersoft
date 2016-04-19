unit Emater.Pessoal.Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet, pFIBDataSet, cxPC,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxDBEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDropDownEdit, cxImageComboBox, cxMaskEdit, cxCalendar, cxTextEdit, cxGroupBox, Vcl.ExtCtrls, dxSkinSeven, dxSkinSevenClassic,
  cxCheckBox, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmPessoalFuncionario = class(TFrmBaseTabela)
    GRpBxPrincipal: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DbEdtNome: TcxDBTextEdit;
    DbEdtMatricula: TcxDBTextEdit;
    DbEdtNascimento: TcxDBDateEdit;
    DbEdtRG: TcxDBTextEdit;
    DbEdtOrgao: TcxDBTextEdit;
    DbEdtDataEmissao: TcxDBDateEdit;
    DBImgCmbBxSexo: TcxDBImageComboBox;
    DbEdtCPF: TcxDBMaskEdit;
    GrpBxEndereco: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DbEdtEndereco: TcxDBTextEdit;
    DbEdtNumero: TcxDBTextEdit;
    DbEdtComplemento: TcxDBTextEdit;
    DbEdtBairro: TcxDBTextEdit;
    DbEdtEmail: TcxDBTextEdit;
    DbLkpCmbBxMunicipio: TcxDBLookupComboBox;
    DbEdtUF: TcxDBTextEdit;
    DbEdtCEP: TcxDBMaskEdit;
    Label23: TLabel;
    DbLkpCmbBxCargo: TcxDBLookupComboBox;
    LblTitulo: TLabel;
    Image: TImage;
    Label6: TLabel;
    Label8: TLabel;
    DtSrcFuncao: TDataSource;
    DbLkpCmbBxFuncao: TcxDBLookupComboBox;
    DbLkpCmbBxFuncaoSituacao: TcxDBLookupComboBox;
    DtSrcCargo: TDataSource;
    DtSrcFuncaoSituacao: TDataSource;
    DtSrcUsuario: TDataSource;
    DbEdtTelefone1: TcxDBMaskEdit;
    DbEdtTelefone2: TcxDBMaskEdit;
    GrpBxUsuario: TcxGroupBox;
    BtnUsuario: TcxButton;
    Label5: TLabel;
    DbEdtData: TcxDBDateEdit;
    Label24: TLabel;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    DbEdtLogin: TcxDBTextEdit;
    LblLogin: TLabel;
    LblPerfil: TLabel;
    DbLkpCmbBxPerfil: TcxDBLookupComboBox;
    DbChckBxExpirada: TcxDBCheckBox;
    DbChckBxAtivo: TcxDBCheckBox;
    QryPrincipalFUN_ID: TIntegerField;
    QryPrincipalFUN_DATA: TDateField;
    QryPrincipalFUN_NOME: TStringField;
    QryPrincipalFUN_MATRICULA: TStringField;
    QryPrincipalFUN_SEXO: TStringField;
    QryPrincipalFUN_NASCIMENTO: TDateField;
    QryPrincipalFUN_CPF: TStringField;
    QryPrincipalFUN_RG_NUMERO: TStringField;
    QryPrincipalFUN_RG_ORGAO: TStringField;
    QryPrincipalFUN_RG_DATA: TDateField;
    QryPrincipalFUN_ENDERECO: TStringField;
    QryPrincipalFUN_NUMERO: TStringField;
    QryPrincipalFUN_COMPLEMENTO: TStringField;
    QryPrincipalFUN_BAIRRO: TStringField;
    QryPrincipalFUN_CEP: TStringField;
    QryPrincipalFUN_TELEFONE: TStringField;
    QryPrincipalFUN_CELULAR: TStringField;
    QryPrincipalFUN_EMAIL: TStringField;
    QryPrincipalREG_EXCLUIDO: TSmallintField;
    QryPrincipalREG_REPLICADO: TSmallintField;
    QryPrincipalREG_USUARIO: TStringField;
    QryPrincipalREG_MODIFICADO: TSQLTimeStampField;
    QryPrincipalFNC_ID: TIntegerField;
    QryPrincipalFST_ID: TIntegerField;
    QryPrincipalCRG_ID: TIntegerField;
    QryPrincipalUSR_ID: TIntegerField;
    QryPrincipalUND_ID: TIntegerField;
    QryPrincipalCID_ID: TIntegerField;
    QryPrincipalCID_NOME: TStringField;
    QryPrincipalUFE_ID: TStringField;
    QryFuncionarioMatricula: TFDQuery;
    QryFuncionarioCPF: TFDQuery;
    QryFuncionarioCPFFUN_ID: TIntegerField;
    QryFuncionarioCPFFUN_NOME: TStringField;
    QryFuncionarioCPFREG_EXCLUIDO: TSmallintField;
    QryFuncionarioCPFUND_ID: TIntegerField;
    QryFuncionarioCPFUND_NOME: TStringField;
    QryUsuario: TFDQuery;
    QryUsuarioUSR_ID: TIntegerField;
    QryUsuarioUSR_LOGIN: TStringField;
    QryUsuarioUSR_EXPIRADA: TSmallintField;
    QryUsuarioUSR_ATIVO: TSmallintField;
    QryUsuarioPER_ID: TIntegerField;
    QryUsuarioREG_EXCLUIDO: TSmallintField;
    QryUsuarioREG_REPLICADO: TSmallintField;
    QryUsuarioREG_USUARIO: TStringField;
    QryUsuarioREG_MODIFICADO: TSQLTimeStampField;
    UpdtUsuario: TFDUpdateSQL;
    QryFuncionarioMatriculaFUN_ID: TIntegerField;
    QryFuncionarioMatriculaFUN_NOME: TStringField;
    QryFuncionarioMatriculaREG_EXCLUIDO: TSmallintField;
    QryFuncionarioMatriculaUND_ID: TIntegerField;
    QryFuncionarioMatriculaUND_NOME: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnUsuarioClick(Sender: TObject);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure DtSrcUsuarioStateChange(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DbEdtNomePropertiesChange(Sender: TObject);
    procedure QryPrincipalAfterOpen(DataSet: TDataSet);
    procedure QryPrincipalAfterPost(DataSet: TDataSet);
    procedure QryUsuarioBeforePost(DataSet: TDataSet);
    procedure QryPrincipalNewRecord(DataSet: TDataSet);
    procedure QryPrincipalBeforePost(DataSet: TDataSet);
  private
    FNovoUsuario: Boolean;
    FTransferirFuncionario: Boolean;
    FTransferirUnidadeOrigem: string;
    FTransferirFuncionarioNome: string;
    procedure CarregarUsuario(const ID: Integer);
  public
    { Public declarations }
  end;

var
  FrmPessoalFuncionario: TFrmPessoalFuncionario;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Pessoal.Modulo, Emater.Sistema.Modulo, Emater.Cadastro.Consts, Emater.Sistema.Usuario,
  Emater.Sistema.Consts, Emater.Base.Consts;

procedure TFrmPessoalFuncionario.BtnCancelarClick(Sender: TObject);
begin
  if (QryPrincipal.State in [dsEdit, dsInsert]) then
    inherited;

  if (QryUsuario.State in [dsEdit, dsInsert]) then
    QryUsuario.Cancel;

  FNovoUsuario := False;

  CarregarUsuario(QryPrincipalUSR_ID.AsInteger);
end;

procedure TFrmPessoalFuncionario.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  FNovoUsuario := False;
end;

procedure TFrmPessoalFuncionario.BtnNovoClick(Sender: TObject);
begin
  inherited;
  FNovoUsuario := False;
  CarregarUsuario(0);
end;

procedure TFrmPessoalFuncionario.BtnSalvarClick(Sender: TObject);
var
  ID: Integer;
begin

  if (QryPrincipal.State in [dsEdit, dsInsert]) then
    begin
      // Valida o CPF do funcionário:
      if (Trim(QryPrincipalFUN_CPF.AsString) <> '') then
        if not Str.ValidarCPF(QryPrincipalFUN_CPF.AsString) then
          begin
            Msg.Aviso(CADASTRO_AVISO_CPF_INVALIDO);
            DbEdtCPF.SetFocus;
            Exit;
          end;

      if (QryPrincipal.State = dsInsert) then
        begin

          // Validando se a matrícula já existe. Quando existir, o funcionário poderá estar
          // lotado em outra unidade e o sistema carregará o registro para que as informações do
          // funcionário sejam visualizadas ou atualizadas.
          QryFuncionarioMatricula.Close;
          QryFuncionarioMatricula.ParamByName('matricula').AsString := QryPrincipalFUN_MATRICULA.AsString;
          QryFuncionarioMatricula.Open;

          if not QryFuncionarioMatricula.IsEmpty then
            begin
              Msg.Informacao(Format(CADASTRO_MATRICULA_FUNCIONARIO_EXISTENTE, [QryFuncionarioMatriculaUND_NOME.AsString]));
              ID := QryFuncionarioMatriculaFUN_ID.AsInteger;
              FTransferirUnidadeOrigem := QryFuncionarioMatriculaUND_NOME.AsString;
              FTransferirFuncionarioNome := QryFuncionarioMatriculaFUN_NOME.AsString;
              QryPrincipal.Cancel;
              QryPrincipal.Close;
              QryPrincipal.Params[0].AsInteger := ID;
              QryPrincipal.Open;
              QryPrincipal.Edit;
              QryPrincipalUND_ID.AsInteger := DtmSistemaModulo.UnidadeLocalID;
              FTransferirFuncionario := True;
              DbEdtMatricula.SetFocus;
              Exit;
            end
          else
            begin

              // Caso a matrícula não exista, será validado o CPF informado para o funcionário, se o mesmo já existe.
              // Caso exista, será realizado o mesmo procedimento de carregar o registro do funcionário pelo CPF para
              // visualização ou atualização das informações.
              QryFuncionarioCPF.Close;
              QryFuncionarioCPF.ParamByName('cpf').AsString := QryPrincipalFUN_CPF.AsString;
              QryFuncionarioCPF.Open;

              if not QryFuncionarioCPF.IsEmpty then
                begin
                  Msg.Informacao(Format(CADASTRO_CPF_FUNCIONARIO_EXISTENTE, [QryFuncionarioCPFUND_NOME.AsString]));
                  ID := QryFuncionarioCPFFUN_ID.AsInteger;
                  FTransferirUnidadeOrigem := QryFuncionarioCPFUND_NOME.AsString;
                  FTransferirFuncionarioNome := QryFuncionarioCPFFUN_NOME.AsString;
                  QryPrincipal.Cancel;
                  QryPrincipal.Close;
                  QryPrincipal.Params[0].AsInteger := ID;
                  QryPrincipal.Open;
                  QryPrincipal.Edit;
                  QryPrincipalUND_ID.AsInteger := DtmSistemaModulo.UnidadeLocalID;
                  FTransferirFuncionario := True;
                  DbEdtMatricula.SetFocus;
                  Exit;
                end;
            end;
        end;

      if FTransferirFuncionario then
        begin
          if Msg.Confirmacao(Format(CADASTRO_FUNCIONARIO_TRANSFERIR, [FTransferirFuncionarioNome, FTransferirUnidadeOrigem, DtmSistemaModulo.UnidadeLocalNome])) then
            FTransferirFuncionario := False
          else
            Exit;
        end;


      inherited;

      if (not (QryPrincipal.State in [dsInsert, dsEdit])) then
        CarregarUsuario(QryPrincipalUSR_ID.Value);
    end;

  if (QryUsuario.State in [dsEdit, dsInsert]) and (not (QryPrincipal.State in [dsInsert, dsEdit])) then
    begin
      QryUsuario.Post;
      Msg.Informacao(BASE_MSG_INFORMACAO_SALVAR);
    end;
end;

procedure TFrmPessoalFuncionario.BtnUsuarioClick(Sender: TObject);
begin
  if DtSrcPrincipal.AutoEdit then
    begin
      FrmSistemaUsuario := TFrmSistemaUsuario.Create(Self);
      try
        Hide;
        Screen.Cursor := crHourglass;
        FrmSistemaUsuario.Editar(QryUsuarioUSR_LOGIN.AsString);
        QryUsuario.Close;
        QryUsuario.Open;
      finally
        FrmSistemaUsuario.Release;
        FrmSistemaUsuario := nil;
        Screen.Cursor := crDefault;
        Show;
      end;
    end;
end;

procedure TFrmPessoalFuncionario.CarregarUsuario(const ID: Integer);
begin
  QryUsuario.Close;
  QryUsuario.ParamByName('usr_id').AsInteger := ID;
  QryUsuario.Open;
end;

procedure TFrmPessoalFuncionario.DbEdtNomePropertiesChange(Sender: TObject);
begin
  inherited;
  LblTitulo.Caption := StringOfChar(' ', 6) + DbEdtNome.Text;
end;

procedure TFrmPessoalFuncionario.DtSrcPrincipalStateChange(Sender: TObject);
begin
  inherited;

  LblPerfil.Enabled := (QryPrincipal.State = dsBrowse) and (not QryPrincipal.IsEmpty);
  DbLkpCmbBxPerfil.Enabled := LblPerfil.Enabled;
  DbChckBxExpirada.Enabled := LblPerfil.Enabled;
  DbChckBxAtivo.Enabled := LblPerfil.Enabled;
  BtnUsuario.Enabled := LblPerfil.Enabled;
end;

procedure TFrmPessoalFuncionario.DtSrcUsuarioStateChange(Sender: TObject);
begin
  inherited;
  with QryUsuario do
    begin
      BtnNovo.Enabled := ((State = dsBrowse) and (not (State = dsInactive))) and (QryPrincipal.State = dsBrowse);
      BtnExcluir.Enabled := ((State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0)) and
        ((QryPrincipal.State = dsBrowse) and (QryPrincipal.RecordCount > 0));
      BtnCancelar.Enabled := ((State in [dsEdit, dsInsert]) and (not (State = dsInactive))) or
        (QryPrincipal.State in [dsEdit, dsInsert]);
      BtnSalvar.Enabled := ((State in [dsEdit, dsInsert]) and (not (State = dsInactive)))  or
        (QryPrincipal.State in [dsEdit, dsInsert]);;
      BtnRelatorio.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
    end;
end;

procedure TFrmPessoalFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  ControleAtivo := DbEdtMatricula;
  CampoChave := 'FUN_ID';
  Tabela := 'TAB_PES_FUNCIONARIO';

  DtSrcFuncao.DataSet := DtmPessoalModulo.DtStFuncao;
  DtSrcFuncaoSituacao.DataSet := DtmPessoalModulo.DtStFuncaoSituacao;
  DtSrcCargo.DataSet := DtmPessoalModulo.DtStCargo;

  DbLkpCmbBxFuncao.Properties.ListSource := DtSrcFuncao;
  DbLkpCmbBxFuncaoSituacao.Properties.ListSource := DtSrcFuncaoSituacao;
  DbLkpCmbBxCargo.Properties.ListSource := DtSrcCargo;
  DbLkpCmbBxUnidade.Properties.ListSource := DtmSistemaModulo.DtSrcUnidade;
  DbLkpCmbBxPerfil.Properties.ListSource := DtmSistemaModulo.DtSrcPerfil;

  FNovoUsuario := False;
end;

procedure TFrmPessoalFuncionario.QryPrincipalAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CarregarUsuario(QryPrincipalUSR_ID.Value);
  FTransferirFuncionario := False;
end;

procedure TFrmPessoalFuncionario.QryPrincipalAfterPost(DataSet: TDataSet);
begin
  inherited;
  DtmPessoalModulo.DtStFuncionario.Close;
  DtmPessoalModulo.DtStFuncionario.Open;

  if FNovoUsuario then
    begin
      Msg.Informacao(SISTEMA_MSG_USUARIO_SENHA_PADRAO);
      FNovoUsuario := False;
    end;
end;

procedure TFrmPessoalFuncionario.QryPrincipalBeforePost(DataSet: TDataSet);
var
  ID: Integer;
begin
  inherited;

  if (QryPrincipal.State = dsInsert) then
    begin
      ID := DtmSistemaModulo.UsuarioCriar(
        QryPrincipalFUN_MATRICULA.AsString,
        Str.MD5('123'));
      QryPrincipalUSR_ID.AsInteger := ID;

      FNovoUsuario := True;
    end;
end;

procedure TFrmPessoalFuncionario.QryPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;
  QryPrincipalFUN_DATA.Value := Date;
  QryPrincipalUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;
  QryPrincipalREG_EXCLUIDO.Value := 0;
end;

procedure TFrmPessoalFuncionario.QryUsuarioBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(QryUsuario);
end;

end.
