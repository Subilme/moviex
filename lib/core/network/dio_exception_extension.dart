import 'package:dio/dio.dart';
import 'package:moviex/core/network/failures.dart';

extension DioExceptionExtension on DioException {
  Failure toFailure() => switch (type) {
    DioExceptionType.connectionTimeout ||
    DioExceptionType.sendTimeout ||
    DioExceptionType.receiveTimeout ||
    DioExceptionType.connectionError => const NetworkFailure(),
    DioExceptionType.badResponse => switch (response?.statusCode) {
      401 => const UnauthorizedFailure(),
      404 => const NotFoundFailure(),
      429 => const RateLimitFailure(),
      _ => ServerFailure(response?.statusMessage ?? 'Server error'),
    },
    _ => const UnknownFailure(),
  };
}
