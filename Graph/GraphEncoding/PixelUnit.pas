unit PixelUnit;
{$MODE OBJFPC}
{$M+}
interface

type
  Pixel = class
  private
      RedDecimal : integer;
    GreenDecimal : integer;
     BlueDecimal : integer;
         LayerNo : integer;
  public
    constructor Create; overload;
    constructor Create(r, g, b, l: integer); overload;
    destructor Destroy; override;

    procedure SetRedDecimal(r: integer);
    procedure SetGreenDecimal(g: integer);
    procedure SetBlueDecimal(b: integer);
    procedure SetLayerNo(l: integer);
    function GetRedDecimal() : integer;
    function GetGreenDecimal() : integer;
    function GetBlueDecimal() : integer;
    function GetLayerNo() : integer;

    procedure PrintDebug;
  end;

implementation

constructor Pixel.Create;
begin
  self.RedDecimal := 0;
  self.GreenDecimal := 23;
  self.BlueDecimal :=  42;
  self.LayerNo := 0;
end;

constructor Pixel.Create(r, g, b, l: integer);
begin
  RedDecimal := r;
  GreenDecimal := g;
  BlueDecimal :=  b;
  LayerNo := l;
end;

destructor Pixel.Destroy;
begin
end;

procedure Pixel.SetRedDecimal(r: integer);
begin
  RedDecimal := r;
end;

procedure Pixel.SetGreenDecimal(g: integer);
begin
  GreenDecimal := g;
end;

procedure Pixel.SetBlueDecimal(b: integer);
begin
  BlueDecimal := b;
end;

procedure Pixel.SetLayerNo(l: integer);
begin
  LayerNo := l;
end;

function Pixel.GetRedDecimal(): integer;
begin
  GetRedDecimal := RedDecimal;
end;

function Pixel.GetGreenDecimal(): integer;
begin
  GetGreenDecimal := GreenDecimal;
end;

function Pixel.GetBlueDecimal(): integer;
begin
  GetBlueDecimal := BlueDecimal;
end;

function Pixel.GetLayerNo(): integer;
begin
  GetLayerNo := LayerNo;
end;

procedure Pixel.PrintDebug;
begin
  writeln('Pixel Object (r, g, b, l): ', RedDecimal, ', ', GreenDecimal, ', ',
    BlueDecimal, ', ', LayerNo);
end;

end.
