class Pantalla {

  Boton botonIntro = new Boton(0);
  Boton botonMenu = new Boton(1);

  String nombreDePantalla = "intro";

  Pantalla() {
  }

  void draw() {
    println("Estado: ", juego.estado);
    if (juego.estado == 0) {
      this.nombreDePantalla = "intro";
      this.dibujarIntro();
    }
    if (juego.estado == 1) {
      this.nombreDePantalla = "menu";
      this.dibujarMenu();
    }
  }
  void mouseMoved() {
    if (juego.estado == 0) {
      botonIntro.mouseMoved();
    }
    if (juego.estado == 1) {
      botonMenu.mouseMoved();
    }
  }
  void mouseClicked() {
    switch(juego.estado) {
    case 0:
      juego.estado = 1;

      break;
    case 1:
      juego.estado = 0;
      break;

    default:
      break;
    }
  }
  void dibujarIntro() {
    background(0);
    //ID en el ultimo parametro
    botonIntro.draw(width/2, height/2, 40, "rect", "Ir a menu");
  }
  void dibujarMenu() {

    background(255);
    //ID en el ultimo parametro
    botonMenu.draw(width/2, height/2, 40, "rect", "Ir a intro");
  }
}
