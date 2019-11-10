class Creeper {
  Eje eje;
  float alto;
  float ancho;
  float profundidad;  
  PVector posicion;
  float theta;
  float x;
  Creeper() {
    alto = 10;
    ancho = 10;
    profundidad = 10;
    eje = new Eje();
    posicion = new PVector(0,0,0);
    x=0.0;
  }
  
  Creeper(float x, float y, float z, float t) {
    alto = 10;
    ancho = 10;
    profundidad = 10;
    eje = new Eje();
    posicion = new PVector(x, y, z);
    theta = t;
    
  }
  
  void Dibujar() {
    pushMatrix();
    rotateZ(theta);
    translate(posicion.x, posicion.y, posicion.z);
    posicion.x+=0.1;
    float t = millis()/1000.0;
    eje.Dibujar();
    // Cabeza
    pushMatrix();
      translate(0,0,2*alto+0.5*alto);
      eje.Dibujar();
      pushMatrix();
        rotateZ(radians(50*cos(2*PI*t*0.1)));
        translate(0,0,0.5 * alto);
        box(ancho,alto,profundidad);
      popMatrix();
    popMatrix();
    
    // Cuerpo
    pushMatrix();
      translate(0,0, 1.5*alto);
      eje.Dibujar();
      box(ancho,alto,2*profundidad);     
    popMatrix();
    
    // Pata 1
    pushMatrix();
      translate(0.25*ancho,0.25*profundidad, .5*alto);
      eje.Dibujar();
      pushMatrix();
        rotateY(radians(50*cos(2*PI*t+PI/5)));
        translate(0.25*ancho,0.0, -0.25*alto);
        box(.5*ancho,.5*alto,.5*profundidad);
      popMatrix();
    popMatrix();
    
     // Pata 2
    pushMatrix();
      translate(0.25*ancho,-0.25*profundidad, .5*alto);
      eje.Dibujar();
      pushMatrix();
        rotateY(radians(50*cos(2*PI*t)));
        translate(0.25*ancho,0.0, -0.25*alto);
        box(.5*ancho,.5*alto,.5*profundidad);
      popMatrix();
    popMatrix();
    
    // Pata 3
    pushMatrix();
      translate(-0.25*ancho,0.25*profundidad, .5*alto);
      eje.Dibujar();
      pushMatrix();
        rotateY(radians(50*sin(2*PI*t+PI/5)));
        translate(-0.25*ancho,0.0, -0.25*alto);
        box(.5*ancho,.5*alto,.5*profundidad);
      popMatrix();
    popMatrix();
    
    // Pata 4
    pushMatrix();
      translate(-0.25*ancho,-0.25*profundidad, .5*alto);
      eje.Dibujar();
      pushMatrix();
        rotateY(radians(50*sin(2*PI*t)));
        translate(-0.25*ancho,0.0, -0.25*alto);
        box(.5*ancho,.5*alto,.5*profundidad);
      popMatrix();
    popMatrix();
   
   popMatrix();
   
  }
 
}
