Punto punto;
Punto meta;
Punto [] puntos;
int meta_actual;
float N;
void setup() {
  meta_actual = 0;
  N = 100;
  punto = new Punto(30,30);
  meta = new Punto(50,50);
  puntos = new Punto[4];
  size(512, 512);
  puntos[0] = 
  new Punto(width/4, height/4);
  puntos[1] = 
  new Punto(3*width/4, height/4);
  puntos[3] = 
  new Punto(width/4, 3*height/4);
  puntos[2] = 
  new Punto(3*width/4, 3*height/4);
}

void draw() {
  background(200);
  meta = puntos[meta_actual];
  PVector dp = PVector.sub(meta.xy,punto.xy); // Diferencia, un delta
  float dx= dp.x/N;
  float dy= dp.y/N;
  
  punto.Trasladar(dx,dy); // Suma la direncia
  if(dp.mag()< 0.5) {
    meta_actual++;
    meta_actual = meta_actual % 4; 
  }
  
  punto.Dibujar();
  meta.Dibujar(); 
  for(int k = 0; k< 4;k++) {
    puntos[k].Dibujar();
  }
}
