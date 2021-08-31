object FrmVendas: TFrmVendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'M'#243'dulo de Vendas'
  ClientHeight = 510
  ClientWidth = 724
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 17
  object pnDados: TPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 449
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 725
    object Label1: TLabel
      Left = 9
      Top = 4
      Width = 120
      Height = 17
      Caption = 'Pesquise seu Pedido'
    end
    object LBPedido: TLabel
      Left = 14
      Top = 72
      Width = 86
      Height = 37
      AutoSize = False
      Caption = '00000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBData: TLabel
      Left = 575
      Top = 72
      Width = 142
      Height = 37
      Alignment = taRightJustify
      AutoSize = False
      Caption = '30/08/2021'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBTituloPedido: TLabel
      Left = 14
      Top = 60
      Width = 86
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'N'#186' PEDIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBTituloData: TLabel
      Left = 575
      Top = 60
      Width = 142
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'DATA DO PEDIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBTituloCliente: TLabel
      Left = 14
      Top = 113
      Width = 566
      Height = 23
      AutoSize = False
      Caption = 'CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBCliente: TLabel
      Left = 14
      Top = 134
      Width = 666
      Height = 28
      AutoSize = False
      Caption = 'LEONARDO VIEIRA PROEN'#199'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBTituloTotal: TLabel
      Left = 506
      Top = 371
      Width = 211
      Height = 30
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TOTAL DO PEDIDO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBTotalPedido: TLabel
      Left = 9
      Top = 401
      Width = 708
      Height = 45
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'R$20000,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -33
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 566
      Top = 4
      Width = 154
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'F3 - PESQUISA PRODUTOS'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 566
      Top = 20
      Width = 154
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'F4 - FECHAR PEDIDO'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -9
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SBPedido: TSearchBox
      Left = 9
      Top = 25
      Width = 121
      Height = 25
      MaxLength = 5
      NumbersOnly = True
      TabOrder = 0
      OnInvokeSearch = SBPedidoInvokeSearch
    end
    object GridDados: TDBGrid
      Left = 0
      Top = 168
      Width = 725
      Height = 201
      DataSource = DsItemsPedido
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnKeyDown = GridDadosKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'codprod'
          Title.Caption = 'Cod Produto'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 345
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'qtd'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valor'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pre'#231'o'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Title.Alignment = taRightJustify
          Title.Caption = 'Total'
          Width = 107
          Visible = True
        end>
    end
    object btnInsereProduto: TButton
      Left = 692
      Top = 134
      Width = 28
      Height = 28
      Caption = '+'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnInsereProdutoClick
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 449
    Width = 724
    Height = 61
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 725
    ExplicitHeight = 60
    object btnNovoPedido: TSpeedButton
      Left = 102
      Top = 17
      Width = 97
      Height = 29
      Caption = 'Novo Pedido'
      OnClick = btnNovoPedidoClick
    end
    object btnGravar: TSpeedButton
      Left = 302
      Top = 17
      Width = 97
      Height = 29
      Caption = 'Gravar'
      OnClick = btnGravarClick
    end
    object btnDeletar: TSpeedButton
      Left = 510
      Top = 17
      Width = 97
      Height = 29
      Caption = 'Apagar Pedido'
      OnClick = btnDeletarClick
    end
  end
  object DsItemsPedido: TDataSource
    DataSet = CDSItemsPedido
    Left = 344
    Top = 80
  end
  object CDSItemsPedido: TClientDataSet
    PersistDataPacket.Data = {
      910000009619E0BD010000001800000005000000000003000000910006636F64
      69676F040001000000000007636F6470726F6401004900000001000557494454
      480200020006000964657363726963616F020049000000010005574944544802
      000200FF000371746404000100000000000576616C6F72080004000000010007
      535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    BeforePost = CDSItemsPedidoBeforePost
    OnCalcFields = CDSItemsPedidoCalcFields
    Left = 344
    Top = 32
    object CDSItemsPedidocodigo: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'codigo'
    end
    object CDSItemsPedidocodprod: TStringField
      FieldName = 'codprod'
      Size = 6
    end
    object CDSItemsPedidodescricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
    object CDSItemsPedidoqtd: TIntegerField
      FieldName = 'qtd'
    end
    object CDSItemsPedidovalor: TCurrencyField
      FieldName = 'valor'
    end
    object CDSItemsPedidototal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'total'
      Calculated = True
    end
  end
end
