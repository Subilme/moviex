import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/features/account/presentation/pages/profile_page.dart';

part 'profile_routes.g.dart';

const String _profileRoute = '/profile';

@TypedGoRoute<ProfileRoute>(path: _profileRoute)
class const ProfileRoute() extends GoRouteData with $ProfileRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProfilePage();
  }
}
