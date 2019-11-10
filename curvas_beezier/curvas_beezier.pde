Bezier b1;
Bezier3D b2;
float r ,tetha;
void setup(){
  size(512,512,P3D);
  
  b1 = new Bezier(-100,-100,30,20,50,80,80,80);
  b2= new Bezier3D(50,20,0,
    50,100,-20,
    0,50,5,
    0,0,50);
  r=100;
  tetha=0;
  
}
void draw(){
  background(240);
  camera(100,100,100,0,0,0,0,0,-1);
  float x = r *cos(tetha);
  float y = r *sin(tetha);
  //b1.p1.x = b1.p0.x+ x;
  //b1.p1.y=b1.p0.y+y;
  //b1.p2.x = b1.p3.x+ x;
  //b1.p2.y=b1.p3.y+y;
  //para 3d
  b2.p2.x=b2.p3.x -x;
  b2.p2.y=b2.p3.y-y; 
  
  //translate(width/2,height/2);
  b2.Dibujar();
  tetha+=radians(1);
}
