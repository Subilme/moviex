import 'package:flutter_riverpod/flutter_riverpod.dart';

final tmdbCredentialsProvider = Provider<TmdbCredentials>((ref) {
  const apiKey = String.fromEnvironment('TMDB_API_KEY');
  const token = String.fromEnvironment('TMDB_AUTH_TOKEN');
  const accountId = int.fromEnvironment('TMDB_ACCOUNT_ID');
  if (token.isEmpty || accountId == 0) {
    throw StateError('Data not found');
  }
  return const TmdbCredentials(
    apiKey: apiKey,
    accessToken: token,
    accountId: accountId,
  );
});

final apiKeyProvider = Provider<String>((ref) {
  return ref.watch(tmdbCredentialsProvider).apiKey;
});

final accessTokenProvider = Provider<String>((ref) {
  return ref.watch(tmdbCredentialsProvider).accessToken;
});

final accountIdProvider = Provider<int>((ref) {
  return ref.watch(tmdbCredentialsProvider).accountId;
});

class const TmdbCredentials({
  required this.apiKey,
  required this.accessToken,
  required this.accountId,
}) {
  final String apiKey;
  final String accessToken;
  final int accountId;
}
