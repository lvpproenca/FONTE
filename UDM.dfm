object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 72
  Width = 185
  object CN: TFDConnection
    Params.Strings = (
      'Database=vendas'
      'User_Name=root'
      'Password=123456'
      'Server=localhost'
      'DriverID=MySQL')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    Connected = True
    LoginPrompt = False
    Transaction = TR
    Left = 8
    Top = 8
  end
  object TR: TFDTransaction
    Connection = CN
    Left = 48
    Top = 8
  end
  object WT: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 8
  end
  object DL: TFDPhysMySQLDriverLink
    Left = 128
    Top = 8
  end
end
