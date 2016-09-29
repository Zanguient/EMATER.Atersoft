inherited FrmDialogoPendencia: TFrmDialogoPendencia
  Left = 424
  Top = 149
  ActiveControl = BtnFechar
  BorderStyle = bsDialog
  Caption = 'Campos requeridos'
  ClientHeight = 415
  ClientWidth = 320
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  ExplicitWidth = 326
  ExplicitHeight = 444
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 11
    Width = 264
    Height = 28
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = 
      'Os seguintes campos devem ser preenchidos com algum valor mas es' +
      't'#227'o vazios:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object Bevel1: TBevel
    Left = 8
    Top = 45
    Width = 304
    Height = 6
    Anchors = [akLeft, akTop, akRight]
    Shape = bsTopLine
  end
  object ImgIcon: TImage
    Left = 8
    Top = 8
    Width = 32
    Height = 32
    IncrementalDisplay = True
  end
  object BtnFechar: TcxButton
    Left = 238
    Top = 384
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Fechar'
    ModalResult = 2
    OptionsImage.NumGlyphs = 2
    TabOrder = 0
  end
  object cxGrdFld: TcxGrid
    Left = 8
    Top = 51
    Width = 304
    Height = 328
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = True
    object cxGrdFldTbl: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.First.Hint = 'Primeira prescri'#231#227'o'
      Navigator.Buttons.PriorPage.Visible = False
      Navigator.Buttons.Prior.Hint = 'Prescri'#231#227'o anterior'
      Navigator.Buttons.Prior.Visible = True
      Navigator.Buttons.Next.Hint = 'Pr'#243'xima prescri'#231#227'o'
      Navigator.Buttons.NextPage.Visible = False
      Navigator.Buttons.Last.Hint = #218'ltima prescri'#231#227'o'
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      FilterBox.CustomizeDialog = False
      DataController.DataSource = DtSrcCampo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.ImmediateEditor = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideSelection = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '<Nenhuma informa'#231#227'o para exibir>'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLines = glNone
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      OptionsView.HeaderEndEllipsis = True
      object cxGrdFldTblIMAGEM: TcxGridDBColumn
        DataBinding.FieldName = 'IMAGEM'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Items = <
          item
            ImageIndex = 48
            Value = 48
          end>
        Width = 26
      end
      object cxGrdFldTblCAMPO: TcxGridDBColumn
        DataBinding.FieldName = 'CAMPO'
        Width = 240
      end
    end
    object cxGrdFldLvl: TcxGridLevel
      GridView = cxGrdFldTbl
    end
  end
  object CdsCampo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 136
    object CdsCampoIMAGEM: TIntegerField
      DisplayLabel = 'Imagem'
      FieldName = 'IMAGEM'
    end
    object CdsCampoCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'CAMPO'
      Size = 50
    end
  end
  object DtSrcCampo: TDataSource
    DataSet = CdsCampo
    Left = 104
    Top = 136
  end
end
