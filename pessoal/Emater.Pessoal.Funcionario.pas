unit Emater.Pessoal.Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Tabela, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinOffice2013White, cxControls, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Data.DB, FIBDataSet, pFIBDataSet, cxPC,
  Vcl.StdCtrls, cxButtons, cxContainer, cxEdit, cxDBEdit, cxSpinEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxDropDownEdit, cxImageComboBox, cxMaskEdit, cxCalendar, cxTextEdit, cxGroupBox, Vcl.ExtCtrls, dxSkinSeven, dxSkinSevenClassic,
  cxCheckBox, dxBarBuiltInMenu;

type
  TFrmPessoalFuncionario = class(TFrmBaseTabela)
    DtStPrincipalFUN_ID: TFIBIntegerField;
    DtStPrincipalFUN_DATA: TFIBDateField;
    DtStPrincipalFUN_NOME: TFIBStringField;
    DtStPrincipalFUN_MATRICULA: TFIBStringField;
    DtStPrincipalFUN_SEXO: TFIBStringField;
    DtStPrincipalFUN_NASCIMENTO: TFIBDateField;
    DtStPrincipalFUN_CPF: TFIBStringField;
    DtStPrincipalFUN_RG_NUMERO: TFIBStringField;
    DtStPrincipalFUN_RG_ORGAO: TFIBStringField;
    DtStPrincipalFUN_RG_DATA: TFIBDateField;
    DtStPrincipalFUN_ENDERECO: TFIBStringField;
    DtStPrincipalFUN_NUMERO: TFIBStringField;
    DtStPrincipalFUN_COMPLEMENTO: TFIBStringField;
    DtStPrincipalFUN_BAIRRO: TFIBStringField;
    DtStPrincipalFUN_CEP: TFIBStringField;
    DtStPrincipalFUN_TELEFONE: TFIBStringField;
    DtStPrincipalFUN_CELULAR: TFIBStringField;
    DtStPrincipalFUN_EMAIL: TFIBStringField;
    DtStPrincipalFNC_ID: TFIBIntegerField;
    DtStPrincipalFST_ID: TFIBIntegerField;
    DtStPrincipalCRG_ID: TFIBIntegerField;
    DtStPrincipalUSR_ID: TFIBIntegerField;
    DtStPrincipalUND_ID: TFIBIntegerField;
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
    DtStPrincipalCID_ID: TFIBIntegerField;
    DtStPrincipalCID_NOME: TFIBStringField;
    DtStPrincipalUFE_ID: TFIBStringField;
    DtSrcUsuario: TDataSource;
    DbEdtTelefone1: TcxDBMaskEdit;
    DbEdtTelefone2: TcxDBMaskEdit;
    GrpBxUsuario: TcxGroupBox;
    BtnUsuario: TcxButton;
    Label5: TLabel;
    DbEdtData: TcxDBDateEdit;
    Label24: TLabel;
    DbLkpCmbBxUnidade: TcxDBLookupComboBox;
    DtStUsuario: TpFIBDataSet;
    DtStUsuarioUSR_ID: TFIBIntegerField;
    DtStUsuarioUSR_LOGIN: TFIBStringField;
    DtStUsuarioUSR_EXPIRADA: TFIBBooleanField;
    DtStUsuarioUSR_ATIVO: TFIBBooleanField;
    DtStUsuarioPER_ID: TFIBIntegerField;
    DbEdtLogin: TcxDBTextEdit;
    LblLogin: TLabel;
    LblPerfil: TLabel;
    DbLkpCmbBxPerfil: TcxDBLookupComboBox;
    DbChckBxExpirada: TcxDBCheckBox;
    DbChckBxAtivo: TcxDBCheckBox;
    DtStFuncionarioMatricula: TpFIBDataSet;
    DtStFuncionarioMatriculaFUN_ID: TFIBIntegerField;
    DtStFuncionarioMatriculaFUN_NOME: TFIBStringField;
    DtStFuncionarioMatriculaUND_ID: TFIBIntegerField;
    DtStFuncionarioCPF: TpFIBDataSet;
    DtStFuncionarioCPFFUN_ID: TFIBIntegerField;
    DtStFuncionarioCPFFUN_NOME: TFIBStringField;
    DtStFuncionarioCPFUND_ID: TFIBIntegerField;
    DtStFuncionarioMatriculaUND_NOME: TFIBStringField;
    DtStFuncionarioCPFUND_NOME: TFIBStringField;
    DtStFuncionarioMatriculaREG_EXCLUIDO: TFIBBooleanField;
    DtStFuncionarioCPFREG_EXCLUIDO: TFIBBooleanField;
    DtStPrincipalREG_EXCLUIDO: TFIBBooleanField;
    DtStPrincipalREG_REPLICADO: TFIBBooleanField;
    DtStPrincipalREG_USUARIO: TFIBStringField;
    DtStPrincipalREG_MODIFICADO: TFIBDateTimeField;
    DtStUsuarioREG_EXCLUIDO: TFIBBooleanField;
    DtStUsuarioREG_REPLICADO: TFIBBooleanField;
    DtStUsuarioREG_USUARIO: TFIBStringField;
    DtStUsuarioREG_MODIFICADO: TFIBDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure DtStPrincipalNewRecord(DataSet: TDataSet);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnUsuarioClick(Sender: TObject);
    procedure DtStPrincipalAfterPost(DataSet: TDataSet);
    procedure DtStPrincipalBeforePost(DataSet: TDataSet);
    procedure DtSrcPrincipalStateChange(Sender: TObject);
    procedure DtSrcUsuarioStateChange(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DtStPrincipalAfterOpen(DataSet: TDataSet);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure DbEdtNomePropertiesChange(Sender: TObject);
    procedure DtStUsuarioBeforePost(DataSet: TDataSet);
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
  if (DtStPrincipal.State in [dsEdit, dsInsert]) then
    inherited;

  if (DtStUsuario.State in [dsEdit, dsInsert]) then
    DtStUsuario.Cancel;

  FNovoUsuario := False;

  CarregarUsuario(DtStPrincipalUSR_ID.AsInteger);
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

  if (DtStPrincipal.State in [dsEdit, dsInsert]) then
    begin
      // Valida o CPF do funcionário:
      if (Trim(DtStPrincipalFUN_CPF.AsString) <> '') then
        if not Str.ValidarCPF(DtStPrincipalFUN_CPF.AsString) then
          begin
            Msg.Aviso(CADASTRO_AVISO_CPF_INVALIDO);
            DbEdtCPF.SetFocus;
            Exit;
          end;


      if (DtStPrincipal.State = dsInsert) then
        begin

          // Validando se a matrícula já existe. Quando existir, o funcionário poderá estar
          // lotado em outra unidade e o sistema carregará o registro para que as informações do
          // funcionário sejam visualizadas ou atualizadas.
          DtStFuncionarioMatricula.Close;
          DtStFuncionarioMatricula.ParamByName('matricula').AsString := DtStPrincipalFUN_MATRICULA.AsString;
          DtStFuncionarioMatricula.Open;

          if not DtStFuncionarioMatricula.IsEmpty then
            begin
              Msg.Informacao(Format(CADASTRO_MATRICULA_FUNCIONARIO_EXISTENTE, [DtStFuncionarioMatriculaUND_NOME.AsString]));
              ID := DtStFuncionarioMatriculaFUN_ID.AsInteger;
              FTransferirUnidadeOrigem := DtStFuncionarioMatriculaUND_NOME.AsString;
              FTransferirFuncionarioNome := DtStFuncionarioMatriculaFUN_NOME.AsString;
              DtStPrincipal.Cancel;
              DtStPrincipal.Close;
              DtStPrincipal.Params[0].AsInteger := ID;
              DtStPrincipal.Open;
              DtStPrincipal.Edit;
              DtStPrincipalUND_ID.AsInteger := DtmSistemaModulo.UnidadeLocalID;
              FTransferirFuncionario := True;
              DbEdtMatricula.SetFocus;
              Exit;
            end
          else
            begin

              // Caso a matrícula não exista, será validado o CPF informado para o funcionário, se o mesmo já existe.
              // Caso exista, será realizado o mesmo procedimento de carregar o registro do funcionário pelo CPF para
              // visualização ou atualização das informações.
              DtStFuncionarioCPF.Close;
              DtStFuncionarioCPF.ParamByName('cpf').AsString := DtStPrincipalFUN_CPF.AsString;
              DtStFuncionarioCPF.Open;

              if not DtStFuncionarioCPF.IsEmpty then
                begin
                  Msg.Informacao(Format(CADASTRO_CPF_FUNCIONARIO_EXISTENTE, [DtStFuncionarioCPFUND_NOME.AsString]));
                  ID := DtStFuncionarioCPFFUN_ID.AsInteger;
                  FTransferirUnidadeOrigem := DtStFuncionarioCPFUND_NOME.AsString;
                  FTransferirFuncionarioNome := DtStFuncionarioCPFFUN_NOME.AsString;
                  DtStPrincipal.Cancel;
                  DtStPrincipal.Close;
                  DtStPrincipal.Params[0].AsInteger := ID;
                  DtStPrincipal.Open;
                  DtStPrincipal.Edit;
                  DtStPrincipalUND_ID.AsInteger := DtmSistemaModulo.UnidadeLocalID;
                  FTransferirFuncionario := True;
                  DbEdtMatricula.SetFocus;
                  Exit;
                end;
            end;
        end;

      if FTransferirFuncionario then
        begin
          if Msg.Confirmacao(Format(CADASTRO_FUNCIOINARIO_TRANSFERIR, [FTransferirFuncionarioNome, FTransferirUnidadeOrigem, DtmSistemaModulo.UnidadeLocalNome])) then
            FTransferirFuncionario := False
          else
            Exit;
        end;


      inherited;

      if (not (DtStPrincipal.State in [dsInsert, dsEdit])) then
        CarregarUsuario(DtStPrincipalUSR_ID.Value);
    end;

  if (DtStUsuario.State in [dsEdit, dsInsert]) and (not (DtStPrincipal.State in [dsInsert, dsEdit])) then
    begin
      DtStUsuario.Post;
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
        FrmSistemaUsuario.Editar(DtStUsuarioUSR_LOGIN.AsString);
        DtStUsuario.CloseOpen(True);
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
  DtStUsuario.Close;
  DtStUsuario.ParamByName('usr_id').AsInteger := ID;
  DtStUsuario.Open;
end;

procedure TFrmPessoalFuncionario.DbEdtNomePropertiesChange(Sender: TObject);
begin
  inherited;
  LblTitulo.Caption := StringOfChar(' ', 6) + DbEdtNome.Text;
end;

procedure TFrmPessoalFuncionario.DtSrcPrincipalStateChange(Sender: TObject);
begin
  inherited;

  LblPerfil.Enabled := (DtStPrincipal.State = dsBrowse) and (not DtStPrincipal.IsEmpty);
  DbLkpCmbBxPerfil.Enabled := LblPerfil.Enabled;
  DbChckBxExpirada.Enabled := LblPerfil.Enabled;
  DbChckBxAtivo.Enabled := LblPerfil.Enabled;
  BtnUsuario.Enabled := LblPerfil.Enabled;
end;

procedure TFrmPessoalFuncionario.DtSrcUsuarioStateChange(Sender: TObject);
begin
  inherited;
  with DtStUsuario do
    begin
      BtnNovo.Enabled := ((State = dsBrowse) and (not (State = dsInactive))) and (DtStPrincipal.State = dsBrowse);
      BtnExcluir.Enabled := ((State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0)) and
        ((DtStPrincipal.State = dsBrowse) and (DtStPrincipal.RecordCount > 0));
      BtnCancelar.Enabled := ((State in [dsEdit, dsInsert]) and (not (State = dsInactive))) or
        (DtStPrincipal.State in [dsEdit, dsInsert]);
      BtnSalvar.Enabled := ((State in [dsEdit, dsInsert]) and (not (State = dsInactive)))  or
        (DtStPrincipal.State in [dsEdit, dsInsert]);;
      BtnRelatorio.Enabled := (State = dsBrowse)  and (not (State = dsInactive)) and (RecordCount > 0);
    end;
end;

procedure TFrmPessoalFuncionario.DtStPrincipalAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CarregarUsuario(DtStPrincipalUSR_ID.Value);
  FTransferirFuncionario := False;
end;

procedure TFrmPessoalFuncionario.DtStPrincipalAfterPost(DataSet: TDataSet);
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

procedure TFrmPessoalFuncionario.DtStPrincipalBeforePost(DataSet: TDataSet);
var
  ID: Integer;
begin
  inherited;

  if (DtStPrincipal.State = dsInsert) then
    begin
      ID := DtmSistemaModulo.UsuarioCriar(
        DtStPrincipalFUN_MATRICULA.AsString,
        Str.MD5('123'));
      DtStPrincipalUSR_ID.AsInteger := ID;

      FNovoUsuario := True;
    end;
end;

procedure TFrmPessoalFuncionario.DtStPrincipalNewRecord(DataSet: TDataSet);
begin
  inherited;

  DtStPrincipalFUN_DATA.Value := Date;
  DtStPrincipalUND_ID.Value := DtmSistemaModulo.UnidadeLocalID;
  DtStPrincipalREG_EXCLUIDO.Value := False;
end;

procedure TFrmPessoalFuncionario.DtStUsuarioBeforePost(DataSet: TDataSet);
begin
  inherited;
  DtmSistemaModulo.GravarAuditoriaAlteracao(DtStUsuario);
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

end.
