object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 175
  Width = 260
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\Users\w\Documents\Embarcadero\FIREDAC\bd\FIREDAC.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 32
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from lembreteBD;')
    Left = 168
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 104
    Top = 32
  end
end
