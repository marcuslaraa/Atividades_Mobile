class Produto {
  late int id;
  late String nome;
  late double preco;

  Produto({required this.id, required this.nome, required this.preco});

  static List<Produto> gerarLista() {
    return [
      Produto(id: 1, nome: "Produto 1", preco: 10.50),
      Produto(id: 2, nome: "Produto 2", preco: 15.20),
      Produto(id: 3, nome: "Produto 3", preco: 18.50),
      Produto(id: 4, nome: "Produto 4", preco: 9.40),
      Produto(id: 5, nome: "Produto 5", preco: 3.40),
      Produto(id: 6, nome: "Produto 6", preco: 14.10),
      Produto(id: 7, nome: "Produto 7", preco: 20.10),
      Produto(id: 8, nome: "Produto 8", preco: 10.90),
      Produto(id: 9, nome: "Produto 9", preco: 6.50),
      Produto(id: 10, nome: "Produto 10", preco: 4.20),
      Produto(id: 11, nome: "Produto 11", preco: 8.35),
      Produto(id: 12, nome: "Produto 12", preco: 5.55),
      Produto(id: 13, nome: "Produto 13", preco: 16.45),
      Produto(id: 14, nome: "Produto 14", preco: 7.20),
    ];
  }
}
