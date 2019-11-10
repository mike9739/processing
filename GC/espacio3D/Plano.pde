class PlanoXY {
  float ancho;
  float max_x;
  float max_y;
  float min_x;
  float min_y;
  
  PlanoXY(float _ancho) {
    ancho = _ancho;
    max_x = 1000;
    max_y = 1000;
    
    min_x = -1000;
    min_y = -1000;
  }

  void Dibujar() {
   strokeWeight(1);
   for(float x = 0; x< max_x; x+=ancho) {
     line(x, min_y, 0,
          x, max_y, 0);
   }
   
   for(float x = 0; x > min_x; x-=ancho) {
     line(x, min_y, 0,
          x, max_y, 0);
   }
   
   for(float y = 0; y< max_y; y+=ancho) {
     line(min_x, y, 0,
          max_x, y, 0);
   }
   
   for(float y = 0; y > min_y; y-=ancho) {
     line(min_x, y, 0,
          max_x, y, 0);
   }
  }

}
