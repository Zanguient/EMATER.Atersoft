inherited FrmBaseDialogo: TFrmBaseDialogo
  Left = 423
  Top = 156
  BorderStyle = bsDialog
  Caption = 'Di'#225'logo'
  ClientHeight = 400
  ClientWidth = 361
  Position = poScreenCenter
  ExplicitLeft = 423
  ExplicitTop = 156
  ExplicitWidth = 377
  ExplicitHeight = 438
  DesignSize = (
    361
    400)
  PixelsPerInch = 96
  TextHeight = 13
  object PgCntrlPrincipal: TcxPageControl
    Left = 8
    Top = 8
    Width = 345
    Height = 354
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    Properties.ActivePage = TbShtPrincipal
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 352
    ClientRectLeft = 2
    ClientRectRight = 343
    ClientRectTop = 28
    object TbShtPrincipal: TcxTabSheet
      Caption = 'Dados'
      ImageIndex = 0
    end
  end
  object BtnOK: TcxButton
    Left = 197
    Top = 368
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    ModalResult = 1
    OptionsImage.NumGlyphs = 2
    TabOrder = 1
  end
  object BtnCancelar: TcxButton
    Left = 278
    Top = 368
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancelar'
    ModalResult = 2
    OptionsImage.NumGlyphs = 2
    TabOrder = 2
  end
end
