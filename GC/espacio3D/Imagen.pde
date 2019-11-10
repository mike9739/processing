class Imagen {
  PImage img;
  float ancho;
  float alto;

  Imagen() {
    ancho = 10;
    alto = 10;
    img = loadImage("spiral.png");
  }

  void Dibujar() {
    pushMatrix();
      scale(ancho/img.width, alto/img.height);
      image(img, 0, 0);
    popMatrix();
  }
}
