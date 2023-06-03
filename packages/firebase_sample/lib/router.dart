import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: $appRoutes,
  );
});

@TypedGoRoute<HomeRoute>(
  path: '/',
  name: 'Home',
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const _DummyHome();
}

class _DummyHome extends StatelessWidget {
  const _DummyHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('dummy home'),
      ),
    );
  }
}
