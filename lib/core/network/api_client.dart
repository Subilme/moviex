import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moviex/core/providers/providers.dart';
import 'package:moviex/core/providers/tmdb_credentials.dart';
import 'package:talker_dio_logger/talker_dio_logger.dart';

final apiClientProvider = Provider<Dio>((Ref ref) {
  final token = ref.read(accessTokenProvider);
  final apiKey = ref.read(apiKeyProvider);
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3/',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  dio.interceptors.addAll([
    InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters['api_key'] = apiKey;
        options.headers['Authorization'] = "Bearer $token";
        return handler.next(options);
      },
      onError: (e, handler) {
        return handler.next(e);
      },
    ),
    TalkerDioLogger(
      talker: ref.read(talkerProvider),
      settings: TalkerDioLoggerSettings(
        enabled: kDebugMode,
        printResponseHeaders: true,
        printResponseTime: true,
        printRequestHeaders: true,
      ),
    ),
  ]);

  return dio;
});
