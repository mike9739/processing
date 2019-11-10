Cuadrado [] cuadrados;
int N;
// Función para configurar
void setup() {
  N = 4;
  size(512, 512);
  cuadrados = new Cuadrado[N];
  int mitad = width/2;
  int cuarto = mitad/2;
  cuadrados[0] = new Cuadrado(cuarto, cuarto, random(10,100) );
  cuadrados[1] = new Cuadrado(mitad + cuarto, cuarto, random(10,100) );
  cuadrados[2] = new Cuadrado(cuarto, mitad + cuarto, random(10,100) );
  cuadrados[3] = new Cuadrado(mitad + cuarto, mitad + cuarto, random(10,100) );
  //for (int k = 0; k < N; k++) {
  //  cuadrados[k] = new Cuadrado(random(0,width), random(0, height), random(10,30) );
  //}
}

// Función para mostrar información..
void draw() {
  background(200);
  for (int k = 0; k < N; k++) {
    cuadrados[k].Dibujar();
  }
   cuadrados[0].Dibujar();
   cuadrados[1].Dibujar();
   cuadrados[2].Dibujar();
   cuadrados[3].Dibujar();
  
  
}
