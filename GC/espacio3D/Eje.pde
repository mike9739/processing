class Eje {

  void Dibujar() {
    // Eje x
    strokeWeight(2);
    stroke(255, 0, 0);
    line(0,0,0, 10, 0, 0);
    // Eje y
    stroke(0, 255, 0);
    line(0,0,0, 0, 10, 0);
    // Eje z
    stroke(0, 0, 255);
    line(0,0,0, 0, 0, 10);
    stroke(0);
  }

}
