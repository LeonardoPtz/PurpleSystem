object FrmUsuarios: TFrmUsuarios
  Left = 0
  Top = 0
  ActiveControl = CbUsuario
  BorderStyle = bsNone
  BorderWidth = 10
  Caption = 'Login'
  ClientHeight = 292
  ClientWidth = 210
  Color = clMedGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object LbUsuario: TLabel
    Left = 17
    Top = 71
    Width = 54
    Height = 19
    Caption = 'Usu'#225'rio'
  end
  object LbSenha: TLabel
    Left = 17
    Top = 129
    Width = 43
    Height = 19
    Caption = 'Senha'
  end
  object Login: TLabel
    Left = 93
    Top = 24
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Image1: TImage
    Left = 76
    Top = 8
    Width = 57
    Height = 57
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000320000
      003208060000001E3F88B1000000097048597300000B1300000B1301009A9C18
      000003444944415478DAED995F4853511CC77FF75E979BAD2D75983277734B4B
      977F48B05011D20CC9BF631429E15B50A90422A460268634CA7AB024DA53F9E2
      433D9490283DAC082A7B092718A5F807952C0876A74241EEAEDF1534DB8CB1DD
      7BE75DDC2FFC38BFBB73CE763EE79C7B7FBFBB43C07F2262A7072083C8205BC4
      304C1E411005684AB107E8F57A7F5014F55AAD568F090AE276BB6F60D1861061
      5B4D8461F1776D344D5F150404BFEC1816EFC209B1219665BD76BBDDDADADAFA
      8C37C8F2F2F2152C6EE20CC1C5F3BDB0B4F85D7480146312DC7DD0B8EE0F0E0E
      3EAAAFAF6F4697E105822BD28D8BD1BEB6E6016B452718D24D909C96221AC4C2
      A769589A5D84A7435DEBD70E87E3B1C562E94077525090E3674E41A1A5543490
      574F8661F4F94B5F90EBE84EC82032880C2283C820324858415C2ED71192248B
      104085A9491996C5110782B955070EBECB37490C0482F91D9024FFBC521090D5
      D5D51C8FC7F3011948DFBA40200F7BDF43755D16C427C4EC3C08BE3C35E196BA
      C7F9972FF5C1DCCC57BF3625B515905F55E2F77977CB0B502828282E4F83BC22
      1A424DFA0501C16DD5CE8D89F3B9D98FD5E9609F3E69B3DE4B46C1DED42CD815
      B3DBAFAF63686AD33F90AE83AAB38741AD899606C82FE57E00755A4833AB5429
      A0CC9A0E59B94941F5931CC886327212A1FC7406A86214910D928ADBAC32886D
      2639906865149CA83C08B9F9C941F51305441B170FBAC43F7B9C2528D018CD78
      B3ABFDFABE75CC6EFAB429166AEA32B1BF2AE8091004646565A51183611FE737
      37DD87E9A92F7E6D8AF1F15BF08FC72F8501B1F0A4098A4A4D4084181C8502C9
      6459760C0322E55B172820DA6FBD819A73D990A8DF131280A0209CE6E7E73B35
      1ACD350C8C7F45F740209E3516A82812F84AD0A4D166B3D5180C866A15CA6C36
      E7E8F57A73C4258D5BA4454B703A9D2D46A3F1422483AC2BA2DF476410194406
      91416410C98198B20F418A3955349099F1CFB030392B3C88448EDE6EF3066118
      E628AEC8E84E1D86363434B40D0C0C7087A1FC8EDE3861467C47ABD536871386
      83E0B695D56AE52086D1DCBC4138F5F4F4D4D2345D89401AB1215C2E977B6464
      64A2BFBF7F0E2FC7D13E6ED78ECFACC6A125A005FF8755F0FA89F60DB6399616
      0244529241A4A6DF02635660C1CF096A0000000049454E44AE426082}
    Proportional = True
  end
  object EdtSenha: TEdit
    Left = 17
    Top = 154
    Width = 176
    Height = 27
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = EdtSenhaKeyDown
  end
  object BtnEntrar: TButton
    Left = 46
    Top = 207
    Width = 119
    Height = 40
    Align = alCustom
    Caption = 'Entrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnEntrarClick
  end
  object BtnFechar: TButton
    Left = 46
    Top = 253
    Width = 119
    Height = 40
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BtnFecharClick
  end
  object CbUsuario: TComboBox
    Left = 17
    Top = 96
    Width = 180
    Height = 27
    Align = alCustom
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'Leo'
      'Vitor'
      'Dani')
  end
  object QrUsuario: TFDQuery
    Connection = FrmDM.FDConnection1
  end
end
