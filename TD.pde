static int Swidth = 1280;
static int Sheight = 720;
static int GameWindowHeight = (int)(Sheight * .2);
static float Csize = 40;

Cell[][] Grid = new Cell[32][16];
Cell hovered = null;

void setup()
{
  size(Swidth, Sheight);
  background(0);

  initializegrid();
}

void draw()
{
  MouseHover();
}
void initializegrid()
{
  for (int x = 0; x < Grid.length; x++)
  {
    for (int y = 0; y < Grid[0].length; y++)
    {
      Grid[x][y] = new Cell(x, y);
    }
  }
}

void MouseHover()
{
  int x = (int)(mouseX / Csize);
  int y = (int)(mouseY / Csize);


  if ( x < Grid.length && y < Grid[0].length)
  {
    hovered = Grid[x][y];
    hovered.outline();
  }
}

