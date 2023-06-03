// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $entryRoute,
    ];

RouteBase get $entryRoute => GoRouteData.$route(
      path: '/',
      name: 'Entry',
      factory: $EntryRouteExtension._fromState,
    );

extension $EntryRouteExtension on EntryRoute {
  static EntryRoute _fromState(GoRouterState state) => const EntryRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}
