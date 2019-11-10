class Punto {
  PVector xy;
  boolean flag;
  Punto() {
    flag = false;
    xy = new PVector(0, 0);
  }
  
  Punto(float x, float y) {
    flag = false;
    xy = new PVector(x,y);
  }
  
  void Trasladar(float x, float y) {
    flag = sqrt(x*x+y*y)<0.1;
    xy.x += x; // xy.x = xy.x + x;
    xy.y += y; // xy.y = xy.y + y;
  }
  
  void Trasladar(PVector dp) {
    flag = dp.mag() < 0.1;
    xy.add(dp);
  }

  void Dibujar() {
    if(flag) {
      fill(255,0,0);
    } else {
      fill(255,255,255);
    }
    ellipse(xy.x, xy.y, 10,10);
  }
}
