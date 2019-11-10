class Linea {
  float m; // Pendiente
  float b; // Desplazamiento
  
  Linea() {
    m =  1;
    b = 0;
  }
  
  Linea(float _m, float _b) {
    m = _m;
    b = _b;
  }

  void Dibujar() {
    strokeCap(ROUND);
    beginShape();   
    for (float x = -100.0; x < 100; x++) {
      float y = m*x+b;
      vertex(x,y);
    }
    endShape();
    
  }
}
