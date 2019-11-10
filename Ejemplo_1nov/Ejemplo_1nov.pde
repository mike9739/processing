 Revolucionario Doroteo;
 float x0,x1,t,T,y0,y1;

 
 void setup(){
   size(512,512);
   Doroteo= new Revolucionario();
   x0=0;
   y0=0;
   T=20.0f;
  
 }
 int k= 0;
 void draw(){
   
   background(255);
   //translate(width/2.0, height/2.0);
   
   
   
   t= millis()/1000.0;

   pushMatrix();
   scale(-0.4,0.4);
   Doroteo.Dibujar();
   popMatrix();
   
   k++;
   
    
 }
