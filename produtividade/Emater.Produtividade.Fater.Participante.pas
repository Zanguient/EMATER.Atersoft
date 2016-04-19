unit Emater.Produtividade.Fater.Participante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Emater.Base.Dialogo, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter, cxPCdxBarPopupMenu, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxPC, Data.DB,
  cxContainer, cxEdit, cxGroupBox, cxDropDownEdit, cxImageComboBox, cxDBEdit, cxMemo, cxMaskEdit, cxCalendar, cxTextEdit, dxSkinSeven,
  dxSkinSevenClassic, dxBarBuiltInMenu, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmProdutividadeFaterParticipante = class(TFrmBaseDialogo)
    DtSrcFaterParticipante: TDataSource;
    GrpBxParticipante: TcxGroupBox;
    Label1: TLabel;
    DbEdtNome: TcxDBTextEdit;
    Label2: TLabel;
    Label3: TLabel;
    DbEdtNascimento: TcxDBDateEdit;
    Label4: TLabel;
    DbMemoObs: TcxDBMemo;
    Label5: TLabel;
    DBImgCmbBxSexo: TcxDBImageComboBox;
    DbEdtCPF: TcxDBMaskEdit;
    DtStCPFExiste: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
  end;

var
  FrmProdutividadeFaterParticipante: TFrmProdutividadeFaterParticipante;

implementation

{$R *.dfm}

uses Emater.Produtividade.Fater, Emater.Cadastro.Consts;

procedure TFrmProdutividadeFaterParticipante.BtnOKClick(Sender: TObject);
begin
  if (Trim(DtSrcFaterParticipante.DataSet.FieldByName('PRT_CPF').AsString) <> '') then
    begin
      if not Str.ValidarCPF(Str.SomenteNumeros(DtSrcFaterParticipante.DataSet.FieldByName('PRT_CPF').AsString)) then
        begin
          Msg.Aviso(CADASTRO_AVISO_CPF_INVALIDO);
          DbEdtCPF.SetFocus;
          Exit;
        end;

      DtStCPFExiste.Close;
      DtStCPFExiste.ParamByName('fat_id').AsLargeInt := DtSrcFaterParticipante.DataSet.FieldByName('fat_id').AsLargeInt;
      DtStCPFExiste.ParamByName('prt_cpf').AsString := DtSrcFaterParticipante.DataSet.FieldByName('PRT_CPF').AsString;
      DtStCPFExiste.Open;

      if (DtStCPFExiste.FieldByName('existe').AsInteger > 0) then
        begin
          Msg.Aviso(CADASTRO_AVISO_CPF_PARTICIPANTE_EXISTENTE);
          DbEdtCPF.SetFocus;
          Exit;
        end;
    end;
  ModalResult := mrOk;
end;

procedure TFrmProdutividadeFaterParticipante.FormShow(Sender: TObject);
begin
  inherited;

  if DbEdtNome.CanFocus then
    DbEdtNome.SetFocus;
end;

end.
