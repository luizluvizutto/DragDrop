object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 495
  ClientWidth = 1145
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 24
    Top = 120
    Width = 481
    Height = 305
    BevelOuter = bvLowered
    Caption = 'Panel1'
    TabOrder = 0
    OnDragDrop = Panel2DragDrop
    OnDragOver = Panel2DragOver
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 90
      Width = 473
      Height = 80
      Align = alTop
      Caption = 'OS 2'
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
      OnEndDrag = Panel3EndDrag
      OnMouseDown = Panel3MouseDown
    end
    object Panel4: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 473
      Height = 80
      Align = alTop
      Caption = 'OS 1'
      Color = clHighlight
      Padding.Left = 3
      Padding.Top = 3
      Padding.Right = 3
      Padding.Bottom = 3
      ParentBackground = False
      TabOrder = 1
      OnEndDrag = Panel3EndDrag
      OnMouseDown = Panel3MouseDown
    end
  end
  object Panel2: TPanel
    Left = 536
    Top = 120
    Width = 473
    Height = 305
    BevelOuter = bvLowered
    Caption = 'Panel2'
    TabOrder = 1
    OnDragDrop = Panel2DragDrop
    OnDragOver = Panel2DragOver
  end
end
