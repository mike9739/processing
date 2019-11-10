Linea l1;
Linea l2;

void setup() {
  size(512,512);
  l1 = new Linea(-1,100);
  l2 = new Linea(-0.5, 0.0);
}

void draw() {
  background(200);
  translate(256,256);
  l1.Dibujar();
  l2.Dibujar();
  float theta = Angulo(l1, l2);
  PVector punto = Punto(l1, l2);
  ellipse(punto.x, punto.y, 10,10);
  String msg = str(round(degrees(theta))) + " " + 
               str(round(punto.x))+ 
               " " + 
               str(round(punto.y));
  textSize(32);
  text(msg, -200, -200);
}

PVector Punto(Linea l1, Linea l2){
  float x = (l2.b-l1.b)/(l1.m-l2.m);
  float y = (l1.m*l2.b-l2.m*l1.b)/(l1.m-l2.m);
  PVector  punto = new PVector(x,y);
  return punto;
}

float Angulo(Linea l1, Linea l2) {
  float theta;
  float num = l2.m-l1.m;
  float dem = 1 + l1.m * l2.m;
  theta = atan(num/dem);
  return theta;
}
