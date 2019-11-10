Linea linea1;
Linea linea2;
void setup(){
  size(512, 512);
  linea1 = new Linea(-1.999999999,9);
  linea2 = new Linea(-2.00,-10);
}

void draw() {
  background(200);
  translate(256,256);
  linea1.Dibujar();
  linea2.Dibujar();
  float theta = calcularAngulo(linea1, linea2);
  PVector punto = calcularInterseccion(linea1, linea2);
  println(punto);
  ellipse(punto.x, punto.y, 10,10);
  String msg = "Angulo: " + str(round(degrees(theta))); 
  text(msg, 0, -10);
  //linea2.m +=0.1;
}

float calcularAngulo(Linea l1, Linea l2) {
  float num = l2.m - l1.m;
  float dem = 1 + l1.m*l2.m;
  float theta = atan2(num, dem);
  return theta;
}


PVector calcularInterseccion(Linea l1, Linea l2) {
  PVector punto = new PVector();
  punto.x = (l2.b-l1.b) / (l1.m-l2.m);
  punto.y = (l1.m*l2.b-l2.m*l1.b) / (l1.m-l2.m);
  return punto;
}
