Pieza p1;
Pieza p2;
Pieza p3;

void setup() {
  size(512, 512);
  p1 = new Pieza();
  p2 = new Pieza();
  p3 = new Pieza();
  
  p1.Trasladar(256,256);
  p1.RotarLocal(radians(180));
  
  p2.RotarLocal(radians(180));
  p2.EscalarLocal(-1, 1);
  p2.Trasladar(100, 256);
  
  p3.Trasladar(374, 256);
}


void draw() {
  background(200);
  p1.Dibujar();
  p2.Dibujar();
  p3.Dibujar();
}
