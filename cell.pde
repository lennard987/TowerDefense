class Cell
{
  int x;
  int y;
  float Csize;
  color Ccolor;
  
  Cell(int _x, int _y)
  {
    x = _x;
    y = _y;
    Ccolor = (color(255,0,0));
    Csize = TD.Csize;
  }
  
  void outline()
  {
    noFill();
    stroke(Ccolor);
    rect( x * Csize,y * Csize, Csize, Csize );
  }
}
