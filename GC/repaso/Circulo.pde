// Clase para manipular círculos
class Circulo {
  // Parámetros
  float x;// x_
  float y;
  float radio;
  color relleno;
  float fase;
  color linea;
  float ancho;
  
  // Constructor
  Circulo() {
    x = 0.0;
    y = 0.0;
    radio = 10; // radio <0.0 ??
    relleno = color(random(0,255), random(0,255), random(0,255));
    linea = color(random(0,255), random(0,255), random(0,255));
    fase = random(0, 2*PI);
    ancho = random(2,10);
  }
  
  // constructor
  Circulo(float x_, float y_, float radio_) {
    x = x_;
    y = y_;
    radio = radio_;
    relleno = color(random(0,255), random(0,255), random(0,255));
    fase = random(0, 2*PI);
    fase = random(0, 2*PI);
    ancho = random(2,10);
    relleno = color(random(0,255), random(0,255), random(0,255));
    linea = color(random(0,255), random(0,255), random(0,255));
  }
  
  void Dibujar() { // Draw
    fill(relleno);
    stroke(linea,150); 
    strokeWeight(ancho);
    float r_dt = 10 * sin(2*PI*(millis()/1000.0)+fase);
    ellipse(x,y,radio+r_dt,radio+r_dt);
  }
}
