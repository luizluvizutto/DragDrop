unit Un_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    procedure Panel3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure Panel3EndDrag(Sender, Target: TObject; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Panel2DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
   if Source = Panel3 then
       Panel3.EndDrag(True);
end;

procedure TForm1.Panel2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   if Source = Panel3 then
        Accept := True;
end;

procedure TForm1.Panel3EndDrag(Sender, Target: TObject; X, Y: Integer);
begin

   if Target = nil then exit;
   TWinControl( Sender ).Parent := TWinControl( Target );


   TWinControl( Sender ).Top  := y;
   TWinControl( Sender ).Left := x;


end;

procedure TForm1.Panel3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if Button = mbLeft then begin
      TWinControl( Sender ).BeginDrag(False);
   end;
end;

end.
