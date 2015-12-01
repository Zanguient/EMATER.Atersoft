object DtmLogModulo: TDtmLogModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 200
  Width = 328
  object StrdPrcSisReplicacaoPendente: TFDStoredProc
    Connection = DtmConexaoModulo.FDConnection
    Transaction = DtmConexaoModulo.FDWriteTransaction
    StoredProcName = 'STP_SIS_REPLICACAO_PENDENTE'
    Left = 80
    Top = 48
    ParamData = <
      item
        Position = 1
        Name = 'OBJETOS'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Position = 2
        Name = 'ATRIBUTO'
        DataType = ftString
        ParamType = ptInput
        Size = 31
      end
      item
        Position = 3
        Name = 'CHAVE'
        DataType = ftString
        ParamType = ptInput
        Size = 500
      end
      item
        Position = 4
        Name = 'EXISTE'
        DataType = ftBoolean
        ParamType = ptOutput
      end>
  end
end
