//PVector v;
float r;
float theta;
void setup() {
    size(512, 512);
    
   // v = new PVector(10, 50);
   r = 10;
   theta = radians(60) ;
   frameRate(2);
}

void draw() {
  background(128);
  translate(width/2, height/2);
  theta -= radians(10);
  r += 0.1;
  float x = r * cos(theta);
  float y = r * sin(theta);
  float theta2 = atan(y/x);
  String msg2 = "Theta "+str(degrees(theta2)%360);
  String msg = "Angulo "+str(degrees(theta)%360);
  textSize(32);
  text(msg, -100,-100);
  text(msg2, -100,-50);
  println(msg);
  //line(0, 0, x, y);
  ellipse(x,y, 5, 5);
  //PVector dt = new PVector(30, 20);
  //v.x = 10;
  //v.y = 40;
  //PVector r = PVector.add(v,dt);
  //line(0,0,v.x,v.y);
  //line(0,0,dt.x,dt.y);
  //line(0,0,r.x,r.y);
  
}
