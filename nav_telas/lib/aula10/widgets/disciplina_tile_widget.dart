import 'package:flutter/material.dart';
import 'package:nav_telas/classes/disciplina.dart';

class DisciplinaTileWidget extends StatelessWidget {
  const DisciplinaTileWidget({super.key, required this.disciplina});

  final Disciplina disciplina;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text(disciplina.codigo)],
      ),
      title: Text(disciplina.nome),
      subtitle: Text(disciplina.professor),
    );
  }
}
