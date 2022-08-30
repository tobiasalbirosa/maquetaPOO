class Botones {

  float x, y, tam;
  color relleno;
  boolean hover;
  String texto;
  int botonID;

  Botones(int id) {
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
  }
  void mouseClicked() {
    if (this.hover == true) {
      this.accion(this.botonID);
    }
  }
  void mouseMoved() {

    if (mouseX > this.x 
      && mouseY > this.y
      && mouseX < this.x + this.tam 
      && mouseY < this.y + this.tam) {
      this.hover = true;
    } else {
      this.hover = false;
    }

    if (this.hover == true) {
      if (mousePressed) {
        this.hover = false;
      }
    }
  }

  void accion(int id) {
    switch(id) {
    case 0:
      println(juego.estado);
      //PASAR A ESTADO 1
      juego.estado = 1;
      break;
    default:
      break;
    }
  }
}
