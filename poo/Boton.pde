class Boton {

  float x, y, tam;
  color relleno;
  boolean hover;
  String texto;
  int botonID;

  Boton(int id) {
    this.botonID = id;
  }

  void draw(float x, float y, float tam, String tipo, String texto) {

    if (tipo.equals("rect")) {
      this.x = x;
      this.y = y;
      this.tam = tam;

      if (this.hover) {
        relleno = color(255, 0, 0);
      } else {
        relleno = color(0, 255, 0);
      }
      fill(relleno);
      rect(x, y, tam, tam);
      text(texto, x, y);
    }

    if (tipo.equals("ellipse")) {
     /*.....Podriamos dibujar un boton circular, para el cual deberiamos
     programar otros metodos ya que la forma de dibujar y detectar cambiaria
     levemente
     */
    }
    
  }
  void mouseClicked() {
    if (this.hover == true) {
      this.accion(this.botonID);
    }
  }
  //LOGICA DE MOUSE OVER
  void mouseMoved() {

    if (mouseX > this.x 
      && mouseY > this.y
      && mouseX < this.x + this.tam 
      && mouseY < this.y + this.tam) {
      this.hover = true;
    } else {
      this.hover = false;
    }
  }

  // DEPENDIENDO DEL ID (pasado por parametro)
  // DEL BOTON, HACEMOS UNA COSA U OTRA
  void accion(int id) {
    switch(id) {
    case 0:
      println("click");
      juego.estado = 1;

      break;
    case 1:
      juego.estado = 0;
      break;

    default:
      break;
    }
  }
}
