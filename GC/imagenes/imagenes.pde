Imagen img1;
Imagen img2;
void setup() {
  size(512,512);
  img1 = new Imagen(0);
  img2 = new Imagen(1);
}


void draw() {
  scale(0.9);
  for(int x = 0; x < 1024; x+=130) {
    for(int y = 0; y < 1024; y+=130){
      pushMatrix();
        translate(x,y);
        img1.Dibujar();
      popMatrix();
    }
  }
  //img2.Dibujar();
}
