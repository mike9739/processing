
float [][] P={{1,0,0},{0,1,0}};
PVector [] vertices ;
PVector [] proyectados;
float theta_x,theta_y,theta_z;
void setup(){
  vertices = new PVector[8];
  vertices[0]= new PVector(30,30,30);
  vertices[1]= new PVector(30,-30,30);
  vertices[2]= new PVector(-30,-30,30);
  vertices[3]= new PVector(-30,30,30);
  vertices[4]= new PVector(30,30,-30);
  vertices[5]= new PVector(30,-30,-30);
  vertices[6]= new PVector(-30,-30,-30);
  vertices[7]= new PVector(-30,30,-30);
  proyectados = new PVector[8];
  theta_x = radians(45);
  theta_y = radians(30);
  theta_z = radians(10);
}

void draw(){
  background(230);
  translate(256,256);
  float[][] rotX = {
    {1,0,0},
    {0,cos(theta_x),-sin(theta_x)},
    {0,sin(theta_x),cos(theta_x)}
  };
  float[][] rotY = {
  {cos(theta_y),0,sin(theta_y)},
  {1,0,1},
  {-sin(theta_y),0,cos(theta_y)}
  };
  float[][] rotZ = {
    {cos(theta_z),-sin(theta_z),0},
    {sin(theta_z),cos(theta_z),0},
    {0,0,1}
  };
  
  for(int k = 0;k<8;k++){
    proyectados[k] = Proyectar(P,vertices[k]);
    ellipse(proyectados[k].x,proyectados[k].y,5,5);
    
  }

}

PVector Proyectar(float[][]P,PVector a){
  float x = P[0][0]*a.x+P[0][1]*a.y+P[0][2]*a.z;
  float y = P[1][0]*a.x+P[1][1]*a.y+P[1][2]*a.z;
  PVector r = new PVector(x,y);
  return r;
}
