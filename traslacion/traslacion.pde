Punto punto; 
Punto meta;
Punto p1,p2,p3,p4;
Punto [] metas;
int metaActual;
int o;

float N;
void setup(){
  size(512,512);
  N=100;
  punto = new Punto();
  p1 = new Punto(255,255);
  p2 = new Punto(300,300);
  print("p2");
  p3 = new Punto(400,350);
  p4 = new Punto(500,500);
  metas = new Punto[4];
  metas[0] = new Punto(width/4,height/4); 
  metas[1] = new Punto(3*width/4,height/4);
  metas[2] = new Punto(3*width/4,3*height/4);
  metas[3] = new Punto(width/4,3*height/4);
  meta = metas[0];
  meta = metas[metaActual];
}
void draw(){
  background(200);
  meta = metas[metaActual];
  PVector dp = PVector.sub(meta.xy,punto.xy);
  float dx = dp.x/N;
  float dy = dp.y/N;
  punto.trasladar(dx,dy);
  
  if(dp.mag()<0.5){
    metaActual++;
    metaActual = metaActual%4;
  }
  
  
  for(int k = 0; k<4;k++)
  {
    metas[k].dibujar();
  }
  meta.dibujar();
  punto.dibujar();
  
    

  
   
}
