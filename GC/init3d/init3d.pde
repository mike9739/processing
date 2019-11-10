Steve steve;
Steve steve_malo;
float x;
float y;
Eje eje;
Plano plano;
void setup() {
  size(515, 512, P3D);  // Specify P3D renderer
  eje = new Eje();
  plano = new Plano();
  steve = new Steve();
  steve_malo = new Steve();
  x=0;
  y=0;
}

void draw() {
  background(0);
  lights();
  camera(100, 100, 100.0, 
    x, 0.0, 0.0, 
    0.0, 0.0, -1.0);
  eje.Dibujar();
  plano.Dibujar();
  
  pushMatrix();
  translate(x,y,0);
  steve.Dibujar();
  popMatrix();
  
  pushMatrix();
  translate(0,-20,0);
  scale(1.3);
  steve_malo.Dibujar();
  popMatrix();
  x+=0.01;
  //y+=random(-0.5,0.5);
}
