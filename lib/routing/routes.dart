import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tag_archiver_app/ui/home/home_view.dart';
import 'package:tag_archiver_app/ui/login_view.dart';

part 'routes.g.dart';

@TypedGoRoute<LoginRoute>(path: "/")
class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const LoginView();
}

@TypedGoRoute<HomeRoute>(path: "/home")
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeView();
}

final router = GoRouter(routes: $appRoutes);
