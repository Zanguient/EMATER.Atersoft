unit Emater.Base.Basico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, dxRibbonForm, Emater.Classe.Cadeia, Emater.Classe.Mensagem,
  cxButtons, dxBar, Emater.Classe.Log, Vcl.StdCtrls;

type
  TFormularioEstilo = (feModal, feNormal, feMDIFilha);

  TFrmBaseBasico = class(TdxRibbonForm)
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FStr: TCadeia;
    FMsg: TMensagem;
  protected
    procedure RegistrarSeguranca;
    procedure AplicarSeguranca;
    procedure SublinharCamposObrigatorios;
    procedure ColorirCamposObrigatorios(const Cor: TColor);
  public
    property Str: TCadeia read FStr;
    property Msg: TMensagem read FMsg;
    function FindFormByName(const FormName: string): Boolean;
    function GetFormByName(const FormName: string): TForm;
  published
    procedure Exibir(AFrmEstilo: TFormularioEstilo);
  end;

var
  FrmBaseBasico: TFrmBaseBasico;

implementation

{$R *.dfm}

uses Emater.Sistema.Modulo, Emater.Sistema.Consts;

{ TFrmBaseBasico }

function TFrmBaseBasico.FindFormByName(const FormName: string): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Application.MainForm.MDIChildCount - 1 do
    if (Application.MainForm.MDIChildren[I].Name = FormName) then
      begin
        Result := True;
        Break;
      end;
end;

function TFrmBaseBasico.GetFormByName(const FormName: string): TForm;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to Application.MainForm.MDIChildCount - 1 do
    if (Application.MainForm.MDIChildren[I].Name = FormName) then
      begin
        Result := Application.MainForm.MDIChildren[I];
        Break;
      end;
end;

procedure TFrmBaseBasico.RegistrarSeguranca;
var
  I, J: Integer;
begin
  CodeSite.EnterMethod(Self.Name + '.RegistrarSeguranca().');
  try
    J := 0;

    {$IFDEF DEBUG}
    if (Self.Tag = 1) then
      begin
        CodeSite.SendMsg('Aplicação registrada: [' + Self.Name + '].');
        DtmSistemaModulo.AplicacaoRegistrar(
          SISTEMA_MODULO_ID,
          Self.Name,
          Self.Caption,
          Self.Hint);
      end;

    for I := 0 to ComponentCount - 1 do
      begin
        if (Components[I] is TcxButton) then
          begin
            if (TcxButton(Components[I]).Tag = 1) then
              begin
                if DtmSistemaModulo.ControleRegistrar(
                  SISTEMA_MODULO_ID,
                  Self.Name,
                  TcxButton(Components[I]).Name,
                  TcxButton(Components[I]).Hint,
                  TcxButton(Components[I]).Description) then
                  Inc(J);
              end;
          end
        else
          if (Components[I] is TdxBarButton) then
            begin
              if (TdxBarButton(Components[I]).Tag = 1) then
                begin
                  if DtmSistemaModulo.ControleRegistrar(
                    SISTEMA_MODULO_ID,
                    Self.Name,
                    TdxBarButton(Components[I]).Name,
                    TdxBarButton(Components[I]).Hint,
                    TdxBarButton(Components[I]).Description) then
                    Inc(J);
                end;
            end;
      end;
    CodeSite.SendMsg('Controles registrados: [' + IntToStr(J) + '].');
    {$ENDIF}
  finally
    CodeSite.ExitMethod(Self.Name + '.RegistrarSeguranca().');
  end;
end;

procedure TFrmBaseBasico.SublinharCamposObrigatorios;
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TLabel) then
      if (TLabel(Components[I]).Tag = 2) then
        TLabel(Components[I]).Font.Style := [fsUnderline];
  end;
end;

procedure TFrmBaseBasico.AplicarSeguranca;
var
  I: Integer;
begin
  CodeSite.EnterMethod(Self.Name + '.AplicarSeguranca().');
  try
    DtmSistemaModulo.CarregarControleAtivo;
    CodeSite.SendMsg('Controles ativos carregados.');
    for I := 0 to ComponentCount - 1 do
      begin
        if ((Components[I] is TcxButton) and (TcxButton(Components[I]).Tag = 1)) then
          TcxButton(Components[I]).Visible := DtmSistemaModulo.ControleAtivo(Self.Name, TcxButton(Components[I]).Name)
        else
          if ((Components[I] is TdxBarButton) and (TdxBarButton(Components[I]).Tag = 1)) then
            begin
              if DtmSistemaModulo.ControleAtivo(Self.Name, TdxBarButton(Components[I]).Name) then
                TdxBarButton(Components[I]).Visible := ivAlways
              else
                TdxBarButton(Components[I]).Visible := ivNever;
            end;
      end;
    CodeSite.SendMsg('Segurança aplicada aos controles com sucesso.');
  finally
    CodeSite.ExitMethod(Self.Name + '.AplicarSeguranca().');
  end;
end;

procedure TFrmBaseBasico.ColorirCamposObrigatorios(const Cor: TColor);
var
  I: Integer;
begin
  for I := 0 to ComponentCount - 1 do
  begin
    if (Components[I] is TLabel) then
      if (TLabel(Components[I]).Tag = 2) then
        TLabel(Components[I]).Font.Color := Cor;
  end;
end;

procedure TFrmBaseBasico.Exibir(AFrmEstilo: TFormularioEstilo);
begin
  case AFrmEstilo of
    feModal: ShowModal;
    feNormal: Show;
    feMDIFilha: Show;
  end;
end;
procedure TFrmBaseBasico.FormCreate(Sender: TObject);
begin
  FStr := TCadeia.Create;
  FMsg := TMensagem.Create(Application.Handle);

  Windows.ShowWindow(Application.Handle, SW_HIDE);
  SetWindowLong(Application.Handle, GWL_EXSTYLE, (GetWindowLong(Application.Handle, GWL_EXSTYLE) or WS_EX_TOOLWINDOW) and not WS_EX_APPWINDOW);
end;

procedure TFrmBaseBasico.FormDestroy(Sender: TObject);
begin
  FStr.Free;
  FMsg.Free;
end;

end.
