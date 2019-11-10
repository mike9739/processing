class Punto {
  PVector xy;
  
  Punto () {
    xy = new PVector(0, 0);
  }
  
  Punto (PVector p) {
    xy = new PVector(p.x, p.y);
  }
  
  Punto (float x, float y) {
    xy = new PVector(x, y);
  }
  
  void Trasladar(float dx, float dy) {
    xy.x += dx;
    xy.y += dy;
  }
  
  void Trasladar(PVector dp) {
    xy.add(dp);
  }
  
  void Dibujar() {
    ellipse(xy.x,xy.y,10,10);
  }
}
