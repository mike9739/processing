class Circulo{
  float r_x,r_y,delta_t,min_t,max_t;
  
  Circulo(float r_x,float r_y,float delta_t){
    this.r_x = r_x;
    this.r_y = r_y;
    this.delta_t = delta_t;
    min_t = 0;
    max_t = 2*PI;
  }
  
  void Dibujar(){
    beginShape();
    stroke(240,10,01);
    noFill();
    for(float t = min_t;t<max_t;t+=delta_t){
      float x = r_x * cos(t);
      float y = r_y *sin(t);
      vertex(x,y);
    }
    endShape();
  }
}
