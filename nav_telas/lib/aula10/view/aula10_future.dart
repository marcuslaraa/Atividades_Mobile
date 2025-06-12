import 'package:flutter/material.dart';
import 'package:nav_telas/aula10/widgets/carregamento_widget.dart';
import 'package:nav_telas/aula10/widgets/disciplina_tile_widget.dart';
import 'package:nav_telas/classes/disciplina.dart';

class Aula10Future extends StatefulWidget {
  const Aula10Future({super.key});

  @override
  State<Aula10Future> createState() => _Aula10FutureState();
}

class _Aula10FutureState extends State<Aula10Future> {
  Future<List<Disciplina>> carregarDisciplina() async {
    List<Disciplina> disciplinas = Disciplina.gerarDisciplinas();
    await Future.delayed(const Duration(seconds: 5));
    return disciplinas;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: carregarDisciplina(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.done:
                if (snapshot.hasError || !snapshot.hasData) {
                  return const Text('Houve um erro no carregamento');
                }

                List<Disciplina> disciplinas =
                    snapshot.data as List<Disciplina>;
                return ListView.builder(
                  itemCount: disciplinas.length,
                  itemBuilder:
                      (context, index) =>
                          DisciplinaTileWidget(disciplina: disciplinas[index]),
                );

              default:
                return const CarregamentoWidget();
            }
          },
        ),
      ),
    );
  }
}
