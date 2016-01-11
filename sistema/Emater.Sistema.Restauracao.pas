unit Emater.Sistema.Restauracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, IB_Services, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxTextEdit, cxMemo, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, {$WARNINGS OFF} FileCtrl {$WARNINGS ON};

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
    RestoreService: TpFIBRestoreService;
    OpenDialogBackup: TOpenDialog;
    procedure BtnDetalhesClick(Sender: TObject);
    procedure BtnAbrirClick(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSistemaRestauracao: TFrmSistemaRestauracao;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Sistema.Consts, Emater.Cadastro.Modulo,
  Emater.Pessoal.Modulo, Emater.Produtividade.Modulo, Emater.Sistema.Principal, Emater.Dialogo.Modulo, Emater.Dne.Modulo,
  Emater.Log.Modulo, Emater.Relatorio.Modulo, Emater.Proater.Modulo;

procedure TFrmSistemaRestauracao.BtnAbrirClick(Sender: TObject);
begin
  if OpenDialogBackup.Execute then
    Edtorigem.Text := OpenDialogBackup.FileName;
end;

procedure TFrmSistemaRestauracao.BtnDetalhesClick(Sender: TObject);
begin
  if (Height = 130) then
    begin
      BtnDetalhes.Caption := 'Ocultar detalhes';
      Height := 495;
      MmLog.SetFocus;
    end
  else
    begin
      BtnDetalhes.Caption := 'Exibir detalhes';
      Height := 130;
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
            try
              EdtOrigem.Enabled := False;
              BtnIniciar.Enabled := False;
              BtnAbrir.Enabled := False;
              BtnFechar.Enabled := False;

              RestoreService.Active := False;
              RestoreService.Params.Clear;
              RestoreService.Params.Add('user_name=sysdba');

              {$IFDEF RELEASE}
              RestoreService.Params.Add('password=3m@T3R_1');
              {$ELSE}
              RestoreService.Params.Add('password=masterkey');
              {$ENDIF}

              RestoreService.DatabaseName.Clear;
              RestoreService.BackupFile.Clear;

              RestoreService.ServerName := DtmConexaoModulo.Servidor;

              MmLog.Clear;
              MmLog.Lines.Add('===========================================================================');
              MmLog.Lines.Add('Restauração do banco de dados: ' + DtmConexaoModulo.Servidor + ':' + DtmConexaoModulo.Base);
              MmLog.Lines.Add('===========================================================================');
              MmLog.Lines.Add('INÍCIO DO PROCESSO');
              MmLog.Lines.Add('===========================================================================');

              DtmConexaoModulo.pFIBDatabase.Connected := False;

              RestoreService.DatabaseName.Add(DtmConexaoModulo.Base);
              RestoreService.BackupFile.Add(EdtOrigem.Text);
              RestoreService.Active := True;
              RestoreService.ServiceStart;
              while not (RestoreService.Eof) do
                begin
                  MmLog.Lines.Add(RestoreService.GetNextLine);
                  Application.ProcessMessages;
                end;
              RestoreService.Active := False;
              MmLog.Lines.Add('===========================================================================');
              MmLog.Lines.Add('FIM DO PROCESSO');
              MmLog.Lines.Add('===========================================================================');
              MmLog.Lines.Add('Banco de dados restaurado: ' + DtmConexaoModulo.Base);
              MmLog.Lines.Add('===========================================================================');

              MSG.Informacao(SISTEMA_BD_RESTORE_SUCESSO);
            except
              on E: Exception do
                begin
                  RestoreService.Active := False;
                  MmLog.Lines.Add(Format(SISTEMA_BD_RESTORE_ERRO, [e.Message]));
                  MmLog.Lines.Add('Processo abortado.');
                  MSG.Erro(Format(SISTEMA_BD_RESTORE_ERRO, [e.Message]));
                end;
            end;
          finally
            DtmConexaoModulo.pFIBDatabase.Connected := True;

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
  if RestoreService.Active then
    begin
      MSG.Aviso(SISTEMA_BD_RESTORE_FECHAR);
      Action := caNone;
    end;
end;

end.
