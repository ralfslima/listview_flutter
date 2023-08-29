import 'Produto.dart';

class ListaProdutos {
  // Vetor de produtos
  static final List<Produto> produtos = [];

  // Construtor
  ListaProdutos() {
    // Instanciar objetos
    Produto p1 = Produto();
    p1.nome = "MacBook Air 2023";
    p1.valor = 5000;

    Produto p2 = Produto();
    p2.nome = "TV Samsung 32 polegadas";
    p2.valor = 2800;

    Produto p3 = Produto();
    p3.nome = "Notebook Dell Inspiron";
    p3.valor = 3400;

    // Cadastrar todos os produtos
    produtos.addAll([p1, p2, p3]);
  }
}
