object frmConsultaProdutos: TfrmConsultaProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta Produtos'
  ClientHeight = 311
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnDados: TPanel
    Left = 0
    Top = 0
    Width = 512
    Height = 270
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 486
    ExplicitHeight = 273
    object Label1: TLabel
      Left = 21
      Top = 5
      Width = 97
      Height = 13
      Caption = 'Pesquisa por C'#243'digo'
    end
    object Label2: TLabel
      Left = 207
      Top = 5
      Width = 110
      Height = 13
      Caption = 'Pesquisa por Descri'#231#227'o'
    end
    object gridPesquisa: TDBGrid
      Left = 1
      Top = 50
      Width = 510
      Height = 219
      Align = alBottom
      DataSource = DsPesquisa
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = gridPesquisaKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Produto'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Title.Caption = 'Descri'#231#227'o'
          Width = 319
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'precovenda'
          Title.Alignment = taRightJustify
          Title.Caption = 'Pre'#231'o Venda'
          Width = 89
          Visible = True
        end>
    end
    object SBCodigo: TSearchBox
      Left = 21
      Top = 21
      Width = 176
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnInvokeSearch = SBCodigoInvokeSearch
    end
    object SBDescricao: TSearchBox
      Left = 207
      Top = 21
      Width = 290
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnInvokeSearch = SBCodigoInvokeSearch
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 270
    Width = 512
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 240
    ExplicitTop = 272
    ExplicitWidth = 185
    object btnPesquisar: TButton
      Left = 205
      Top = 6
      Width = 75
      Height = 28
      Caption = 'Selecionar'
      TabOrder = 0
      OnClick = btnPesquisarClick
    end
  end
  object FDQPesquisa: TFDQuery
    Connection = DM.CN
    Transaction = DM.TR
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Left = 240
    Top = 104
  end
  object DsPesquisa: TDataSource
    AutoEdit = False
    DataSet = FDQPesquisa
    Left = 240
    Top = 152
  end
end
