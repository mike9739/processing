class PlanoXY{

float ancho,max_X,max_y,min_Y,min_X;
  PlanoXY(float _ancho){
    ancho = _ancho;
    max_X =100;
    min_X =-100;
    max_y = 100;
    min_Y = -100;
  }
  
  void Dibujar(){
    for(float x=0;x<max_X;x+=ancho){
      line(x,min_Y,0,x,max_y,0);
    }
    for(float y=0;y<max_X;y+=ancho){
      line(min_X,y,0,max_X,y,0);
    }
    for(float x=0;x>min_X;x-=ancho){
      line(x,min_Y,0,x,max_y,0);
    }
    for(float y=0;y>min_Y;y-=ancho){
      line(min_X,y,0,max_X,y,0);
    }
  


}

}
