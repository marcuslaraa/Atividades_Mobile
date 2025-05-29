import 'package:flutter/material.dart';

class TipoLogin extends StatefulWidget {
  final List<bool> tipoLogin;
  final Function(int) onPressed;

  const TipoLogin({
    super.key,
    required this.tipoLogin,
    required this.onPressed,
  });

  @override
  State<TipoLogin> createState() => _TipoLoginState();
}

class _TipoLoginState extends State<TipoLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('Logar com'),
        SizedBox(width: 8),
        ToggleButtons(
          isSelected: widget.tipoLogin,
          onPressed: widget.onPressed,
          borderRadius: BorderRadius.circular(10),
          borderColor: Colors.amberAccent,
          selectedBorderColor: Colors.amber,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('E-mail'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('CPF'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Telefone'),
            ),
          ],
        ),
      ],
    );
  }
}
