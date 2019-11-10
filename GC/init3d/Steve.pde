class Steve {
float cabeza;
float torso_x;
float torso_y;
float torso_z;
float brazo_x;
float brazo_y;
float brazo_z;
Eje eje;
Steve () {
  eje = new Eje(30);
  cabeza = 10;
  torso_x = 10;
  torso_y = 10;
  torso_z = 2*cabeza;
  
  brazo_x = 5;
  brazo_y = 5;
  brazo_z = 2*cabeza;
}

 void Dibujar() {
   pushMatrix();
     translate(0,0, 4*cabeza);
     rotateZ(radians(5* sin(2*PI*(millis()/1000.0))));
     eje.Dibujar();
     box(cabeza);
   popMatrix();
 
   pushMatrix();
     translate(0,0, 2*cabeza+cabeza/2);
     eje.Dibujar();
     box(torso_x,torso_y, torso_z);
   popMatrix();
   
   // Derecha
   pushMatrix();
     translate(0,cabeza/2, 2*cabeza+cabeza/2);
     eje.Dibujar();
     rotateY(radians(20* sin(2*PI*(millis()/1000.0))));
     box(brazo_x,brazo_y,brazo_z);
     
   popMatrix();
   // Izquierda
   pushMatrix();
     translate(0,-cabeza/2, 2*cabeza+cabeza/2);
     eje.Dibujar();
     rotateY(radians(20* cos(2*PI*(millis()/1000.0))));
     box(brazo_x,brazo_y,brazo_z);
   popMatrix();
   
   // Derecha
   pushMatrix();
     translate(0,brazo_y/2, cabeza/2);
     eje.Dibujar();
     rotateY(radians(40* cos(2*PI*(millis()/1000.0))));
     box(brazo_x,brazo_y,brazo_z);
   popMatrix();
   
   // Izquierda
   pushMatrix();
     translate(0,-brazo_y/2, cabeza/2);
     eje.Dibujar();
     rotateY(radians(40* sin(2*PI*(millis()/1000.0))));
     box(brazo_x,brazo_y,brazo_z);
   popMatrix();
 }

}
