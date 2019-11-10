Tetris pieza1, pieza2 ,pieza3;
float angle;
void setup() {
  size(512, 512);
  pieza1 = new Tetris();
  pieza2 = new Tetris();
  pieza3 = new Tetris();
  angle =0;
 /*
  triangulo = new Triangulo();
  triangulo = new Triangulo(250,250);
  triangulo.TrasladarLocal(0, 100, 40);
  triangulo.TrasladarLocal(1, 100, 40);
  triangulo.TrasladarLocal(2, 100, 40);
  direccion = true;
  */
 pieza1.RotarLocal(radians(90));
  pieza1.Trasladar(125,256);
  pieza1.RotarLocal(radians(90));
  
  pieza2.RotarLocal(radians(270));
  pieza2.Trasladar(256,236);
  pieza2.EscalarLocal(1,-1);
 
  pieza3.RotarLocal(radians(180));
  pieza3.Trasladar(375,256);
  pieza3.EscalarLocal(-1, 1);
}

float CalcularAngulo(PVector a, PVector b) {
  float angulo = atan2(b.y - a.y, b.x - a.x);
  //float angulo = atan((b.y - a.y)/ (b.x - a.x));
  return angulo;
}

void draw() {
  background(200);
  pieza1.Dibujar();
  //pieza2.Dibujar();
  //pieza3.Dibujar();
  

   
  
  /*
  triangulo.Dibujar();
  
  float a1 = CalcularAngulo(triangulo.centro,
                           PVector.add(triangulo.centro,triangulo.vertices[2])); 
  
   if(direccion && (abs(PI-a1) <radians(1))) {
     direccion = false;
   }
   else if (!direccion && ( abs(PI/2-a1) <radians(1))) {
     direccion = true;
   }
   if(direccion) 
    triangulo.RotarLocal(-radians(0.9));
   else 
    triangulo.RotarLocal(radians(0.9));
  
  String msg = "Angulo: " + str(round(degrees(a1)));
  text(msg, 250,200);*/ 
}
