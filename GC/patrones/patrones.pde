Azulejo azulejo;
Azulejo azulejo2;
void setup() {
  size(512, 512);
  azulejo = new Azulejo();
  azulejo2 = new Azulejo();
}

void draw() {
  scale(0.5,0.5);
  for(int x = 0; x < 1024; x+=128) {
    for(int y = 0; y < 1024; y+=128) {
      pushMatrix();
        translate(x,y);
        azulejo.Dibujar();
      popMatrix();
    }
  }
}
