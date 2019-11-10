/* 

      Métodos de interpolación

  Escalón:
      ste(x0, x1, t) = | x0 t<0.5
                       | x1 en otro caso

  Linear: (x0, x1, t) = x0 + t(x1 - x0);
*/

float x0;
float x1;

void setup() {
  size(512, 512);
  x0 = 100.0f;
  x1 = 400.0f;
}

void draw() {
  background(100);
  float t = millis() / 1000.0f;
  fill(255);
  text(str(t), 30, 30);
  float T = 20.0f;
  float x_t = Step(x0, x1, t/T);
  
  //Escalon
  noFill();
  //Inicio
  ellipse(x0, 100, 30, 30);
  //Fin
  ellipse(x1, 100, 30, 30);
  fill(255, 0, 0);
  ellipse(x_t, 100, 30, 30);
  
  //Lineal
  noFill();
  //Inicio
  ellipse(x0, 200, 30, 30);
  //Fin
  ellipse(x1, 200, 30, 30);
  fill(255, 0, 0);
  x_t = Linear(x0, x1, t/T);
  ellipse(x_t, 200, 30, 30);
  
   noFill();
  //Inicio
  ellipse(x0, 300, 30, 30);
  //Fin
  ellipse(x1, 300, 30, 30);
  fill(255, 0, 0);
  x_t = Cosine(x0, x1, t/T);
  ellipse(x_t, 300, 30, 30);
  
  
   noFill();
  //Inicio
  ellipse(x0, 400, 30, 30);
  //Fin
  ellipse(x1, 400, 30, 30);
  fill(255, 0, 0);
  x_t = SmothStep(x0, x1, t/T);
  ellipse(x_t, 400, 30, 30);
  
  
}
