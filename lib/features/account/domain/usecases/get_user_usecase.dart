import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/data/repositories/account_repository_impl.dart';
import 'package:moviex/features/account/domain/entities/user.dart';
import 'package:moviex/features/account/domain/repositories/account_repository.dart';

final getUserUsecaseProvider = Provider.autoDispose<GetUserUsecase>((Ref ref) {
  final repository = ref.watch(accountRepositoryProvider);
  return GetUserUsecase(repository);
});

class GetUserUsecase(this._repository) {
  final AccountRepository _repository;

  Future<Result<User>> call() {
    return _repository.getUser();
  }
}
