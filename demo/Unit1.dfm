object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Demo - DTFBMigrator ( FB2.1 / FB 2.5 / FB 3.0 / FB 4.0)'
  ClientHeight = 357
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 53
    Width = 114
    Height = 13
    Caption = 'Caminho base de dados'
  end
  object Label2: TLabel
    Left = 8
    Top = 5
    Width = 64
    Height = 13
    Caption = 'Firebird Atual'
  end
  object Label3: TLabel
    Left = 159
    Top = 5
    Width = 69
    Height = 13
    Caption = 'Firebird Migrar'
  end
  object Edit1: TEdit
    Left = 8
    Top = 72
    Width = 386
    Height = 21
    TabOrder = 0
    Text = 'C:\SUPERSYS10\DADOS\SUPERSYS.FDB'
  end
  object Button1: TButton
    Left = 400
    Top = 68
    Width = 97
    Height = 25
    Cursor = crHandPoint
    Caption = 'Iniciar migra'#231#227'o'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 99
    Width = 489
    Height = 218
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    TabOrder = 2
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 331
    Width = 386
    Height = 17
    TabOrder = 3
  end
  object Button2: TButton
    Left = 406
    Top = 327
    Width = 95
    Height = 25
    Cursor = crHandPoint
    Caption = 'Download Files'
    TabOrder = 4
    OnClick = Button2Click
  end
  object cboFirebirdAtual: TComboBox
    Left = 8
    Top = 24
    Width = 145
    Height = 21
    Cursor = crHandPoint
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = 'Firebird 2.1'
    Items.Strings = (
      'Firebird 2.1'
      'Firebird 2.5'
      'Firebird 3.0'
      'Firebird 4.0')
  end
  object cboFirebirdMibrar: TComboBox
    Left = 159
    Top = 24
    Width = 145
    Height = 21
    Cursor = crHandPoint
    Style = csDropDownList
    ItemIndex = 1
    TabOrder = 6
    Text = 'Firebird 3.0'
    Items.Strings = (
      'Firebird 2.5'
      'Firebird 3.0'
      'Firebird 4.0'
      'Firebird 5.0')
  end
  object DTFBMigrator1: TDTFBMigrator
    OnMigrate = DTFBMigrator1Migrate
    vFirebirdAtual = vFB21
    vFirebirdMigrar = vmFB30
    ProgressBar = ProgressBar1
    Left = 232
    Top = 184
  end
end
