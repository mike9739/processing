Eje origen;
PlanoXY plano;
float x;
float y;
Imagen img;
Tubos obj;
Creeper alpha;
Creeper [] creepers;
int N = 100;
void setup() {
  size(512,512,P3D);
  origen = new Eje();
  x = 0.0;
  y = 0.0;
  plano = new PlanoXY(10);
  img = new Imagen();
  obj = new Tubos(0,10,0);
  alpha = new Creeper();
  creepers = new Creeper[N];
  for (int k = 0; k< N; k++) {
    creepers[k] = new Creeper(random(-100,100),random(-100,100),0,
                              radians(random(0,360)));
  }
}


void draw() {
  background(200);
  //x = 80 * cos(5*radians(millis()/1000.0));
  //y = 80 * sin(5*radians(millis()/1000.0));
 
  y=200;
  camera(alpha.posicion.x,y,200,//in(2*PI*(millis()/1000.0)), 
         alpha.posicion.x,0,0,
         0,0,-1);
  plano.Dibujar();
  origen.Dibujar();
  for (int k = 0; k< N; k++) { creepers[k].Dibujar();}
  translate(x,10,0);
  scale(1.3);
  alpha.Dibujar();
  x+=0.1;
}
