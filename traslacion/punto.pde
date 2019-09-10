class Punto{
float x,y;
PVector xy;
boolean flag;

Punto(){
  flag = false;
  xy=new PVector(0,0);
  
}
Punto(float x,float y){
  xy=new PVector(x,y);
}
void trasladar(float x , float y){
flag = sqrt(x*x+y*y)<0.1;
xy.x+=x;
xy.y+=y;
}
void trasladar(PVector dp){
  flag = dp.mag()<0.1;
  xy.add(dp);
}


void dibujar(){
  if(flag){
    fill(255,0,0);
    println(xy.x,xy.y);
  }
  else{
    fill(255,255,255);
  }
  ellipse(xy.x,xy.y,10,10);
  
}

}
