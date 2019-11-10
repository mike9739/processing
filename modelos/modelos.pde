PShape modelo;
Eje eje;
void setup(){
size(512,512,P3D);
modelo = loadShape("LEGO_Man.obj");
modelo.scale(5);

eje = new Eje(20);
}
float zfar=10;
void draw(){
  lights();
  camera(100,100,100,0,0,0,0,0,-1);
  ortho(-20,20,-20,-20);
  //perspective(radians(45),float(width)/float(height),0.1,zfar);
  shape(modelo,0,0);
  zfar+=0.1;
  
}
