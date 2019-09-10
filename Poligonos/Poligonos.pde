Poligono p1;
Poligono p2;
Poligono p3;
void setup()
{
  size(512,512);
  p1 = new Poligono();
  
  p1.transladar(256,256);

  p1.rotarLocal(radians(180));
  
  
  
}
void draw(){
  background(200);
  //poligono.transladar(0.1,0.1);
  p1.Dibujaar();

  //poligono.rotarLocal(radians(-0.5));
}

void mouseClicked(){
 float x1 = mouseX;
 float y1 = mouseY;
 float x2 = p1.centro.x;
 float y2 = p1.centro.y;
 float m = (y2-y1)/(x2-x1);
 
 p1.rotarLocal(tan(m));
 print(tan(m));
}
