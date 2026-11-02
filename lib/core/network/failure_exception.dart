import 'package:moviex/core/network/failures.dart';

class FailureException implements Exception {
  const FailureException(this.failure);

  final Failure failure;

  @override
  String toString() => failure.message;
}
