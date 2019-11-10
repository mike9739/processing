class Bezier{
  PVector p0;
   PVector p1;
    PVector p2;
     PVector p3;
     float delta_u;
     
 Bezier(float x0, float y0,float x1, float y1,
       float x2, float y2, float x3, float y3){
         
         p0= new PVector(x0,y0);
         p1= new PVector(x1,y1);
         p2= new PVector(x2,y2);
         p3= new PVector(x3,y3);
         delta_u= 0.001;
         
         
       }
       
 void Dibujar(){
   
   noFill();
   stroke(240,0,0);
   beginShape();
   for(float u=0; u<= 1.0; u+=delta_u){
     float k1= (1-u)*(1-u)*(1-u);// pow (1-u,3)
     float k2= 3 *u * (1-u)*(1-u);//pow(1-u,2)
     float k3= 3 *u * u *(1-u); //pow(u,2)
     float k4= u *u * u ;//pow (u,3)
     
     float x= k1 * p0.x + k2 * p1.x + k3*p2.x + k4*p3.x;
     float y= k1 * p0.y + k2 * p1.y + k3*p2.y + k4*p3.y;   
     vertex(x,y);
   }
   
   vertex(p3.x,p3.y);
   endShape();
   float r=10;
   
   ellipse(p0.x, p0.y, r, r);
   ellipse(p1.x, p1.y, r, r);
   ellipse(p2.x, p2.y, r, r);
   ellipse(p3.x, p3.y, r, r);
   line(p0.x, p0.y, p1.x, p1.y);
  line(p2.x, p2.y, p3.x, p3.y);
 }
 ArrayList <PVector> CalcularCurva(){
   ArrayList <PVector>  ruta=new ArrayList <PVector> ();
   for(float u=0; u<= 1.0; u+=delta_u){
     float k1= (1-u)*(1-u)*(1-u);// pow (1-u,3)
     float k2= 3 *u * (1-u)*(1-u);//pow(1-u,2)
     float k3= 3 *u * u *(1-u); //pow(u,2)
     float k4= u *u * u ;//pow (u,3)
     
     float x= k1 * p0.x + k2 * p1.x + k3*p2.x + k4*p3.x;
     float y= k1 * p0.y + k2 * p1.y + k3*p2.y + k4*p3.y;   
     ruta.add(new PVector(x,y));
   
 }
 return ruta;
 
}

}
