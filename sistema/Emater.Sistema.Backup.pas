unit Emater.Sistema.Backup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Basico, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinOffice2013White, dxSkinSeven, dxSkinSevenClassic, cxTextEdit, cxMemo, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, {$WARNINGS OFF} FileCtrl, FireDAC.Stan.Def, FireDAC.Phys.IBWrapper, FireDAC.Stan.Intf, FireDAC.Phys, FireDAC.Phys.IBBase,
  FireDAC.Phys.FB {$WARNINGS ON};

type
  TFrmSistemaBackup = class(TFrmBaseBasico)
    MmLog: TcxMemo;
    Label1: TLabel;
    EdtDestino: TcxTextEdit;
    BtnAlterar: TcxButton;
    BtnIniciar: TcxButton;
    BtnDetalhes: TcxButton;
    Label2: TLabel;
    BtnFechar: TcxButton;
    BackupService: TFDFBNBackup;
    FDIBBackup1: TFDIBBackup;
    procedure BtnDetalhesClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnIniciarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BackupServiceProgress(ASender: TFDPhysDriverService; const AMessage: string);
    procedure BackupServiceBeforeExecute(Sender: TObject);
    procedure BackupServiceAfterExecute(Sender: TObject);
    procedure BackupServiceError(ASender, AInitiator: TObject; var AException: Exception);
  private
    Executando: Boolean;
  public
    { Public declarations }
  end;

var
  FrmSistemaBackup: TFrmSistemaBackup;

implementation

{$R *.dfm}

uses Emater.Recurso.Modulo, Emater.Sistema.Modulo, Emater.Conexao.Modulo, Emater.Sistema.Consts;

procedure TFrmSistemaBackup.BackupServiceAfterExecute(Sender: TObject);
begin
  MmLog.Lines.Add('===========================================================================');
  MmLog.Lines.Add('FIM DO PROCESSO');
  MmLog.Lines.Add('===========================================================================');
  MmLog.Lines.Add('Arquivo de backup gerado: ' + BackupService.BackupFile);
  MmLog.Lines.Add('===========================================================================');

  MSG.Informacao(Format(SISTEMA_BD_BACKUP_SUCESSO, [ExtractFileName(BackupService.BackupFile), EdtDestino.Text]));

  EdtDestino.Enabled := True;
  BtnIniciar.Enabled := True;
  BtnAlterar.Enabled := True;
  BtnFechar.Enabled := True;

  Executando := False;
end;

procedure TFrmSistemaBackup.BackupServiceBeforeExecute(Sender: TObject);
begin
  Executando := True;

  MmLog.Clear;
  MmLog.Lines.Add('===========================================================================');
  MmLog.Lines.Add('Backup do banco de dados: ' + BackupService.Host + ':' + BackupService.Database);
  MmLog.Lines.Add('===========================================================================');
  MmLog.Lines.Add('INÍCIO DO PROCESSO');
  MmLog.Lines.Add('===========================================================================');
end;

procedure TFrmSistemaBackup.BackupServiceError(ASender, AInitiator: TObject; var AException: Exception);
begin
  MmLog.Lines.Add(Format(SISTEMA_BD_BACKUP_ERRO, [AException.Message]));
  MmLog.Lines.Add('Processo abortado.');
  MSG.Erro(Format(SISTEMA_BD_BACKUP_ERRO, [AException.Message]));

  EdtDestino.Enabled := True;
  BtnIniciar.Enabled := True;
  BtnAlterar.Enabled := True;
  BtnFechar.Enabled := True;

  Executando := False;
end;

procedure TFrmSistemaBackup.BackupServiceProgress(ASender: TFDPhysDriverService; const AMessage: string);
begin
  MmLog.Lines.Add(AMessage);
end;

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


      BackupService.UserName := 'sysdba';

      {$IFDEF RELEASE}
      BackupService.Password := '3m@T3R_1';
      {$ELSE}
      BackupService.Password := 'masterkey';
      {$ENDIF}

      BackupService.Database := DtmConexaoModulo.Base;
      BackupService.Host := DtmConexaoModulo.Servidor;

      if (EdtDestino.Text <> '') and (EdtDestino.Text[Length(EdtDestino.Text)] <> '\') then
        FilePath := EdtDestino.Text + '\'
      else
        FilePath := EdtDestino.Text;

      BackupFileName := FilePath + 'BD_ATER_Para.' + FormatDateTime('yyyy.mm.dd.hh.nn.ss', Now) + '.fbk';
      BackupService.BackupFile := BackupFileName;
      BackupService.Backup;
    except
      on E: Exception do
        begin
          MmLog.Lines.Add(Format(SISTEMA_BD_BACKUP_ERRO, [e.Message]));
          MmLog.Lines.Add('Processo abortado.');
          MSG.Erro(Format(SISTEMA_BD_BACKUP_ERRO, [e.Message]));
        end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  {$WARNINGS ON}
end;

procedure TFrmSistemaBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Executando then
    begin
      MSG.Aviso(SISTEMA_BD_BACKUP_FECHAR);
      Action := caNone;
    end;
end;

procedure TFrmSistemaBackup.FormCreate(Sender: TObject);
begin
  inherited;
  EdtDestino.Text := DtmSistemaModulo.BackupDiretorio;
  Executando := False;
end;

end.
