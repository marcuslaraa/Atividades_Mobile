import 'package:nav_telas/main.dart';
import 'package:nav_telas/widget/aula_09.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const MyHomePage()),
    GoRoute(
      path: '/aula09',
      builder: (context, state) {
        final args = state.extra as Map<String, dynamic>?;
        final usuario = args?['usuário'] ?? '';
        return Aula09(usuario: usuario);
      },
    ),
  ],
);
