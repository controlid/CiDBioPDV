object AppForm: TAppForm
  Left = 0
  Top = 0
  Caption = 'Control iD PDV Biom'#233'trico'
  ClientHeight = 561
  ClientWidth = 589
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LabelProduct: TLabel
    Left = 8
    Top = 61
    Width = 38
    Height = 13
    Caption = 'Produto'
  end
  object LabelProductQuantity: TLabel
    Left = 184
    Top = 61
    Width = 22
    Height = 13
    Caption = 'Qtd.'
  end
  object LabelCart: TLabel
    Left = 7
    Top = 165
    Width = 41
    Height = 13
    Caption = 'Carrinho'
  end
  object LabelProductPrice: TLabel
    Left = 247
    Top = 83
    Width = 72
    Height = 13
    Caption = 'Pre'#231'o: R$ 0,00'
  end
  object LabelCartTotal: TLabel
    Left = 8
    Top = 351
    Width = 69
    Height = 13
    Caption = 'Total: R$ 0,00'
  end
  object ButtonUnlock: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Desbloquear'
    TabOrder = 0
    OnClick = ButtonUnlockClick
  end
  object ComboBoxProduct: TComboBox
    Left = 8
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 1
    Text = 'Selecione o produto...'
  end
  object EditProductQuantity: TEdit
    Left = 184
    Top = 80
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    Text = '1'
    OnExit = EditProductQuantityExit
  end
  object ButtonAddToCart: TButton
    Left = 8
    Top = 107
    Width = 121
    Height = 25
    Caption = 'Adicionar ao carrinho'
    TabOrder = 3
  end
  object CheckListBox1: TCheckListBox
    Left = 7
    Top = 184
    Width = 162
    Height = 161
    ItemHeight = 13
    TabOrder = 4
  end
  object ButtonRemoveCartItem: TButton
    Left = 8
    Top = 369
    Width = 129
    Height = 25
    Caption = 'Remover selecionados'
    TabOrder = 5
    OnClick = ButtonRemoveCartItemClick
  end
  object ButtonCheckout: TButton
    Left = 8
    Top = 400
    Width = 129
    Height = 25
    Caption = 'Finalizar a compra'
    TabOrder = 6
  end
  object ButtonLock: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Bloquear'
    TabOrder = 7
    OnClick = ButtonLockClick
  end
end
