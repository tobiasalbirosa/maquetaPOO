Juego juego;
void setup() {
  juego = new Juego();
  size(400, 400);
}

void draw() {
  juego.draw();
}
void mouseMoved(){
  juego.mouseMoved();
}
void mouseClicked(){
  juego.mouseClicked();
}
