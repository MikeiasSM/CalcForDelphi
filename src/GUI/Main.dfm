object Principal: TPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Calculadora do Bahiano'
  ClientHeight = 433
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 433
    Align = alClient
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    TabOrder = 0
    object pnDisplay: TPanel
      Left = 5
      Top = 5
      Width = 379
      Height = 60
      Align = alTop
      BevelKind = bkSoft
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Right = 5
      TabOrder = 0
      object lblDisplay: TLabel
        Left = 5
        Top = 0
        Width = 365
        Height = 56
        Align = alClient
        Alignment = taRightJustify
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 50
        Font.Name = 'Consolas'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 347
        ExplicitWidth = 23
        ExplicitHeight = 50
      end
    end
    object Panel1: TPanel
      Left = 5
      Top = 106
      Width = 379
      Height = 322
      Align = alClient
      BevelOuter = bvNone
      Padding.Top = 5
      Padding.Bottom = 5
      TabOrder = 1
      ExplicitTop = 65
      ExplicitHeight = 363
      object GridPanel1: TGridPanel
        Left = 0
        Top = 5
        Width = 379
        Height = 312
        Align = alClient
        BevelOuter = bvNone
        ColumnCollection = <
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = btnNumSete
            Row = 0
          end
          item
            Column = 1
            Control = btnNumOito
            Row = 0
          end
          item
            Column = 2
            Control = btnNumNove
            Row = 0
          end
          item
            Column = 3
            Control = btnOperadorAdicao
            Row = 0
          end
          item
            Column = 0
            Control = btnNumQuatro
            Row = 1
          end
          item
            Column = 1
            Control = btnNumCinco
            Row = 1
          end
          item
            Column = 2
            Control = btnNumSeis
            Row = 1
          end
          item
            Column = 3
            Control = btnOperadorSubtracao
            Row = 1
          end
          item
            Column = 0
            Control = btnNumUm
            Row = 2
          end
          item
            Column = 1
            Control = btnNumDois
            Row = 2
          end
          item
            Column = 2
            Control = btnNumTres
            Row = 2
          end
          item
            Column = 3
            Control = btnOperadorMultiplicacao
            Row = 2
          end
          item
            Column = 0
            Control = btnVirgula
            Row = 3
          end
          item
            Column = 1
            Control = btnNumZero
            Row = 3
          end
          item
            Column = 2
            Control = btnOperadorIgual
            Row = 3
          end
          item
            Column = 3
            Control = btnOperadorDivisao
            Row = 3
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 24
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        RowCollection = <
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            Value = 25.000000000000000000
          end
          item
            SizeStyle = ssAuto
          end>
        TabOrder = 0
        ExplicitHeight = 353
        object btnNumSete: TButton
          Left = 0
          Top = 0
          Width = 95
          Height = 78
          Align = alClient
          Caption = '7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnNumSeteClick
          ExplicitHeight = 88
        end
        object btnNumOito: TButton
          Left = 95
          Top = 0
          Width = 94
          Height = 78
          Align = alClient
          Caption = '8'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnNumOitoClick
          ExplicitHeight = 88
        end
        object btnNumNove: TButton
          Left = 189
          Top = 0
          Width = 95
          Height = 78
          Align = alClient
          Caption = '9'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnNumNoveClick
          ExplicitHeight = 88
        end
        object btnOperadorAdicao: TButton
          Left = 284
          Top = 0
          Width = 95
          Height = 78
          Align = alClient
          Caption = '+'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = btnOperadorAdicaoClick
          ExplicitHeight = 88
        end
        object btnNumQuatro: TButton
          Left = 0
          Top = 78
          Width = 95
          Height = 78
          Align = alClient
          Caption = '4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnNumQuatroClick
          ExplicitTop = 88
          ExplicitHeight = 88
        end
        object btnNumCinco: TButton
          Left = 95
          Top = 78
          Width = 94
          Height = 78
          Align = alClient
          Caption = '5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = btnNumCincoClick
          ExplicitTop = 88
          ExplicitHeight = 88
        end
        object btnNumSeis: TButton
          Left = 189
          Top = 78
          Width = 95
          Height = 78
          Align = alClient
          Caption = '6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = btnNumSeisClick
          ExplicitTop = 88
          ExplicitHeight = 88
        end
        object btnOperadorSubtracao: TButton
          Left = 284
          Top = 78
          Width = 95
          Height = 78
          Align = alClient
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          ExplicitTop = 88
          ExplicitHeight = 88
        end
        object btnNumUm: TButton
          Left = 0
          Top = 156
          Width = 95
          Height = 78
          Align = alClient
          Caption = '1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = btnNumUmClick
          ExplicitTop = 176
          ExplicitHeight = 89
        end
        object btnNumDois: TButton
          Left = 95
          Top = 156
          Width = 94
          Height = 78
          Align = alClient
          Caption = '2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = btnNumDoisClick
          ExplicitTop = 176
          ExplicitHeight = 89
        end
        object btnNumTres: TButton
          Left = 189
          Top = 156
          Width = 95
          Height = 78
          Align = alClient
          Caption = '3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = btnNumTresClick
          ExplicitTop = 176
          ExplicitHeight = 89
        end
        object btnOperadorMultiplicacao: TButton
          Left = 284
          Top = 156
          Width = 95
          Height = 78
          Align = alClient
          Caption = '*'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          ExplicitTop = 176
          ExplicitHeight = 89
        end
        object btnVirgula: TButton
          Left = 0
          Top = 234
          Width = 95
          Height = 78
          Align = alClient
          Caption = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = btnVirgulaClick
          ExplicitTop = 265
          ExplicitHeight = 88
        end
        object btnNumZero: TButton
          Left = 95
          Top = 234
          Width = 94
          Height = 78
          Align = alClient
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = btnNumZeroClick
          ExplicitTop = 265
          ExplicitHeight = 88
        end
        object btnOperadorIgual: TButton
          Left = 189
          Top = 234
          Width = 95
          Height = 78
          Align = alClient
          Caption = '='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          ExplicitTop = 265
          ExplicitHeight = 88
        end
        object btnOperadorDivisao: TButton
          Left = 284
          Top = 234
          Width = 95
          Height = 78
          Align = alClient
          Caption = '/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 24
          Font.Name = 'Consolas'
          Font.Style = []
          ModalResult = 1
          ParentFont = False
          TabOrder = 15
          ExplicitTop = 265
          ExplicitHeight = 88
        end
      end
    end
    object Panel2: TPanel
      Left = 5
      Top = 65
      Width = 379
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Padding.Left = 5
      Padding.Top = 5
      TabOrder = 2
      ExplicitLeft = 0
      ExplicitTop = 312
      ExplicitWidth = 372
      object lblOperacao: TLabel
        Left = 5
        Top = 5
        Width = 184
        Height = 36
        Align = alClient
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 280
        ExplicitWidth = 4
        ExplicitHeight = 21
      end
      object btnBackspace: TButton
        Left = 284
        Top = 5
        Width = 95
        Height = 36
        Align = alRight
        Caption = '<-'
        TabOrder = 0
        OnClick = btnBackspaceClick
        ExplicitLeft = 290
      end
      object Button1: TButton
        Left = 189
        Top = 5
        Width = 95
        Height = 36
        Align = alRight
        Caption = 'C'
        TabOrder = 1
        OnClick = btnBackspaceClick
        ExplicitLeft = 290
      end
    end
  end
end
