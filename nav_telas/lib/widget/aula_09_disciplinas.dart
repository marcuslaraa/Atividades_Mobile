import 'package:flutter/material.dart';
import 'package:nav_telas/classes/disciplina.dart';
import 'package:nav_telas/widget/disciplina_card.dart';

class Aula09Disciplinas extends StatelessWidget {
  Aula09Disciplinas({super.key});

  final List<Disciplina> disciplinas = Disciplina.gerarDisciplinas();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: disciplinas.length,
      itemBuilder: (context, index) {
        return DisciplinaCard(disciplina: disciplinas[index]);
      },
    );
  }
}
