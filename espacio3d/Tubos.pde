class Tubo{
float ancho = 10;
float alto = 30;
float profundidad = 10;
float escala = 0.5;
PVector posicion;
 Tubo(float x , float y, float z){
   posicion = new PVector(x,y,z);
 }

  void dibujar(){
    pushMatrix();
    scale(escala);
    box(ancho,alto,profundidad);
    rotateX(radians(90));
    box(ancho,alto,profundidad);
    rotateZ(radians(90));
    box(ancho,alto,profundidad);
    
    popMatrix();
  }
}
