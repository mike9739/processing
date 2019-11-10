class Pieza {
  PVector [] vertices;
  int N;
  PVector centro;
  
  Pieza() {
    N = 16;
    vertices = new PVector[N];
vertices[0] = new PVector(10, 30);
vertices[1] = new PVector(30,30);

vertices[2] = new PVector(-10, 10);
vertices[3] = new PVector(50, 10);

vertices[4] = new PVector(-10, -10);
vertices[5] = new PVector(50,-10);

vertices[6] = new PVector(-10,-30);
vertices[7] = new PVector(30,-30);

vertices[8] = new PVector(-10, 10);
vertices[9] = new PVector(-10, -30);

vertices[10] = new PVector(10, 30);
vertices[11] = new PVector(10, -30);

vertices[12] = new PVector(30, 30);
vertices[13] = new PVector(30, -30);

vertices[14] = new PVector(50, 10);
vertices[15] = new PVector(50, -10);
    centro = new PVector(0,0);
  }
  void Trasladar(float x, float y) {
    centro.x += x;
    centro.y += y;
  }

  void Rotar(float theta) {
    float x = centro.x  * cos(theta) + centro.y*sin(theta);
    float y = -centro.x  * sin(theta) + centro.y*cos(theta);
    centro.x = x;
    centro.y = y;
  }
  
  void RotarLocal(float theta) {
    for(int k=0; k< N; k++) {
      float x = vertices[k].x  * cos(theta) + vertices[k].y*sin(theta);
      float y = -vertices[k].x  * sin(theta) + vertices[k].y*cos(theta);
      vertices[k].x = x;
      vertices[k].y = y;
    }
  }

  void TrasladarLocal(int k, float x, float y) {
    vertices[k].x += x;
    vertices[k].y += y;
  }

  void EscalarLocal(float alpha_x, float alpha_y) {
    for(int k=0; k< N; k++) {
      vertices[k].x*=alpha_x;
      vertices[k].y*=alpha_y;
    }
  }

  void Dibujar() {
    fill(255);
     for(int k = 0; k < N; k+=2) {
       float x1= centro.x+vertices[k].x;
       float y1= centro.y+vertices[k].y;
       
       float x2= centro.x+vertices[k+1].x;
       float y2= centro.y+vertices[k+1].y;
       
       line(x1,y1,x2,y2);
     }   
    fill(255, 0, 0);
    ellipse(centro.x, centro.y,10,10);
  }

}
