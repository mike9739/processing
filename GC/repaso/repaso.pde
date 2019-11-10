Circulo [] circulos;
int N = 4;
void setup() {
  size(100, 100);
  circulos = new Circulo[N];
  float mitad = width/2.0;
  float cuarto = mitad/2.0;
  int k=0;
  for (int m = 0; m <2; m++) {
    for(int n = 0; n <2; n++) { 
      circulos[k] = new Circulo(m*mitad+cuarto,n*mitad+cuarto, random(10,20));
      k++;  
    }
  }
}

void draw() {
  background(255);
  for(int k = 0; k < N; k++) {
    circulos[k].Dibujar();
  }
}
