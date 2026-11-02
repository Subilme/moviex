import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/app/router/app_router.dart';
import 'package:moviex/core/theme/app_theme.dart';

class const Application({super.key}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: "MovieX",
      routerConfig: router,
      theme: appTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
