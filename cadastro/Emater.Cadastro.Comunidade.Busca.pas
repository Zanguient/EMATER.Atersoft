unit Emater.Cadastro.Comunidade.Busca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Busca, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxPCdxBarPopupMenu, cxContainer, cxEdit, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, dxSkinsdxBarPainter, dxBar, FIBDataSet,
  pFIBDataSet, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxImageComboBox, cxPC, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxSkinSeven, dxSkinSevenClassic, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFrmCadastroComunidadeBusca = class(TFrmBaseBusca)
    Label3: TLabel;
    LkpCmbBxMunicipio: TcxLookupComboBox;
    GrdConsultaTblCOM_NOME: TcxGridDBColumn;
    GrdConsultaTblCOM_LOCALIZACAO: TcxGridDBColumn;
    GrdConsultaTblCID_NOME: TcxGridDBColumn;
    GrdConsultaTblUFE_ID: TcxGridDBColumn;
    QryConsultaCOM_ID: TIntegerField;
    QryConsultaCOM_NOME: TStringField;
    QryConsultaCOM_LOCALIZACAO: TStringField;
    QryConsultaREG_EXCLUIDO: TSmallintField;
    QryConsultaCID_ID: TIntegerField;
    QryConsultaCID_NOME: TStringField;
    QryConsultaUFE_ID: TStringField;
    procedure BtnConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  public
    procedure LimparCampos; override;
  end;

var
  FrmCadastroComunidadeBusca: TFrmCadastroComunidadeBusca;

implementation

{$R *.dfm}

uses Emater.Conexao.Modulo, Emater.Sistema.Modulo, Emater.Dne.Modulo, Emater.Base.Consts, Emater.Recurso.Modulo,
  Emater.Cadastro.Comunidade, Emater.Classe.Log;

procedure TFrmCadastroComunidadeBusca.BtnConsultarClick(Sender: TObject);
var
  CanLoad: Boolean;
begin
  inherited;
  CodeSite.EnterMethod(Self.Name + '.BtnConsultarClick().');

  Screen.Cursor := crHourGlass;

  try
    QryConsulta.Close;
    QryConsulta.SQL.Clear;
    QryConsulta.SQL.AddStrings(DefaultSQL);

    CodeSite.SendMsg('Preparando para consultar o banco de dados.');

    // Nome da comunidade:
    if (Trim(EdtValor.Text) <> '') then
      case ImgCmbBxOpcao.ItemIndex of
        0: QryConsulta.SQL.Add(Format('and (a.com_nome like %s)', [QuotedStr(EdtValor.Text + '%')]));
        1: QryConsulta.SQL.Add(Format('and (a.com_nome like %s)', [QuotedStr('%' + EdtValor.Text + '%')]));
      end;

    // Município:
    if (LkpCmbBxMunicipio.Text <> '') then
      QryConsulta.SQL.Add(Format('and (a.cid_id = %s)', [IntToStr(LkpCmbBxMunicipio.EditValue)]));

    // Carregando o resultado:
    CanLoad := True;
    if (DefaultSQL.Count = QryConsulta.SQL.Count) then
      CanLoad := Msg.Confirmacao(BASE_MSG_BUSCA_CARREGAR_TUDO);

    if CanLoad then
      begin
        QryConsulta.SQL.Add('order by a.com_nome');
        QryConsulta.Open;

        if QryConsulta.IsEmpty then
          begin
            CodeSite.SendMsg('Consulta realizada. Nenhum registro encontrado.');
            Msg.Informacao(BASE_MSG_BUSCA_NADA_ENCONTRADO);
          end
        else
          begin
            CodeSite.SendMsg('Consulta realizada. Total de registros encontrados: ' + IntToStr(QryConsulta.RecordCount) + '.');
            GrdConsulta.SetFocus;
          end;
      end;
  finally
    Screen.Cursor := crDefault;
    CodeSite.ExitMethod(Self.Name + '.BtnConsultarClick().');
  end;
end;

procedure TFrmCadastroComunidadeBusca.FormCreate(Sender: TObject);
begin
  inherited;

  EditForm := FrmCadastroComunidade;
  EditFormClass := TFrmCadastroComunidade;

  LkpCmbBxMunicipio.Properties.ListSource := DtmDneModulo.DtSrcCidade;
end;

procedure TFrmCadastroComunidadeBusca.LimparCampos;
begin
  inherited;
  LkpCmbBxMunicipio.Clear;
end;

end.
