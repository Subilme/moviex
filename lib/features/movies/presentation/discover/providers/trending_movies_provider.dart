import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/movies/domain/entities/movie.dart';
import 'package:moviex/features/movies/domain/entities/trending_filter.dart';
import 'package:moviex/features/movies/domain/usecases/get_trending_movies_usecase.dart';

final trendingMoviesProvider = FutureProvider.autoDispose
    .family<List<Movie>, TrendingFilter>((ref, filter) async {
      final usecase = ref.read(getTrendingMoviesUsecaseProvider);
      final result = await usecase(filter);
      return result.when(
        success: (list) => list,
        error: (failure) => throw FailureException(failure),
      );
    });
