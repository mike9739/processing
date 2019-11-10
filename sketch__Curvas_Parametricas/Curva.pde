class Curva{
  
  float alpha;
  float m;
  float min_t;
  float max_t;
  float delta_t;
  
  Curva(float alpha,float m, float min_t,float max_t,float delta_t){
    this.alpha = alpha;
    this.m = m;
    this.min_t = min_t;
    this.max_t = max_t;
    this.delta_t = delta_t;
  }
  
  void Dibujar(){
    noFill();
    stroke(0,0,255);
    beginShape();
    for(float t=0; t<=2*PI;t+=delta_t){
        float x = alpha * cos(m*t) *cos(t);
        float y = alpha*cos(m*t)*sin(t);
        vertex(x,y);
    }
    endShape();
  }
  
  
}
