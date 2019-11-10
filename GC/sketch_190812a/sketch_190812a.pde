
// Configurar el sistema
void setup () {


}
float theta = 0.0;
float m = 1.0;
float b = 0.0;
void draw() {
  background(200);
  float x1 = 0.0;
  float y1 = 10.0;
  float x2 = 50.0;
  float y2 = 50.0;
  point(10,10);
  line(x1,y1, x2,y2);
  
  // y = m*x +b;
  
ellipse(x2,y2,30*cos(2*PI*theta),20);  
  beginShape();
  for (float x = 0.0; x < 100; x++) {
    float y = m*x+b;
    vertex(x,y);
  }
  endShape();
  
  
  theta +=0.01;
 // m+=0.01;
  b+=0.01;
}
