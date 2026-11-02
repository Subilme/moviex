import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/core/widgets/error_view.dart';
import 'package:moviex/core/widgets/movie_card.dart';
import 'package:moviex/features/account/presentation/providers/favorites_notifier.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';

class FavoriteList extends ConsumerWidget {
  const FavoriteList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesAsync = ref.watch(favoritesNotifierProvider);
    return moviesAsync.when(
      data: (Map<int, Movie> data) => data.isEmpty
          ? const SizedBox()
          : Column(
              spacing: AppSpacing.s16,
              crossAxisAlignment: .start,
              children: [_buildTitle(), _buildListView(data.values.toList())],
            ),
      error: (Object error, StackTrace stackTrace) {
        final errorString = error is FailureException
            ? error.failure.message
            : error.toString();
        return ErrorView(message: errorString);
      },
      loading: () => const SizedBox(),
    );
  }

  Widget _buildTitle() {
    return Text("Избранное", style: AppTextStyles.titleLarge);
  }

  Widget _buildListView(List<Movie> data) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: .horizontal,
        itemBuilder: (context, index) =>
            MovieCard(movie: data[index], width: 140),
        separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.s12),
        itemCount: data.length,
      ),
    );
  }
}
