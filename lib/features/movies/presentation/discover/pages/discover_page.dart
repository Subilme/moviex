import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/features/movies/presentation/discover/widgets/popular_movies_section.dart';
import 'package:moviex/features/movies/presentation/discover/widgets/trending_movies_section.dart';
import 'package:moviex/features/movies/presentation/routes/movies_routes.dart';

class const DiscoverPage({super.key}) extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(appBar: buildAppBar(), body: buildBody(context, ref));
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(title: Text("Discover"));
  }

  Widget buildBody(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverGap(16),
        SliverToBoxAdapter(
          child: TrendingMoviesSection(
            onMovieTap: (id) => MovieDetailRoute(id).push(context),
          ),
        ),
        SliverGap(24),
        SliverToBoxAdapter(
          child: PopularMoviesSection(
            onMovieTap: (id) => MovieDetailRoute(id).push(context),
          ),
        ),
        SliverGap(16),
      ],
    );
  }
}
