unit lab_3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Grids, Math, ExtCtrls, jpeg, Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    Button1: TButton;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    Label2: TLabel;
    procedure Clean;
    procedure FillMatrix;
    procedure FillComb;
    procedure FillFail;
    procedure Plusing;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);

   end;

var
  Form1: TForm1;
  d,x,i,j,k,t0,ti,n,np,y,r,l,t,p: smallint;
  good:boolean;

implementation


{$R *.dfm}
 procedure TForm1.FillFail;
  var cx,ch,l,k : integer;
  begin
  k:=0;

  l := n+d;
  stringgrid6.RowCount:=l;
  stringgrid6.ColCount:=l;

    for cx:=0 to l do
      for ch:=0 to l do

        begin

          stringgrid6.Cells[cx,ch]:='0';

        end;

        for cx:=0 to l do

        begin

          stringgrid6.Cells[cx,k]:='1';
          inc(k);
        end;
  end;

  procedure TForm1.Plusing;
    var i,j,l,cx,ch,mj,mk,mi,rc,cc,m : integer;
        b : String;

  begin
    m:=0;
    StringGrid7.ColCount:= n+d;
    StringGrid7.RowCount:= StringGrid2.RowCount*StringGrid6.RowCount;
    rc:= StringGrid6.RowCount;
    cc:= StringGrid6.ColCount;


    for i:=0 to stringgrid2.RowCount-1 do
      for j:=0 to rc-1 do
      begin
        for k:=0 to cc-1 do
          begin
            if(StringGrid2.Cells[k,i]<>StringGrid6.Cells[k,j]) then b:='1' else b:='0';
            StringGrid7.Cells[k,m]:=b;
          end;
       inc(m);
      end;

  end;

procedure TForm1.FillMatrix;
  label lab;
  begin

  r:=d-1;

  lab:
  with stringgrid3 do
  begin
   colcount:=r;
   x:=round(power(2,r));
   RowCount:=x;
   for j:=0 to x-1 do
    begin
     y:=j;
      for i:=r-1 downto 0 do
      begin
       Cells[i,j]:=inttostr(y mod 2);
       y:=y div 2;
      end;
    end;
   end;

  stringgrid4.ColCount:=r;
  p:=0;
  for i:=1 to x do
   begin
    t:=0;
    for j:=0 to r-1 do if stringgrid3.Cells[j,i-1]='1' then inc(t);
      if t>=d-1 then
     begin
      for j:=0 to r-1 do stringgrid4.Cells[j,p]:=stringgrid3.Cells[j,i-1];
      inc(p);
      end;
    end;
   stringgrid4.RowCount:=p;

  for i:=1 to n do for j:=1 to n do if i=j then stringgrid1.cells[i-1,j-1]:='1' else stringgrid1.Cells[i-1,j-1]:='0';


   for j:=0 to r-1 do stringgrid1.Cells[n+j,0]:=stringgrid4.Cells[j,0];
   l:=1;
   repeat
    for i:=0 to p-1 do
    begin
     for k:=0 to l-1 do
     begin
     t:=0;
     good:=false;
     for j:=0 to r-1 do if stringgrid4.Cells[j,i]<>stringgrid1.Cells[n+j,k] then inc(t);
     if t<d-2 then break;
     good:=true;
     end;
      if good then
      begin
     inc(l);
       for j:=0 to r-1 do stringgrid1.Cells[n+j,l-1]:=stringgrid4.Cells[j,i];
     break;
      end;
    end;
    if i=p then
     begin
     clean;
      inc(r);
      goto lab;
     end;
   until (l>=n);

    label9.Caption:='r='+inttostr(r);
    stringgrid1.ColCount:=r+n;
    stringgrid2.colCount:=r+n;
  end;




  procedure TForm1.FillComb;
  begin
  with stringgrid5 do
  begin
   colcount:=n;
   x:=round(power(2,n));
   RowCount:=x;
   for j:=0 to x-1 do
    begin
     y:=j;
      for i:=0 to n-1 do
      begin
       Cells[i,j]:=inttostr(y mod 2);
       y:=y div 2;
      end;
    end;
   end;

  stringgrid2.RowCount:=np;
  for j:=0 to x do
    for i:=0 to n+r-1 do
      stringgrid2.Cells[i,j]:='0';
  for i:=1 to x-1 do
    for j:=0 to n-1 do
      if stringgrid5.Cells[j,i]='1' then
        for k:=0 to n+r-1 do
          if stringgrid2.Cells[k,i]=stringgrid1.Cells[k,j] then
          stringgrid2.Cells[k,i]:='0' else stringgrid2.Cells[k,i]:='1';
  end;

  procedure Tform1.clean;
  begin
   for i:=0 to n do for j:=0 to n+r do stringgrid1.cells[j,i]:='';
   for i:=0 to np do for j:=0 to n+r-1 do stringgrid2.cells[j,i]:='';
  end;

  procedure TForm1.Edit1Change(Sender: TObject);
  begin

    np:=strtoint(edit1.Text);

    if np<1 then
              edit1.Text:='1';
    clean;

    for i:=1 to np do
      if power(2,i)>=np then break;
    n:=i;


    label7.Caption:='k='+inttostr(n);
    stringgrid1.RowCount:=n;
    ti := 1;
    d:=2*ti+1;
    label8.Caption:='d='+inttostr(d);
  end;

  procedure TForm1.Button1Click(Sender: TObject);
  begin
    FillMatrix;
    FillComb;
    FillFail;
    Plusing;
  end;

end.
