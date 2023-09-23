// Cria classe chamada Alimento
class Alimento {
  String nome;
  double peso;
  String sabor;

  Alimento(this.nome, this.peso, this.sabor);
}

class Fruta extends Alimento implements Descascar {
  Fruta(String nome, double peso, String sabor) : super(nome, peso, sabor);
  bool isMadura = false;
  void frutaMadura(isMadura) {
    if (isMadura == true) {
      print("A fruta $nome está madura");
    } else {
      print("A fruta $nome não está madura");
    }
  }

  @override
  void separarTalheres() {
    print("Separando talheres ");
  }

  @override
  void pegarVasilha() {
    print("Pegando vasilha para colocar a fruta $nome");
  }

  @override
  void comerFruta() {
    print("Pronto a fruta $nome está pronta para comer ");
  }
}

class Legumes extends Alimento implements Descascar {
  bool? precisaCozinhar;
  Legumes(String nome, double peso, String sabor) : super(nome, peso, sabor);
  void Cozinhar(precisaCozinhar) {
    if (precisaCozinhar == true) {
      print("O legumes $nome precisa Cozinhar");
    } else {
      print("O legumes $nome não precisa Cozinhar");
    }
  }

  @override
  void separarTalheres() {
    print("Pegando a faca para descascar o legumes $nome");
  }

  @override
  void pegarVasilha() {
    print("Pegando vasilha para colocar o legumes $nome");
  }

  @override
  void comerFruta() {
    print("O legumes $nome está pronto para comer");
  }
}

abstract class Descascar {
// criar metodos
  void separarTalheres();

  void pegarVasilha();

  void comerFruta();
}

void main() {
  // Cria objeto chamado laranja
  Fruta Laranja = Fruta("Laranja", 100, "Doce");
  Laranja.frutaMadura(true);
  Laranja.separarTalheres();
  Laranja.pegarVasilha();
  Laranja.comerFruta();
  Legumes Beterraba = Legumes("Beterraba", 200, "Doce");
  Beterraba.Cozinhar(true);
  Beterraba.separarTalheres();
}