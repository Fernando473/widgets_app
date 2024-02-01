import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      name: HomeScreen.name,
      path: "/",
      builder: (context, state) => const HomeScreen()),
  GoRoute(
      name: ButtonsScreen.name,
      path: "/buttons",
      builder: (context, state) => const ButtonsScreen(
            step: 'hello',
          )),
  GoRoute(
      name: CardScreen.name,
      path: "/cards",
      builder: (context, state) => const CardScreen())
]);
