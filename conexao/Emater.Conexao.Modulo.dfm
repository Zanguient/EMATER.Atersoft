object DtmConexaoModulo: TDtmConexaoModulo
  OldCreateOrder = False
  Height = 399
  Width = 674
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=Sevensoft.Atersoft.Desenvolvimento'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'DriverID=FB'
      'PageSize=8192')
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    LoginPrompt = False
    Transaction = FDReadTransaction
    UpdateTransaction = FDWriteTransaction
    OnError = FDConnectionError
    OnLost = FDConnectionLost
    OnRestored = FDConnectionRestored
    Left = 56
    Top = 32
  end
  object FDReadTransaction: TFDTransaction
    Connection = FDConnection
    Left = 56
    Top = 80
  end
  object FDWriteTransaction: TFDTransaction
    Connection = FDConnection
    Left = 56
    Top = 128
  end
  object QryValidarUsuario: TFDQuery
    Connection = FDConnection
    Transaction = FDReadTransaction
    SQL.Strings = (
      'select'
      '  a.usr_id,'
      '  a.usr_expirada,'
      '  a.usr_login, '
      '  a.usr_ativo,'
      '  b.per_id,'
      '  b.per_nome,'
      '  b.per_ativo,'
      '  c.fun_id,'
      '  c.fun_nome,'
      '  c.fun_matricula,'
      '  c.und_id,'
      '  d.cid_id'
      'from'
      
        '  tab_sis_usuario a left join tab_sis_perfil b on (a.per_id = b.' +
        'per_id and b.reg_excluido = 0 and b.per_ativo = 1) left join'
      '  tab_pes_funcionario c on (a.usr_id = c.usr_id) left join'
      '  tab_sis_unidade d on (d.und_id = c.und_id)'
      'where'
      '  (a.reg_excluido = 0) and'
      '  (a.usr_login = :usr_login) and'
      '  (a.usr_senha = :usr_senha)')
    Left = 216
    Top = 128
    ParamData = <
      item
        Name = 'USR_LOGIN'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Name = 'USR_SENHA'
        DataType = ftString
        ParamType = ptInput
        Size = 80
        Value = Null
      end>
    object QryValidarUsuarioUSR_ID: TIntegerField
      FieldName = 'USR_ID'
      Origin = 'USR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryValidarUsuarioUSR_EXPIRADA: TSmallintField
      FieldName = 'USR_EXPIRADA'
      Origin = 'USR_EXPIRADA'
      Required = True
    end
    object QryValidarUsuarioUSR_LOGIN: TStringField
      FieldName = 'USR_LOGIN'
      Origin = 'USR_LOGIN'
      Required = True
      Size = 50
    end
    object QryValidarUsuarioUSR_ATIVO: TSmallintField
      FieldName = 'USR_ATIVO'
      Origin = 'USR_ATIVO'
      Required = True
    end
    object QryValidarUsuarioPER_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PER_ID'
      Origin = 'PER_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryValidarUsuarioPER_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PER_NOME'
      Origin = 'PER_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryValidarUsuarioPER_ATIVO: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'PER_ATIVO'
      Origin = 'PER_ATIVO'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryValidarUsuarioFUN_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'FUN_ID'
      Origin = 'FUN_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryValidarUsuarioFUN_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUN_NOME'
      Origin = 'FUN_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object QryValidarUsuarioFUN_MATRICULA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUN_MATRICULA'
      Origin = 'FUN_MATRICULA'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryValidarUsuarioUND_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'UND_ID'
      Origin = 'UND_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object QryValidarUsuarioCID_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CID_ID'
      Origin = 'CID_ID'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object StrdPrcUsuarioSessaoDefinir: TFDStoredProc
    Connection = FDConnection
    Transaction = FDWriteTransaction
    StoredProcName = 'STP_SIS_USUARIO_DEFINIR'
    Left = 216
    Top = 32
    ParamData = <
      item
        Position = 1
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end>
  end
  object CmdAlterarSenhaUsuario: TFDCommand
    Connection = FDConnection
    Transaction = FDWriteTransaction
    CommandKind = skUpdate
    CommandText.Strings = (
      'update tab_sis_usuario set'
      '  usr_senha = :senha,'
      '  usr_expirada = 0,'
      '  reg_replicado = :replicado,'
      '  reg_usuario = :usuario,'
      '  reg_modificado = :modificado'
      'where'
      '  usr_login = :login')
    ParamData = <
      item
        Name = 'SENHA'
        ParamType = ptInput
      end
      item
        Name = 'REPLICADO'
        ParamType = ptInput
      end
      item
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        Name = 'MODIFICADO'
        ParamType = ptInput
      end
      item
        Name = 'LOGIN'
        ParamType = ptInput
      end>
    Left = 216
    Top = 80
  end
  object QryGenerator: TFDQuery
    Connection = FDConnection
    Transaction = FDReadTransaction
    Left = 216
    Top = 176
  end
  object QryGetObjectDescription: TFDQuery
    Connection = FDConnection
    Transaction = FDReadTransaction
    SQL.Strings = (
      'select'
      '  trim(a.rdb$relation_name) as name,'
      '  trim(a.rdb$description) as description'
      'from rdb$relations a'
      'where'
      '  (a.rdb$system_flag = 0) and'
      '  (a.rdb$relation_type = 0) and'
      '  (a.rdb$relation_name = :obj_nome);')
    Left = 216
    Top = 224
    ParamData = <
      item
        Name = 'OBJ_NOME'
        DataType = ftFixedChar
        ParamType = ptInput
        Size = 31
        Value = Null
      end>
  end
  object QryGetUniqueDescription: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'select descricao '
      'from vwt_sis_atributo_chave_unica '
      'where chave = :chave')
    Left = 216
    Top = 272
    ParamData = <
      item
        Name = 'CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 31
        Value = Null
      end>
  end
  object FDGUIxErrorDialog: TFDGUIxErrorDialog
    Provider = 'Forms'
    Left = 56
    Top = 184
  end
  object FDIBSecurity: TFDIBSecurity
    DriverLink = FDPhysFBDriverLink
    Protocol = ipTCPIP
    Left = 344
    Top = 32
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'fbclient.dll'
    Left = 344
    Top = 80
  end
end
