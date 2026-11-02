import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/app/widgets/app_scaffold.dart';
import 'package:moviex/features/account/presentation/routes/profile_routes.dart';
import 'package:moviex/features/movies/presentation/routes/movies_routes.dart';

final routerProvider = Provider.autoDispose((Ref ref) {
  final navigationShellRoute = StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) =>
        AppScaffold(navigationShell: navigationShell),
    branches: [
      StatefulShellBranch(
        navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellDiscover'),
        routes: [$discoverRoute],
      ),
      // StatefulShellBranch(
      //   navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellFinance'),
      //   routes: [$financeRoute],
      // ),
      StatefulShellBranch(
        navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'shellProfile'),
        routes: [$profileRoute],
      ),
    ],
  );

  final GoRouter router = GoRouter(
    initialLocation: const DiscoverRoute().location,
    routes: [navigationShellRoute],
  );

  ref.onDispose(router.dispose);
  return router;
});
