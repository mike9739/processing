class Tetris {
  PVector [] vertices;
  PVector centro;
  int N;
  
  Tetris() {
  vertices= new PVector[14];
  vertices[0] = new PVector(-25,25);
  vertices[1] = new PVector(25,25);
  vertices[2] = new PVector(-25,65);
  vertices[3] = new PVector(25,60);
  vertices[4] = new PVector(-25,100);
  vertices[5] = new PVector(65,100);
  vertices[6] = new PVector(-25,140);
  vertices[7] = new PVector(65,140);
  vertices[8] = new PVector(-25,20);
  vertices[9] = new PVector(-25,140);
  vertices[10] = new PVector(25,20);
  vertices[11] = new PVector(25,140);
  vertices[12] = new PVector(65,100);
  vertices[13] = new PVector(65,140);
  centro = new PVector(0,0);
  N=14;
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
    for(int k = 0; k< N; k++) {
      float x = vertices[k].x * cos(theta) + vertices[k].y* sin(theta);
      float y = -vertices[k].x * sin(theta) + vertices[k].y* cos(theta);
      vertices[k].x = x;
      vertices[k].y = y;
    }
  }
  
  void EscalarLocal(float s) {
    for(int k = 0; k <N; k++) {
      vertices[k].mult(s);
    }
  }
  
  void EscalarLocal(float sx, float sy) {
    for(int k = 0; k <N; k++) {
      vertices[k].x*=sx;
      vertices[k].y*=sy;
    }
  }
  
  void Dibujar() {
    fill(0,255,0);
    for(int k=0; k < N ; k+=2) {
      line(centro.x + vertices[k].x, centro.y + vertices[k].y, 
           centro.x + vertices[k+1].x, centro.y + vertices[k+1].y);
    }
    fill(255, 0, 0);
    //ellipse(centro.x, centro.y, 10, 10);
  }
}
