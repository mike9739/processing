float r;
float theta;
void setup() {
  size(512, 512);
  r = 100;
  theta = radians(0);
  frameRate(1);
}

void draw() {
  background(120);
  translate(width/2.0, height/2.0);
  float x = r * cos(theta);
  float y = r * sin(theta);
  line(0,0,x,y);
  
  float rr = sqrt(x*x + y*y);
  float theta2 = atan2(y,x);
  textSize(18);
  String msg = " angulo: " + str(round(degrees(theta)%360));
  text(msg,0,-100);
  theta -= radians(1);
}
