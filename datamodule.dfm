object dmu: Tdmu
  OldCreateOrder = False
  Height = 361
  Width = 632
  object MyConnection1: TMyConnection
    Database = 'jhcisdb'
    Port = 3333
    Options.Charset = 'tis620'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 147
    Top = 36
    EncryptedPassword = 'CEFFCDFFCCFFCBFFCAFFC9FF'
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    Left = 330
    Top = 27
  end
  object MyDataSource1: TMyDataSource
    DataSet = MyQuery1
    Left = 477
    Top = 30
  end
end
