class Cuadrado {
  // Parámetros, aka atributos
  float x;
  float y;
  float lado;
  float fase;
  color relleno;
  color color_linea;
  float ancho;
  
  // Constructor
  Cuadrado() {
    x = 0.0f;
    y = 0.0f;
    lado = 20.0;
    relleno = color(random(0,255), random(0,255), random(0,255));
    fase = random(0,2*PI);
    color_linea = color(random(0,255), random(0,255), random(0,255));
    ancho = random(1, 10);
  }
  
  // Constructor
  Cuadrado(float x_, float y_, float lado_) {
    x = x_;
    y = y_;
    lado = lado_;
    relleno = color(random(0,255), random(0,255), random(0,255));
    fase = random(0,2*PI);
    color_linea = color(random(0,255), random(0,255), random(0,255));
    ancho = random(1, 10); 
}
  
  // Constructor copia
  Cuadrado(Cuadrado c) {
    x = c.x;
    y = c.y;
    lado = c.lado;
    relleno = c.relleno;
    color_linea = c.color_linea;
    ancho = c.ancho;
  }
  
  void Dibujar() {
    float dlado = 10 * sin(2 * PI* (millis()/1000.0)+fase);
    fill(relleno);
    stroke(color_linea);
    strokeWeight(ancho); 
    rect(x,y,lado + dlado,lado+dlado); 
  }
  
}
