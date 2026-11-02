import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker_flutter/talker_flutter.dart';

final talkerProvider = Provider<Talker>((Ref ref) {
  throw UnimplementedError();
});

final sharedPreferencesProvider = Provider<SharedPreferences>((Ref ref) {
  throw UnimplementedError();
});

final secureStorageProvider = Provider<FlutterSecureStorage>((Ref ref) {
  return const FlutterSecureStorage();
});

final hiveBoxProvider = Provider<Box>((Ref ref) {
  throw UnimplementedError();
});
