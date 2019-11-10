class Tubos {
  float ancho = 10;
  float alto = 30;
  float profundidad = 10;
  float escala = 0.5;
  PVector posicion;
  Tubos(float x, float y, float z) {
    posicion = new PVector(x,y,z);
  }
  
  void Dibujar() {
    pushMatrix();
      translate(posicion.x, posicion.y, posicion.z);
      scale(escala);
      box(ancho, alto, profundidad);
      rotateX(radians(90));
      box(ancho, alto, profundidad);
      rotateZ(radians(90));
      box(ancho, alto, profundidad);
    popMatrix();
  }

}
