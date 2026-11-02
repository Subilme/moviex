import 'package:moviex/core/network/result.dart';
import 'package:moviex/features/account/domain/entities/rated_movie.dart';
import 'package:moviex/features/account/domain/entities/user.dart';

abstract interface class AccountRepository {
  Future<Result<User>> getUser();

  Future<Result<List<RatedMovie>>> getRated();
}
