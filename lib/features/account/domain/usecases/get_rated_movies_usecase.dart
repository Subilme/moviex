import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/data/repositories/account_repository_impl.dart';
import 'package:moviex/features/account/domain/entities/rated_movie.dart';
import 'package:moviex/features/account/domain/repositories/account_repository.dart';

final ratedProvider = FutureProvider.autoDispose<List<RatedMovie>>((
  Ref ref,
) async {
  final usecase = ref.watch(getRatedMoviesUsecaseProvider);
  final result = await usecase();
  return result.when(
    success: (list) => list,
    error: (failure) => throw FailureException(failure),
  );
});

final getRatedMoviesUsecaseProvider =
    Provider.autoDispose<GetRatedMoviesUsecase>((Ref ref) {
      final repository = ref.watch(accountRepositoryProvider);
      return GetRatedMoviesUsecase(repository);
    });

class GetRatedMoviesUsecase {
  GetRatedMoviesUsecase(this._repository);
  final AccountRepository _repository;

  Future<Result<List<RatedMovie>>> call() => _repository.getRated();
}
