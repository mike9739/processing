Punto punto1;
Punto meta;
Punto [] metas;
int N;
int i;
int meta_actual;

void setup() {
  size(512, 512);
  N=100;
  i=0;
  punto1 = new Punto();
  metas = new Punto[4];
  
  metas[0] = new Punto(width/4, height/4);
  metas[1] = new Punto(3*width/4, height/4);
  metas[2] = new Punto(3*width/4, 3*height/4);
  metas[3] = new Punto(width/4, 3*height/4);
  meta_actual = 0;
  meta = metas[meta_actual];
}

void draw() {
  background(200);
  meta = metas[meta_actual];
  PVector dp = PVector.sub(meta.xy, punto1.xy);
  println(dp);
  float dx = dp.x/N;
  float dy = dp.y/N;
  punto1.Trasladar(dx,dy);
  
  if(dp.mag() < 0.5) {
    meta_actual++; // meta_actual = meta_actual + 1;
    meta_actual = meta_actual%4;
  }
  
  for(int k=0; k<4; k++) {
    metas[k].Dibujar();
  }
  meta.Dibujar();
  punto1.Dibujar();
}
