class Revolucionario{
  PVector pbd;
  PVector pbi;
  PVector ppd;
  PVector ppi;
  PVector pc;
 Parte brazo_derecho;
 Parte brazo_izquierdo;
 Parte pierna_derecha;
 Parte pierna_izquierda;
 Parte cuerpo;
 Parte cabeza;
 
  Revolucionario(){
   brazo_derecho= new Parte("brazo_derecho.png",246,155);
     pbd= new PVector(-110,-70);
     
   brazo_izquierdo= new Parte("brazo_izquierdo.png",14,183);
     pbi=new PVector(105,-80);
     
   pierna_derecha= new Parte("pierna_derecha.png",300,80);
     ppd= new PVector(-20,135);
     
   pierna_izquierda= new Parte("pierna_izquierda.png",32,13);
     ppi= new PVector(30,105);
     
   cuerpo= new Parte("cuerpo.png",133,132.5);
   
   cabeza= new Parte("cabeza.png",150,226);
     pc= new PVector(-30,-260);
  }
  
  void Dibujar(){
    float t= millis()/1000.0;
    pushMatrix();
    cuerpo.Dibujar();
    popMatrix();
    
    pushMatrix();
    translate(pbd.x,pbd.y);
    rotate(0.1*sin(2*PI*t*2));
    brazo_derecho.Dibujar();
    popMatrix();
    
    pushMatrix();
    translate(pbi.x,pbi.y);
     rotate(0.1*cos(2*PI*t*2));
    brazo_izquierdo.Dibujar();
    popMatrix();
    
    pushMatrix();
    translate(ppd.x,ppd.y);
    rotate(-5*t);
    pierna_derecha.Dibujar();
    popMatrix();
    
    pushMatrix();
    translate(ppi.x,ppi.y);
    rotate(-5*t);
    pierna_izquierda.Dibujar();
    popMatrix();
    
    pushMatrix();
    translate(pc.x,pc.y+10*cos(2*PI*t));
    cabeza.Dibujar();
    popMatrix();
    
    
    
  }
  
}
