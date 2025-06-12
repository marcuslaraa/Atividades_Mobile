import 'package:flutter/material.dart';

class Aula10 extends StatefulWidget {
  const Aula10({super.key});

  @override
  State<Aula10> createState() => _Aula10State();
}

class _Aula10State extends State<Aula10> {
  void nomeFuncao() async {
    await Future.delayed(const Duration(seconds: 10));
    debugPrint('Esta linha será executada após 10 segundos');
  }

  Future<void> nomeFuncaoFutureVoid() async {
    await Future.delayed(const Duration(seconds: 15));
    debugPrint('(Future<void> Esta linha será executada após 15 segundos.)');
  }

  void testarVoids() async {
    await nomeFuncaoFutureVoid();
    nomeFuncao();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
