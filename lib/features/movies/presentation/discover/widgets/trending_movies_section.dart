import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/core/widgets/empty_state_view.dart';
import 'package:moviex/core/widgets/error_view.dart';
import 'package:moviex/core/widgets/movie_card.dart';
import 'package:moviex/core/widgets/skeleton_loader/list_skeleton_loader.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/entities/trending_filter.dart';
import 'package:moviex/features/movies/presentation/discover/providers/trending_movies_provider.dart';

class TrendingMoviesSection extends ConsumerStatefulWidget {
  final ValueChanged<int> onMovieTap;

  const TrendingMoviesSection({super.key, required this.onMovieTap});

  @override
  ConsumerState<TrendingMoviesSection> createState() =>
      _TrendingMoviesSectionState();
}

class _TrendingMoviesSectionState extends ConsumerState<TrendingMoviesSection>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  TrendingFilter _filter = TrendingFilter.day;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: TrendingFilter.values.length,
      vsync: this,
      initialIndex: _filter.index,
    );
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) return;
      final newFilter = TrendingFilter.values[_tabController.index];
      if (newFilter == _filter) return;
      setState(() => _filter = newFilter);
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: AppSpacing.s16,
      crossAxisAlignment: .start,
      children: [_buildTitle(), _buildListView()],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s16),
      child: Row(
        spacing: AppSpacing.s16,
        children: [
          Text("В тренде", style: AppTextStyles.titleLarge),
          Flexible(
            child: TabBar(
              controller: _tabController,
              tabs: TrendingFilter.values
                  .map((e) => Tab(text: e.label))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView() {
    final moviesAsync = ref.watch(trendingMoviesProvider(_filter));
    return SizedBox(
      height: 250,
      child: moviesAsync.when(
        data: (List<Movie> data) => data.isEmpty
            ? const EmptyStateView(message: "Nothing found")
            : ListView.separated(
                scrollDirection: .horizontal,
                itemBuilder: (context, index) => MovieCard(
                  movie: data[index],
                  onTap: () => widget.onMovieTap(data[index].id),
                  width: 140,
                ),
                separatorBuilder: (_, _) =>
                    const SizedBox(width: AppSpacing.s12),
                itemCount: data.length,
                padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s16),
              ),
        error: (Object error, StackTrace stackTrace) {
          final errorString = error is FailureException
              ? error.failure.message
              : error.toString();
          return ErrorView(message: errorString);
        },
        loading: () => const ListSkeletonLoader(),
      ),
    );
  }
}
