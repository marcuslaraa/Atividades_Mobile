import 'package:flutter/material.dart';
import 'package:nav_telas/widget/aula_09_dashboard.dart';
import 'package:nav_telas/widget/aula_09_disciplinas.dart';
import 'package:go_router/go_router.dart';

class Aula09 extends StatefulWidget {
  final String usuario;
  const Aula09({super.key, required this.usuario});

  @override
  State<Aula09> createState() => _Aula09State();
}

class _Aula09State extends State<Aula09> {
  late int _itemSelecionado = 0;

  @override
  Widget build(BuildContext context) {
    final usuario = widget.usuario;

    Future<void> confirmExit() async {
      final confirm = await showDialog<bool>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirmação'),
            content: Text('Deseja realmente sair?'),
            actions: [
              TextButton(
                // onPressed: () => Navigator.pop(context, true),
                onPressed: () => context.pop(true),
                child: Text('Sim'),
              ),

              TextButton(
                // onPressed: () => Navigator.pop(context, false),
                onPressed: () => context.pop(false),
                child: Text('Não'),
              ),
            ],
          );
        },
      );

      if (confirm == true) {
        // Navigator.pop(context);
        context.pop();
      } else {
        setState(() {
          _itemSelecionado = _itemSelecionado;
        });
      }
    }

    final List<Widget> subtelas = [
      Aula09Dashboard(usuario: usuario),
      Aula09Disciplinas(),
    ];

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {},
      child: Scaffold(
        body: Center(child: subtelas[_itemSelecionado]),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              label: 'Dashboard',
              icon: Icon(Icons.home),
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              label: 'Disciplinas',
              icon: Icon(Icons.menu_open),
            ),
            BottomNavigationBarItem(label: 'Sair', icon: Icon(Icons.logout)),
          ],
          currentIndex: _itemSelecionado,
          onTap: (idx) {
            setState(() {
              if (idx == 2) {
                confirmExit();
              } else {
                _itemSelecionado = idx;
              }
            });
          },
        ),
      ),
    );
  }
}
