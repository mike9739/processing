class Triangulo {
  PVector [] vertices;
  PVector centro;
  
  Triangulo() {
    vertices = new PVector[3];
    vertices[0] = new PVector(-50, -50);
    vertices[1] = new PVector(50, -50);
    vertices[2] = new PVector(0, 60);
    centro = new PVector(0,0);
  }
  
  Triangulo(float x, float y) {
    vertices = new PVector[3];
    vertices[0] = new PVector(-50, -50);
    vertices[1] = new PVector(50, -50);
    vertices[2] = new PVector(0, 60);
    centro = new PVector(x,y);
  }

  void Trasladar(float x, float y) {
    centro.x += x;
    centro.y += y;
  }
  
  void Rotar(float theta) {
    float x = centro.x * cos(theta) + centro.y* sin(theta);
    float y = -centro.x * sin(theta) + centro.y* cos(theta);
    centro.x = x;
    centro.y = y;
  }
  
  void TrasladarLocal(int k, float x, float y) {
    vertices[k].x +=x;
    vertices[k].y +=y;
  }
  
  void RotarLocal(float theta) {
    for(int k = 0; k< 3; k++) {
      float x = vertices[k].x * cos(theta) + vertices[k].y* sin(theta);
      float y = -vertices[k].x * sin(theta) + vertices[k].y* cos(theta);
      vertices[k].x = x;
      vertices[k].y = y;
    }
  }
  
  void EscalarLocal(float s) {
    for(int k = 0; k <3; k++) {
      vertices[k].mult(s);
    }
  }
  
  void Dibujar() {
    fill(255, 255, 255);
    beginShape();
      for(int k = 0; k< 3; k++) {
        float x= centro.x + vertices[k].x;
        float y= centro.y + vertices[k].y;
        vertex(x,y);
      }
    endShape();
    fill(255, 0, 0);
    ellipse(centro.x, centro.y, 10, 10);
    
  }
}
