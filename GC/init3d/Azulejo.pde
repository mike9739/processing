class Azulejo {
  PImage imagen;
  int ancho;
  int alto;
  Azulejo() {
    imagen = loadImage("azulejo1.jpg");
    ancho = 10;
    alto = 10;
  }
  
  void Dibujar() {
    pushMatrix();
      //rotate(radians(45));
      scale( ancho/(float)imagen.width, alto/(float)imagen.height);
      image(imagen,0,0);
    popMatrix();
  }
}
