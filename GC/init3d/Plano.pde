class Plano {
  float x_min;
  float x_max;
  float y_min;
  float y_max;
  
  float ancho;
  
  Plano() {
    x_min = -100;
    x_max =  100;
    y_min = -100;
    y_max =  100;
    ancho = 10;
  }

  void Dibujar() {
    stroke(255,255,0);
    for (float x = x_min; x< x_max; x+=ancho) {
      line(x,y_min,0, x,y_max,0);
    }
    for (float y = y_min; y< y_max; y+=ancho) {
      line(x_min,y,0, x_max,y,0);
    }
  }

}
