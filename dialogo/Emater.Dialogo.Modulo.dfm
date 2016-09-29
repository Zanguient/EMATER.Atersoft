object DtmDialogoModulo: TDtmDialogoModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 210
  Width = 316
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 
      'Todas imagens (*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico' +
      ';*.emf;*.wmf)|*.gif;*.png;*.jpg;*.jpeg;*.bmp;*.tif;*.tiff;*.ico;' +
      '*.emf;*.wmf|Imagem GIF (*.gif)|*.gif|Imagem PNG (*.png)|*.png|Im' +
      'agem JPEG (*.jpg)|*.jpg|Imagem JPEG (*.jpeg)|*.jpeg|Imagem bitma' +
      'p (*.bmp)|*.bmp|Imagem TIFF (*.tif)|*.tif|Imagem TIFF (*.tiff)|*' +
      '.tiff|'#205'cones (*.ico)|*.ico|Metarquivo avan'#231'ado (*.emf)|*.emf|Met' +
      'arquivo (*.wmf)|*.wmf'
    Title = 'Selecionar imagem'
    Left = 48
    Top = 32
  end
end
