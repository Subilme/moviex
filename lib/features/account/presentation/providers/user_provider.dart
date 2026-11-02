import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/network/failure_exception.dart';
import 'package:moviex/core/network/failures.dart';
import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/domain/entities/user.dart';
import 'package:moviex/features/account/domain/usecases/get_user_usecase.dart';

final userNotifierProvider =
    AsyncNotifierProvider.autoDispose<UserNotifier, User>(UserNotifier.new);

class UserNotifier() extends AsyncNotifier<User> {
  @override
  FutureOr<User> build() {
    return fetchUser();
  }

  Future<User> fetchUser() async {
    final usecase = ref.read(getUserUsecaseProvider);
    final response = await usecase();
    return response.when(
      success: (User data) => data,
      error: (Failure failure) => throw FailureException(failure),
    );
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(fetchUser);
  }
}
