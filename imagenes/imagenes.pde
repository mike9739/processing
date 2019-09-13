Imagen img,img2;
void setup(){
  size(512,512);
  img = new Imagen(0);
  img2 = new Imagen(1);
}
int k = 0;
void draw(){
  //translate(256,256);
  scale(0.9);
  //rotate(radians(45));
  for(int i =0 ;i<1024;i+=130){
    for(int j =0;j<1024;j+=130){
      pushMatrix();

        translate(i,j);
        img.dibujar();
      popMatrix();
    }
  
    
  }
  
//(img2.dibujar();
}
