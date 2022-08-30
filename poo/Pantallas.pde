class Pantallas {
  Botones botonIntro = new Botones(0);

  String nombreDePantalla = "intro";

  Pantallas() {
  }

  void draw() {
    if (juego.estado == 1) {
      this.nombreDePantalla = "menu";
    }
    if (this.nombreDePantalla.equals("intro")) {
      this.dibujarIntro();
    }
    if (this.nombreDePantalla.equals("menu")) {
      this.dibujarMenu();
    }
  }
  void mouseMoved() {
    botonIntro.mouseMoved();
  }
  void mouseClicked() {
    botonIntro.mouseClicked();
  }
  void dibujarIntro() {

    background(0);
    //ID ultimo parametro
    botonIntro.draw(width/2, height/2, 40, "rect", "Continuar");
  }
  void dibujarMenu() {

    background(255);
    //ID ultimo parametro
    botonIntro.draw(width/2, height/2, 40, "rect", "Continuar");
  }
}
