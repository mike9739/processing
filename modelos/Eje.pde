class Eje{
  float largo;
  Eje(float largo_){
    largo = largo_;
  }
  void Dibujar(){
    stroke(255,0,0);
    line(0,0,0,largo,0,0);
    stroke(0,255,0);
    line(0,0,0,0,largo,0);
    stroke(0,0,255);
    line(0,0,0,0,0,largo);
    
  }
}
