program DragDrop;

uses
  Vcl.Forms,
  Un_Principal in 'Un_Principal.pas' {Form1},
  Un_Cartao in 'Un_Cartao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
