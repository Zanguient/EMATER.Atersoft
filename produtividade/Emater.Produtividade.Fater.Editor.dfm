inherited FrmProdutividadeFaterEditor: TFrmProdutividadeFaterEditor
  Left = 309
  Top = 80
  BorderStyle = bsDialog
  Caption = 'Edi'#231#227'o'
  ClientHeight = 608
  ClientWidth = 653
  Position = poOwnerFormCenter
  ExplicitLeft = 309
  ExplicitTop = 80
  ExplicitWidth = 669
  ExplicitHeight = 646
  PixelsPerInch = 96
  TextHeight = 13
  object DbMemo: TcxDBMemo
    Left = 0
    Top = 0
    Align = alClient
    DataBinding.DataSource = DtSrcPrincipal
    ParentFont = False
    Properties.ScrollBars = ssVertical
    Style.Edges = []
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    OnKeyDown = DbMemoKeyDown
    Height = 608
    Width = 653
  end
  object DtSrcPrincipal: TDataSource
    Left = 112
    Top = 128
  end
end
