Poligono p1;
Poligono p2;
Poligono p3;
Poligono p4;

void setup(){
size(512,512);
p1 = new Poligono();

for(int k=0;k<12;k++){
  p1.TrasladarLocal(k,-25,-5);

}
p1.Trasladar(256,256);

//p2.EscalarLocal(-1,1);
}

void draw(){
  background(200);

  p1.dibujar();

  
}

void mouseClicked(){
   float x = mouseX;
   float y = mouseY;
   float cx = p1.centro.x;
   float cy= p1.centro.y;
   float m = cy-y/cx-x;
   
   p1.RotarLocal(atan(m));
   
}
