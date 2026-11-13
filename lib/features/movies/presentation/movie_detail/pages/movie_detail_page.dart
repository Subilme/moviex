import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/widgets/error_view.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/presentation/movie_detail/providers/movie_detail_provider.dart';
import 'package:moviex/features/movies/presentation/movie_detail/widgets/movie_detail_actions.dart';
import 'package:moviex/features/movies/presentation/movie_detail/widgets/movie_detail_cast_crew_list.dart';
import 'package:moviex/features/movies/presentation/movie_detail/widgets/movie_detail_header.dart';
import 'package:moviex/features/movies/presentation/movie_detail/widgets/movie_info_section.dart';
import 'package:moviex/features/movies/presentation/movie_detail/widgets/movie_overview.dart';

class MovieDetailPage extends ConsumerStatefulWidget {
  final int movieId;

  const MovieDetailPage({super.key, required this.movieId});

  @override
  ConsumerState<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends ConsumerState<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody());
  }

  Widget buildBody() {
    final movieAsync = ref.watch(movieDetailNotifierProvider(widget.movieId));
    return SafeArea(
      child: movieAsync.when(
        data: _buildContent,
        error: (error, _) {
          final errorString = error is FailureException
              ? error.failure.message
              : error.toString();
          return ErrorView(
            message: errorString,
            onRetry: () => ref
                .read(movieDetailNotifierProvider(widget.movieId).notifier)
                .refresh(),
          );
        },
        loading: () => Center(child: const CircularProgressIndicator()),
      ),
    );
  }

  Widget _buildContent(Movie data) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.viewPaddingOf(context).bottom + 16,
      ),
      child: Column(
        spacing: 16,
        children: [
          MovieDetailHeader(
            movie: data,
            onTapBack: context.pop,
            onTapBookmark: () {},
          ),
          MovieOverview(movie: data),
          MovieDetailActions(movie: data),
          MovieInfoSection(movie: data),
          MovieDetailCastCrewList(movie: data),
        ],
      ),
    );
  }
}
