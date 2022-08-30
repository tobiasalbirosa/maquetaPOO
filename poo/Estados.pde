class Estados {

  int estadoID = 0;

  String estado = "intro";

  Estados() {
  }

  void actualizarEstado(int estado) {
    this.estadoID = estado;
  }

  int devolverEstado() {
    return this.estadoID;
  }
}
