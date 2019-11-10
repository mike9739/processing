Curva c1;
Circulo circulo;
Espiral espiral1,espiral2;
float m;
void setup(){
  size(512,512);
  
  m=0;
  circulo = new Circulo(10,10,radians(10));
  espiral1 = new Espiral(10,10,0,2,radians(0.1),5);
  espiral2 = new Espiral(20,20,0,12,radians(0.1),5);
}

void draw(){
  background(200,200,200);
  translate(width/2,height/2);
  espiral1.Dibujar();
  espiral2.Dibujar();
  //c1 = new Curva(200,radians(m),0,2*PI,radians(0.1));;
  //c1.Dibujar();
  //rotate(radians(m));
  //circulo.Dibujar();
  //m+=1;
  //print(m);
  
  
}
