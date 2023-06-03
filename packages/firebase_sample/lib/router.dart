import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'feature/entry/ui/entry_page.dart';
import 'main.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _key,
    debugLogDiagnostics: true,
    initialLocation: '/',
    routes: $appRoutes,
      observers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ]
  );
});

@TypedGoRoute<EntryRoute>(
  path: '/',
  name: 'Entry',
)
class EntryRoute extends GoRouteData {
  const EntryRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const EntryPage();
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
