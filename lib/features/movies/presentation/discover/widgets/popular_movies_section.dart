import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/core/widgets/empty_state_view.dart';
import 'package:moviex/core/widgets/error_view.dart';
import 'package:moviex/core/widgets/movie_card.dart';
import 'package:moviex/core/widgets/skeleton_loader/list_skeleton_loader.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/presentation/discover/providers/popular_movies_notifier.dart';

class PopularMoviesSection extends ConsumerWidget {
  final ValueChanged<int> onMovieTap;

  const PopularMoviesSection({super.key, required this.onMovieTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      spacing: AppSpacing.s16,
      crossAxisAlignment: .start,
      children: [_buildTitle(), _buildListView(ref)],
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s16),
      child: Row(
        spacing: AppSpacing.s16,
        children: [
          Expanded(
            child: Text("Что популярно", style: AppTextStyles.titleLarge),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Посмотреть все",
              style: AppTextStyles.body.copyWith(color: AppColors.textPrimary),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView(WidgetRef ref) {
    final moviesAsync = ref.watch(popularMoviesProvider);
    return SizedBox(
      height: 250,
      child: moviesAsync.when(
        data: (List<Movie> data) => data.isEmpty
            ? const EmptyStateView(message: "Nothing found")
            : ListView.separated(
                scrollDirection: .horizontal,
                itemBuilder: (context, index) => MovieCard(
                  movie: data[index],
                  onTap: () => onMovieTap(data[index].id),
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
