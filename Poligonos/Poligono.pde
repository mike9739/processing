class Poligono{
  PVector  [] vertices;
  int N;
  PVector centro;
  
  Poligono(){
    N=12;
    vertices = new PVector[N];
    vertices[0]=new PVector(-40,20);
    vertices[1]=new PVector(-30,0);
    vertices[2]=new PVector(-20,35);
    vertices[3]=new PVector(-15,30);
    vertices[4]=new PVector(0,65);
    vertices[5]=new PVector(5,15);
    vertices[6]=new PVector(25,-15);
    vertices[7]=new PVector(48,-30);
    vertices[8]=new PVector(41,-45);
    vertices[9]=new PVector(15,-55);
    vertices[10]=new PVector(-5,-55);
    vertices[11]=new PVector(-32,-35);
    centro = new PVector(0,0);
  }
  
  void transladar(float x,float y){
  centro.x+=x;
  centro.y+=y;
  }
  void transladarLocal(int k, float x , float y){
    vertices[k].x += x;
    vertices[k].y += y;
  }
  void Rotar(float theta){
     float x = centro.x * cos(theta) + centro.y*sin(theta);
    float y = -centro.x * sin(theta) + centro.y*cos(theta);
    centro.x=x;
    centro.y=y;
  
}
void rotarLocal(float theta){
   for(int k=0; k<N; k++){
    float x = vertices[k].x * cos(theta) + vertices[k].y*sin(theta);
    float y = vertices[k].x * sin(theta) + vertices[k].y*cos(theta);
    vertices[k].x=x;
    vertices[k].y=y;
}
} 

void localEscalar(float x ,float y){
  for(int k=0; k<N; k++){
      vertices[k].x=x;
      vertices[k].y=y;
    }
}
  
  void Dibujaar(){
    beginShape();
    for(int i=0;i<N;i++){
      float x = centro.x+vertices[i].x;
      float y = centro.y+vertices[i].y;
      vertex(x,y);
    }
    endShape();
    ellipse(centro.x,centro.y,10,10);
  }
}
