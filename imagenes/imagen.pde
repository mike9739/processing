class Imagen{
    PImage img;
   float ancho =128;
    float alto = 128;
    Imagen(int option){
        switch(option){
          case 0:img = loadImage("img1.jpg");break;
          case 1: img = loadImage("img2.png");break;
      
          default : img = loadImage("error.pmg");
        }
          
    }
    
    void dibujar(){
      pushMatrix();
      float x=0.001*cos(2*PI*(millis()/1000.0));
      scale(x+ancho/img.width,x+alto/img.height);
      //rotate(radians(45));
      image(img,0,0);
      popMatrix();
    }
  }
