import 'package:flutter/material.dart';
import 'package:nav_telas/aula12/model/carrinho_model.dart';
import 'package:nav_telas/aula12/model/produto.dart';
import 'package:nav_telas/aula12/view/pedido_view.dart';
import 'package:provider/provider.dart';

class CardapioView extends StatelessWidget {
  const CardapioView({super.key});

  @override
  Widget build(BuildContext context) {
    var carrinho = context.watch<CarrinhoModel>();

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: InkWell(
              onTap: () {
                if (carrinho.numProdutos > 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PedidoView()),
                  );
                }
              },
              child: Badge(
                label: Text('${carrinho.numProdutos}'),
                isLabelVisible: carrinho.numProdutos > 0,
                child: const Icon(Icons.shopping_cart),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              onPressed: () {
                if (carrinho.produtos.isNotEmpty) {
                  carrinho.limpar();
                }
              },
              icon: Icon(Icons.delete),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Produto.gerarLista().length,
        itemBuilder: (context, index) {
          var prod = Produto.gerarLista()[index];
          return ListTile(
            title: Text(prod.nome),
            subtitle: Text(prod.preco.toStringAsFixed(2)),
            trailing:
                !carrinho.adicionado(prod)
                    ? IconButton(
                      onPressed: () {
                        carrinho.adicionar(prod);
                      },
                      icon: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.add),
                      ),
                    )
                    : const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.check),
                    ),
          );
        },
      ),
    );
  }
}
