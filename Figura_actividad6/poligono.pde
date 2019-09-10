class Poligono{
  PVector[] vertices;
  int n;
  PVector centro;
  
  Poligono(){
    n=12;
    
    vertices = new PVector[n];
    vertices[0] = new PVector(0,0);
    vertices[1] = new PVector(30,0);
    vertices[2] = new PVector(30,10);
    vertices[3] = new PVector(20,10);
    vertices[4] = new PVector(20,20);
    vertices[5] = new PVector(30,20);
    vertices[6] = new PVector(30,30);
    vertices[7] = new PVector(0,30);
    vertices[8] = new PVector(0,20);
    vertices[9] = new PVector(10,20);
    vertices[10] = new PVector(10,10);
    vertices[11] = new PVector(0,10);
    centro = new PVector(0,0);
}

void Trasladar(float x, float y){
  centro.x += x;
  centro.y += y;
}

void Rotar(float theta){
    float x = centro.x * cos(theta) + centro.y*sin(theta);
    float y = -centro.x * sin(theta) + centro.y*cos(theta);
    centro.x=x;
    centro.y=y;
}


void RotarLocal(float theta){
  for(int k=0; k<n; k++){
    float x = vertices[k].x * cos(theta) + vertices[k].y*sin(theta);
    float y = vertices[k].x * sin(theta) + vertices[k].y*cos(theta);
    vertices[k].x=x;
    vertices[k].y=y;
}
}

void TrasladarLocal(int k, float x, float y){
  vertices[k].x += x;
  vertices[k].y += y;
  }

  
  void EscalarLocal(float alpha_x, float alpha_y){
    for(int k=0; k<n; k++){
      vertices[k].x=alpha_x;
      vertices[k].y=alpha_y;
    }
  }
  
  
  void dibujar(){
      beginShape();
      for(int k=0; k<n; k++){
        float x = centro.x + vertices[k].x;
        float y = centro.y + vertices[k].y;
        vertex(x,y);
      }
      endShape();
  
    ellipse(centro.x, centro.y, 5, 5);

}
}
