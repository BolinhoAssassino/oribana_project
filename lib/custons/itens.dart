class VasosDiagramas {
  List<String> lista;

  VasosDiagramas(this.lista);
}

class VasosIndexados {
  String titulo;
  String ImageLocal;
  String tituloDescricao;
  String Descricao;
  String VideoLink;
  List<String> instrucoresDiagrama;

  VasosDiagramas diagramas = VasosDiagramas([]);

  VasosIndexados(this.titulo, this.ImageLocal, this.tituloDescricao,
      this.Descricao, this.VideoLink, this.instrucoresDiagrama);


  @override
  String toString() {
    return 'VasosIndexados{titulo: $titulo}';
  }
}