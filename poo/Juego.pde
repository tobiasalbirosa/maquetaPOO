class Juego {
  Pantallas pantallas = new Pantallas();
  int estado = 0;
  Juego() {
  }

  void draw() {
    pantallas.draw();
  }

  void mouseMoved() {
    pantallas.mouseMoved();
  }

  void mouseClicked() {
    pantallas.mouseClicked();
  }
}
