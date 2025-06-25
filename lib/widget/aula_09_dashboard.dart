import 'package:flutter/material.dart';
import 'dart:math';
import 'package:nav_telas/classes/disciplina.dart';

class Aula09Dashboard extends StatelessWidget {
  const Aula09Dashboard({required this.usuario, super.key});

  final String usuario;

  @override
  Widget build(BuildContext context) {
    final List<Disciplina> disciplinas = Disciplina.gerarDisciplinas();
    final random = Random();
    final Disciplina sugestaoDisciplina =
        disciplinas[random.nextInt(disciplinas.length)];

    return PopScope(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem vindo $usuario!', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            Text(
              'Segestão de disciplina:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              'Curso: ${sugestaoDisciplina.nome}',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Professor: ${sugestaoDisciplina.professor}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
