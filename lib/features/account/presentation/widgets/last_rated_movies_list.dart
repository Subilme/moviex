import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/theme/app_theme.dart';
import 'package:moviex/core/widgets/error_view.dart';
import 'package:moviex/core/widgets/rating_bar/rating_bar.dart';
import 'package:moviex/features/account/domain/entities/rated_movie.dart';
import 'package:moviex/features/account/domain/usecases/get_rated_movies_usecase.dart';

class LastRatedMoviesList extends ConsumerWidget {
  const LastRatedMoviesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final moviesAsync = ref.watch(ratedProvider);
    return moviesAsync.when(
      data: (List<RatedMovie> data) => data.isEmpty
          ? const SizedBox()
          : Column(
              spacing: AppSpacing.s16,
              crossAxisAlignment: .start,
              children: [_buildTitle(), _buildListView(data)],
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
    return Text("Последние оценки", style: AppTextStyles.titleLarge);
  }

  Widget _buildListView(List<RatedMovie> data) {
    return Column(
      spacing: AppSpacing.s16,
      children: data
          .map(
            (e) => Row(
              spacing: AppSpacing.s12,
              children: [
                Expanded(child: Text(e.movie.title)),
                RatingBarIndicator(
                  rating: e.rating.toDouble(),
                  itemBuilder: (_, _) => Icon(Icons.star, color: Colors.amber),
                  itemSize: 20.0,
                  itemCount: 10,
                  unratedColor: Colors.amber.withAlpha(50),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
