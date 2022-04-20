unit CanvasUnit;
{$MODE OBJFPC}
{$M+}
interface
uses
  PixelUnit in 'Graph/GraphEncoding/PixelUnit.pas', Sysutils;

type
  Canvas = class
  protected
    Height    : integer;
    Width     : integer;
    PixelInst : array of array of Pixel;
  public
    constructor Create; overload;
    constructor Create(h, w: integer); overload;
    destructor Destroy; override;
    
    function GetHeight()    : integer;
    function GetWidth()     : integer;
    function GetPixelInst() : array of array of Pixel;
    procedure SetHeight (h: integer);
    procedure SetWidth  (w: integer);
    procedure SetPixelInst (P: array of array of Pixel);
    procedure SetAPixelInst (i, j: integer; P: Pixel);
end;

implementation

constructor Canvas.Create;
begin
  self.Height    := 100;
  self.Width     := 100;
  self.PixelInst := nil;
end;

constructor Canvas.Create(h, w: integer);
begin
  Height    := h;
  Width     := w;
  PixelInst := nil;
end;

destructor Canvas.Destroy;
var
  i : integer;
  j : integer;
begin
  for i:= 0 to Height do
  begin
    for j:= 0 to Width do
        FreeAndNil(PixelInst[i, j]);
  end;
  inherited;
end;

procedure SetHeight (h: integer);
procedure SetWidth  (w: integer);
procedure SetPixelInst (P: array of array of Pixel);
procedure SetAPixelInst (i, j: integer; P: Pixel);

function Canvas.GetHeight(): integer;
begin

end;

function Canvas.GetWidth(): integer;
function Canvas.GetPixelInst(): array of array of Pixel;

end.
