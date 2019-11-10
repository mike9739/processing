class Imagen{
    PImage img;
   float ancho =128;
    float alto = 128;
    
    Imagen(){
       
       img = loadImage("espiral.png");
         
    }
    
    void dibujar(){
      pushMatrix();
      scale(ancho/img.width,alto/img.height);
      //rotate(radians(45));
      image(img,0,0);
      popMatrix();
    }
  }
