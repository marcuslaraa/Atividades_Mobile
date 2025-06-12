import 'package:flutter/material.dart';

class CarregamentoWidget extends StatelessWidget {
  const CarregamentoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Carregando...'),
        SizedBox(height: 16),
        CircularProgressIndicator(),
      ],
    );
  }
}
