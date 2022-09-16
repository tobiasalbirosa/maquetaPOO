class Juego {

  Pantalla pantalla = new Pantalla();

  int estado = 0;

  Juego() {
  }

  void draw() {

    pantalla.draw();
  }

  void mouseMoved() {

    pantalla.mouseMoved();
  }

  void mouseClicked() {

    pantalla.mouseClicked();
  }
}
