class Parte{
  PImage img;
  float offset_x;
  float offset_y;
  Parte (String ruta, float offset_x, float offset_y){
    img= loadImage(ruta);
    this.offset_x = offset_x;
    this.offset_y = offset_y;
  }
  
 
  
  
  void Dibujar(){
    image(img,-offset_x,-offset_y);
    fill(255,0,0);
    ellipse(0,0,20,20);
  }
  
}
