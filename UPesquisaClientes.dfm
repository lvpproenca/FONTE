object frmPesquisaClientes: TfrmPesquisaClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pesquisa de Clientes'
  ClientHeight = 312
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnDados: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 271
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 486
    ExplicitHeight = 273
    object Label1: TLabel
      Left = 29
      Top = 5
      Width = 91
      Height = 13
      Caption = 'Pesquisa por Nome'
    end
    object Label2: TLabel
      Left = 215
      Top = 5
      Width = 97
      Height = 13
      Caption = 'Pesquisa por Cidade'
    end
    object Label3: TLabel
      Left = 402
      Top = 5
      Width = 97
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pesquisa por Estado'
    end
    object gridPesquisa: TDBGrid
      Left = 1
      Top = 51
      Width = 527
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
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 219
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CIDADE'
          Title.Caption = 'Cidade'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'UF'
          Title.Alignment = taCenter
          Title.Caption = 'Estado'
          Width = 43
          Visible = True
        end>
    end
    object SBPesqNome: TSearchBox
      Left = 29
      Top = 21
      Width = 176
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnInvokeSearch = SBPesqNomeInvokeSearch
    end
    object SBPesqCidade: TSearchBox
      Left = 215
      Top = 21
      Width = 176
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnInvokeSearch = SBPesqNomeInvokeSearch
    end
    object SBPesqUF: TSearchBox
      Left = 402
      Top = 21
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnInvokeSearch = SBPesqNomeInvokeSearch
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 271
    Width = 529
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
      'SELECT CODIGO, NOME, CIDADE, UF FROM CLIENTES')
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
