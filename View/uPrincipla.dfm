object FrmPrincipla: TFrmPrincipla
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lembretes'
  ClientHeight = 425
  ClientWidth = 636
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTop: TPanel
    Left = 0
    Top = 0
    Width = 636
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 536
    object Label1: TLabel
      Left = 3
      Top = 8
      Width = 161
      Height = 26
      Caption = 'Lista de Lembretes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
  end
  object PanelLembretes: TPanel
    Left = 0
    Top = 41
    Width = 636
    Height = 216
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 536
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 634
      Height = 214
      Align = alClient
      DataSource = DataModule1.DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'IDLEMBRETE'
          Title.Caption = 'C'#243'digo'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TITULOLEMBRETE'
          Title.Caption = 'Titulo'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAOLEMBRETE'
          Title.Caption = 'Descri'#231#227'o'
          Width = 290
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATALEMBRETE'
          Title.Caption = 'Data/Hora'
          Width = 129
          Visible = True
        end>
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 311
    Width = 49
    Height = 21
    DataField = 'IDLEMBRETE'
    DataSource = DataModule1.DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 272
    Width = 193
    Height = 21
    DataField = 'TITULOLEMBRETE'
    DataSource = DataModule1.DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 268
    Top = 272
    Width = 309
    Height = 21
    DataField = 'DESCRICAOLEMBRETE'
    DataSource = DataModule1.DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 80
    Top = 311
    Width = 129
    Height = 21
    DataField = 'DATALEMBRETE'
    DataSource = DataModule1.DataSource1
    TabOrder = 5
  end
  object DBNavigator2: TDBNavigator
    Left = 259
    Top = 299
    Width = 329
    Height = 49
    DataSource = DataModule1.DataSource1
    VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 6
  end
  object EdPesquisar: TEdit
    Left = 16
    Top = 386
    Width = 145
    Height = 21
    TabOrder = 7
    TextHint = 'pesquisar por..'
  end
  object CbOpcao: TComboBox
    Left = 16
    Top = 359
    Width = 145
    Height = 21
    TabOrder = 8
    TextHint = 'Escolha..'
    Items.Strings = (
      'C'#243'digo'
      'Titulo'
      'Descri'#231#227'o'
      'Data/Hora')
  end
  object BtPesquisar: TButton
    Left = 178
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 9
    OnClick = BtPesquisarClick
  end
  object BtAtualizar: TBitBtn
    Left = 259
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Atualizar'
    TabOrder = 10
    OnClick = BtAtualizarClick
  end
end
