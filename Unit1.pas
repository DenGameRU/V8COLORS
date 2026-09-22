unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ColorGrd, ExtCtrls, StdCtrls, TeeProcs, TeEngine, Chart, Menus,
  ComCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    ColorDialog1: TColorDialog;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    TrackBar1: TTrackBar;
    Edit1: TEdit;
    TrackBar2: TTrackBar;
    TrackBar3: TTrackBar;
    TrackBar4: TTrackBar;
    TrackBar5: TTrackBar;
    TrackBar6: TTrackBar;
    TrackBar7: TTrackBar;
    TrackBar8: TTrackBar;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

    procedure TrackBar1Change(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure TrackBar3Change(Sender: TObject);
    procedure TrackBar4Change(Sender: TObject);
    procedure TrackBar5Change(Sender: TObject);
    procedure TrackBar6Change(Sender: TObject);
    procedure TrackBar7Change(Sender: TObject);
    procedure TrackBar8Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Panel1Click(Sender: TObject);
begin
   if ColorDialog1.Execute then
 begin

 panel1.Color:=Colordialog1.Color;
 
 end;
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
    if ColorDialog1.Execute then
 begin
 panel2.Color:=Colordialog1.Color;

 end;
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
if ColorDialog1.Execute then
 begin
 panel3.Color:=Colordialog1.Color;

 end;
end;

procedure TForm1.Panel4Click(Sender: TObject);
begin
   if ColorDialog1.Execute then
 begin
 panel4.Color:=Colordialog1.Color;

 end;
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
   if ColorDialog1.Execute then
 begin
 panel5.Color:=Colordialog1.Color;

 end;
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
   if ColorDialog1.Execute then
 begin
 panel6.Color:=Colordialog1.Color;

 end;
end;

procedure TForm1.Panel7Click(Sender: TObject);
begin
   if ColorDialog1.Execute then
 begin
 panel7.Color:=Colordialog1.Color;

 end;
end;

procedure TForm1.Panel8Click(Sender: TObject);
begin
   if ColorDialog1.Execute then
 begin
 panel8.Color:=Colordialog1.Color;
 end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
RFile    : File;
cl, cl2, cl3, cl4, cl5, cl6, cl7, cl8, cl9, cl10, cl11  :  TColor;
oneByte  : byte;
begin
  if OpenDialog1.Execute then
 begin
  AssignFile(RFile, OpenDialog1.FileName);
 end;
  FileMode := fmOpenRead;
  Reset(RFile, 1);

  BlockRead(RFile, cl, 3);
  BlockRead(RFile, OneByte, 1);
  panel1.Color:=cl;
  TrackBar1.Position := OneByte;

  BlockRead(RFile, cl, 3);
  BlockRead(RFile, OneByte, 1);
  panel2.Color:=cl;
  TrackBar2.Position := OneByte;

  BlockRead(RFile, cl, 3);
  BlockRead(RFile, OneByte, 1);
  panel3.Color:=cl;
  TrackBar3.Position := OneByte;

  BlockRead(RFile, cl, 3);
  BlockRead(RFile, OneByte, 1);
  panel4.Color:=cl;
  TrackBar4.Position := OneByte;

  BlockRead(RFile, cl, 3);
  BlockRead(RFile, OneByte, 1);
  panel5.Color:=cl;
  TrackBar5.Position := OneByte;

  BlockRead(RFile, cl, 3);
  BlockRead(RFile, OneByte, 1);
  panel6.Color:=cl;
  TrackBar6.Position := OneByte;

  BlockRead(RFile, cl, 3);
  BlockRead(RFile, OneByte, 1);
  panel7.Color:=cl;
  TrackBar7.Position := OneByte;

  BlockRead(RFile, cl, 3);
  BlockRead(RFile, OneByte, 1);
  panel8.Color:=cl;
  TrackBar8.Position := OneByte;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
WFile    : File;
col1, col2, col3, col4, col5, col6, col7, col8 : TColor;
oneByte  : byte;
begin
if SaveDialog1.Execute then
 begin
  AssignFile(WFile,  SaveDialog1.FileName);
 end;
  ReWrite(WFile, 1);
  col1 := Panel1.Color;
  col2 := Panel2.Color;
  col3 := Panel3.Color;
  col4 := Panel4.Color;
  col5 := Panel5.Color;
  col6 := Panel6.Color;
  col7 := Panel7.Color;
  col8 := Panel8.Color;


  BlockWrite(WFile, col1, 3);
  oneByte := strtoint(edit1.Text);
  BlockWrite(WFile, oneByte, 1);

  BlockWrite(WFile, col2, 3);
  oneByte := strtoint(edit2.Text);
  BlockWrite(WFile, oneByte, 1);

  BlockWrite(WFile, col3, 3);
  oneByte := strtoint(edit3.Text);
  BlockWrite(WFile, oneByte, 1);

  BlockWrite(WFile, col4, 3);
  oneByte := strtoint(edit4.Text);
  BlockWrite(WFile, oneByte, 1);

  BlockWrite(WFile, col5, 3);
  oneByte := strtoint(edit5.Text);
  BlockWrite(WFile, oneByte, 1);

  BlockWrite(WFile, col6, 3);
  oneByte := strtoint(edit6.Text);
  BlockWrite(WFile, oneByte, 1);

  BlockWrite(WFile, col7, 3);
  oneByte := strtoint(edit7.Text);
  BlockWrite(WFile, oneByte, 1);

  BlockWrite(WFile, col8, 3);
  oneByte := strtoint(edit8.Text);
  BlockWrite(WFile, oneByte, 1);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
   Edit1.Text := inttostr(trackBar1.Position);
end;
procedure TForm1.TrackBar2Change(Sender: TObject);
begin
   Edit2.Text := inttostr(trackBar2.Position);
end;
procedure TForm1.TrackBar3Change(Sender: TObject);
begin
   Edit3.Text := inttostr(trackBar3.Position);
end;
procedure TForm1.TrackBar4Change(Sender: TObject);
begin
   Edit4.Text := inttostr(trackBar4.Position);
end;
procedure TForm1.TrackBar5Change(Sender: TObject);
begin
   Edit5.Text := inttostr(trackBar5.Position);
end;
procedure TForm1.TrackBar6Change(Sender: TObject);
begin
   Edit6.Text := inttostr(trackBar6.Position);
end;
procedure TForm1.TrackBar7Change(Sender: TObject);
begin
   Edit7.Text := inttostr(trackBar7.Position);
end;
procedure TForm1.TrackBar8Change(Sender: TObject);
begin
   Edit8.Text := inttostr(trackBar8.Position);
end;

end.

