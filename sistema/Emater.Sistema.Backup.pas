unit Emater.Sistema.Backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, IB_Services, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxTextEdit, cxMemo, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, {$WARNINGS OFF} FileCtrl {$WARNINGS ON};

type
  TFrmSistemaBackup = class(TFrmBaseBasico)
    BackupService: TpFIBBackupService;
    MmLog: TcxMemo;
    Label1: TLabel;
    EdtDestino: TcxTextEdit;
    BtnAlterar: TcxButton;
    BtnIniciar: TcxButton;
    BtnDetalhes: TcxButton;
    Label2: TLabel;
    BtnFechar: TcxButton;
    procedure BtnDetalhesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSistemaBackup: TFrmSistemaBackup;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Sistema.Consts;

procedure TFrmSistemaBackup.BtnAlterarClick(Sender: TObject);
var
  FilePath: string;
begin
  inherited;
  if SelectDirectory('Selecione um local para o arquivo de backup:', '', FilePath) then
    begin
      EdtDestino.Text := FilePath;
      DtmSistemaModulo.BackupDiretorioSalvar(FilePath);
    end;
end;

procedure TFrmSistemaBackup.BtnDetalhesClick(Sender: TObject);
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

procedure TFrmSistemaBackup.BtnIniciarClick(Sender: TObject);
var
  FilePath, BackupFileName: string;
begin
  {$WARNINGS OFF}
  Screen.Cursor := crHourGlass;
  try
    try
      EdtDestino.Enabled := False;
      BtnIniciar.Enabled := False;
      BtnAlterar.Enabled := False;
      BtnFechar.Enabled := False;

      BackupService.Active := False;
      BackupService.Params.Clear;
      BackupService.Params.Add('user_name=sysdba');

      {$IFDEF RELEASE}
      BackupService.Params.Add('password=3m@T3R_1');
      {$ELSE}
      BackupService.Params.Add('password=masterkey');
      {$ENDIF}

      BackupService.DatabaseName := DtmConexaoModulo.Base;
      BackupService.ServerName := DtmConexaoModulo.Servidor;
      BackupService.BackupFile.Clear;

      if (EdtDestino.Text <> '') and (EdtDestino.Text[Length(EdtDestino.Text)] <> '\') then
        FilePath := EdtDestino.Text + '\'
      else
        FilePath := EdtDestino.Text;

      BackupFileName := FilePath + 'BD_ATER_Para.' + FormatDateTime('yyyy.mm.dd.hh.nn.ss', Now) + '.fbk';

      MmLog.Clear;
      MmLog.Lines.Add('===========================================================================');
      MmLog.Lines.Add('Backup do banco de dados: ' + BackupService.ServerName + ':' + BackupService.DatabaseName);
      MmLog.Lines.Add('===========================================================================');
      MmLog.Lines.Add('INÍCIO DO PROCESSO');
      MmLog.Lines.Add('===========================================================================');

      BackupService.BackupFile.Add(BackupFileName);
      BackupService.Active := True;
      BackupService.ServiceStart;
      while not (BackupService.Eof) do
        begin
          MmLog.Lines.Add(BackupService.GetNextLine);
          Application.ProcessMessages;
        end;
      BackupService.Active := False;
      MmLog.Lines.Add('===========================================================================');
      MmLog.Lines.Add('FIM DO PROCESSO');
      MmLog.Lines.Add('===========================================================================');
      MmLog.Lines.Add('Arquivo de backup gerado: ' + BackupFileName);
      MmLog.Lines.Add('===========================================================================');

      MSG.Informacao(Format(SISTEMA_BD_BACKUP_SUCESSO, [ExtractFileName(BackupFileName), EdtDestino.Text]));
    except
      on E: Exception do
        begin
          BackupService.Active := False;
          MmLog.Lines.Add(Format(SISTEMA_BD_BACKUP_ERRO, [e.Message]));
          MmLog.Lines.Add('Processo abortado.');
          MSG.Erro(Format(SISTEMA_BD_BACKUP_ERRO, [e.Message]));
        end;
    end;
  finally
    EdtDestino.Enabled := True;
    BtnIniciar.Enabled := True;
    BtnAlterar.Enabled := True;
    BtnFechar.Enabled := True;
    Screen.Cursor := crDefault;
  end;
  {$WARNINGS ON}
end;

procedure TFrmSistemaBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if BackupService.Active then
    begin
      MSG.Aviso(SISTEMA_BD_BACKUP_FECHAR);
      Action := caNone;
    end;
end;

procedure TFrmSistemaBackup.FormCreate(Sender: TObject);
begin
  inherited;
  EdtDestino.Text := DtmSistemaModulo.BackupDiretorio;
end;

end.
