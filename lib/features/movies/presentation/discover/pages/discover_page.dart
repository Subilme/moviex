import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/features/movies/presentation/discover/widgets/popular_movies_section.dart';
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
    return CustomScrollView(
      slivers: [
        SliverGap(16),
        SliverToBoxAdapter(child: TrendingMoviesSection()),
        SliverGap(24),
        SliverToBoxAdapter(child: PopularMoviesSection()),
        SliverGap(16),
      ],
    );
  }
}
