class Imagen {
  PImage img;
  float ancho;
  float alto;
  Imagen(int n) {
    ancho = 128;
    alto = 128;
    switch(n) {
      case 0: img = loadImage("img1.jpg"); break;
      case 1: img = loadImage("img2.png"); break;
      default: img = loadImage("bullet.png"); break;
    }
  }

  void Dibujar() {
    pushMatrix();
      float x=0.01*cos(2*PI*(millis()/1000.0));
      scale(x+ancho/img.width, alto/img.height);
      //rotate(radians(45));
      image(img, 0, 0);
      //ellipse(0,0,100,100);
    popMatrix();
  }
}
