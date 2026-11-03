import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/features/movies/presentation/discover/widgets/trending_movies_section.dart';

class const DiscoverPage({super.key}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(appBar: buildAppBar(), body: buildBody(ref));
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(title: Text("Discover"));
  }

  Widget buildBody(WidgetRef ref) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.s16),
      child: Column(
        spacing: AppSpacing.s24,
        crossAxisAlignment: .stretch,
        children: [TrendingMoviesSection()],
      ),
    );
  }
}
