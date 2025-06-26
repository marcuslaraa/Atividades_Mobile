import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:nav_telas/aula12/model/produto.dart';

class CarrinhoModel extends ChangeNotifier {
  final List<Produto> _lista = [];

  UnmodifiableListView<Produto> get produtos => UnmodifiableListView(_lista);

  double get valorTotal {
    double vlTotal = 0;
    //implementar
    for (Produto item in _lista) {
      vlTotal += item.preco;
    }
    return vlTotal;
  }

  int get numProdutos => _lista.length;

  void adicionar(Produto p) {
    _lista.add(p);
    notifyListeners();
  }

  void remover(Produto p) {
    _lista.remove(p);
    notifyListeners();
  }

  void limpar() {
    _lista.clear();
    notifyListeners();
  }

  bool adicionado(Produto p) {
    return _lista.any((element) => element.id == p.id);
  }
}
