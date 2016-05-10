unit Emater.Sistema.Restauracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, StrUtils,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxTextEdit, cxMemo, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, {$WARNINGS OFF} FileCtrl, FireDAC.Stan.Def, FireDAC.Phys.IBWrapper, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.IBBase {$WARNINGS ON};

type
  TFrmSistemaRestauracao = class(TFrmBaseBasico)
    MmLog: TcxMemo;
    Label1: TLabel;
    EdtOrigem: TcxTextEdit;
    BtnAbrir: TcxButton;
    BtnIniciar: TcxButton;
    BtnDetalhes: TcxButton;
    Label2: TLabel;
    BtnFechar: TcxButton;
    OpenDialogBackup: TOpenDialog;
    RestoreService: TFDIBRestore;
    EdtDestino: TcxTextEdit;
    Label3: TLabel;
    procedure BtnDetalhesClick(Sender: TObject);
    procedure BtnAbrirClick(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestoreServiceBeforeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RestoreServiceProgress(ASender: TFDPhysDriverService; const AMessage: string);
    procedure RestoreServiceAfterExecute(Sender: TObject);
    procedure RestoreServiceError(ASender, AInitiator: TObject; var AException: Exception);
  private
    Executando: Boolean;
  end;

var
  FrmSistemaRestauracao: TFrmSistemaRestauracao;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Sistema.Consts, Emater.Cadastro.Modulo,
  Emater.Pessoal.Modulo, Emater.Produtividade.Modulo, Emater.Sistema.Principal, Emater.Dialogo.Modulo, Emater.Dne.Modulo,
  Emater.Log.Modulo, Emater.Relatorio.Modulo, Emater.Proater.Modulo;

procedure TFrmSistemaRestauracao.BtnAbrirClick(Sender: TObject);
var
  Arquivo: string;
begin
  if OpenDialogBackup.Execute then
    begin
      EdtOrigem.Text := OpenDialogBackup.FileName;

      Arquivo := ExtractFileName(OpenDialogBackup.FileName);
      if (Pos('.', Arquivo) > 0) then
        begin
          Arquivo := ReverseString(Arquivo);
          Arquivo := Copy(Arquivo, Pos('.', Arquivo) + 1);
          Arquivo := ReverseString(Arquivo) + '.fdb';
        end;

      EdtDestino.Text := ExtractFilePath(OpenDialogBackup.FileName) + Arquivo;
    end;
end;

procedure TFrmSistemaRestauracao.BtnDetalhesClick(Sender: TObject);
begin
  if (Height = 168) then
    begin
      BtnDetalhes.Caption := 'Ocultar detalhes';
      Height := 496;
      MmLog.SetFocus;
    end
  else
    begin
      BtnDetalhes.Caption := 'Exibir detalhes';
      Height := 168
      ;
    end;
end;

procedure TFrmSistemaRestauracao.BtnIniciarClick(Sender: TObject);
begin
  if FileExists(EdtOrigem.Text) then
    begin
      if Msg.Confirmacao(SISTEMA_BD_RESTORE_CONFIRMAR) then
        begin
          {$WARNINGS OFF}
          Screen.Cursor := crHourGlass;
          try
            EdtOrigem.Enabled := False;
            EdtDestino.Enabled := False;
            BtnIniciar.Enabled := False;
            BtnAbrir.Enabled := False;
            BtnFechar.Enabled := False;

            RestoreService.UserName := 'sysdba';

            {$IFDEF RELEASE}
            RestoreService.Password := '3m@T3R_1';
            {$ELSE}
            RestoreService.Password := 'masterkey';
            {$ENDIF}

            RestoreService.Database := EdtDestino.Text;
            RestoreService.Host := DtmConexaoModulo.Servidor;
            RestoreService.BackupFiles.Clear;
            RestoreService.BackupFiles.Add(EdtOrigem.Text);

            DtmConexaoModulo.FDConnection.Connected := False;

            RestoreService.Restore;
          finally
            DtmSistemaModulo.RecarregarDados;
            DtmCadastroModulo.RecarregarDados;
            DtmPessoalModulo.RecarregarDados;
            DtmProdutividadeModulo.RecarregarDados;
            DtmDialogoModulo.RecarregarDados;
            DtmDneModulo.RecarregarDados;
            DtmLogModulo.RecarregarDados;
            DtmRelatorioModulo.RecarregarDados;
            DtmProaterModulo.RecarregarDados;

            FrmSistemaPrincipal.AtualizarBarraStatus(
              DtmConexaoModulo.Servidor + ':' + DtmConexaoModulo.Base,
              DtmConexaoModulo.UsuarioNome,
              DtmSistemaModulo.UnidadeLocalNome);

            EdtOrigem.Enabled := True;
            BtnIniciar.Enabled := True;
            BtnAbrir.Enabled := True;
            BtnFechar.Enabled := True;
            Screen.Cursor := crDefault;
          end;
          {$WARNINGS ON}
        end;
    end
  else
    MSG.Aviso(SISTEMA_BD_RESTORE_ARQUIVO);
end;

procedure TFrmSistemaRestauracao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Executando then
    begin
      MSG.Aviso(SISTEMA_BD_RESTORE_FECHAR);
      Action := caNone;
    end;
end;

procedure TFrmSistemaRestauracao.FormCreate(Sender: TObject);
begin
  inherited;
  Executando := False;
end;

procedure TFrmSistemaRestauracao.RestoreServiceAfterExecute(Sender: TObject);
begin
  inherited;
  MmLog.Lines.Add('===========================================================================');
  MmLog.Lines.Add('FIM DO PROCESSO');
  MmLog.Lines.Add('===========================================================================');
  MmLog.Lines.Add('Banco de dados restaurado: ' + DtmConexaoModulo.Base);
  MmLog.Lines.Add('===========================================================================');

  MSG.Informacao(SISTEMA_BD_RESTORE_SUCESSO);

  EdtOrigem.Enabled := True;
  EdtDestino.Enabled := True;
  BtnIniciar.Enabled := True;
  BtnAbrir.Enabled := True;
  BtnFechar.Enabled := True;

  Executando := False;
end;

procedure TFrmSistemaRestauracao.RestoreServiceBeforeExecute(Sender: TObject);
begin
  Executando := True;

  MmLog.Clear;
  MmLog.Lines.Add('===========================================================================');
  MmLog.Lines.Add('Restauração do banco de dados: ' + DtmConexaoModulo.Servidor + ':' + DtmConexaoModulo.Base);
  MmLog.Lines.Add('===========================================================================');
  MmLog.Lines.Add('INÍCIO DO PROCESSO');
  MmLog.Lines.Add('===========================================================================');
end;

procedure TFrmSistemaRestauracao.RestoreServiceError(ASender, AInitiator: TObject; var AException: Exception);
begin
  inherited;
  MmLog.Lines.Add(Format(SISTEMA_BD_RESTORE_ERRO, [AException.Message]));
  MmLog.Lines.Add('Processo abortado.');
  MSG.Erro(Format(SISTEMA_BD_RESTORE_ERRO, [AException.Message]));

  EdtOrigem.Enabled := True;
  EdtDestino.Enabled := True;
  BtnIniciar.Enabled := True;
  BtnAbrir.Enabled := True;
  BtnFechar.Enabled := True;

  Executando := False;
end;

procedure TFrmSistemaRestauracao.RestoreServiceProgress(ASender: TFDPhysDriverService; const AMessage: string);
begin
  inherited;
  MmLog.Lines.Add(AMessage);
  Application.ProcessMessages;
end;

end.
