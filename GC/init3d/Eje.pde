class Eje {
  float largo;
  float ancho;
  
  Eje() {
    largo = 10;
    ancho = 2;
  }
  
  Eje(float largo_) {
    largo = largo_;
    ancho = 2;
  }
  
  void Dibujar() {
   strokeWeight(ancho);
   stroke(255,0,0);
   line(0,0,0,largo,0,0);
   
   stroke(0,255,0);
   line(0,0,0,0,largo,0);
   
   stroke(0,0,255);
   line(0,0,0,0,0,largo);
  }
}
