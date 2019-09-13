Eje Origen;
float rotar_x;
float rotar_z;
float rotar_y;
float x;
PlanoXY Plano;
void setup(){
size(512,512,P3D);
Origen = new Eje();
rotar_x=0;
rotar_z=0;
rotar_y=0;
x=0;
Plano = new PlanoXY(5);
}

void draw(){
  background(200);
  camera(50,50,50
  ,0,0,0,0,0,-1);
  Plano.Dibujar();
  Origen.dibujar();
  translate(x,0,0);
  Origen.dibujar();
  scale(2,0.1,1);
  rotateX(rotar_x);
  sphere(15);
  x+=0.1;
  rotar_x+=radians(10);
 // pushMatrix();
  //rotateY(rotar_y);
  //Origen.dibujar();
  //box(5,5,5);
  //rotateZ(rotar_z);
  
 // translate(10,0,0);
  //Origen.dibujar();
  //box(5,5,5);
  //rotateX(rotar_x);
  //translate(0,10,0);
  //Origen.dibujar();
  //box(5,5,5);
  //sphere(1);
  //rotar_x += radians(10);
  //rotar_z += radians(1);
  //rotar_y += radians(0.5);
}
