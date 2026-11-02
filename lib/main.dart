import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:material_ui/material_ui.dart';
import 'package:moviex/core/app/application.dart';
import 'package:moviex/core/providers/providers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  await Hive.initFlutter();
  final box = await Hive.openBox(
    'something',
    compactionStrategy: (entries, deletedEntries) {
      return (deletedEntries > 30) || (entries > 50);
    },
  );

  final talker = TalkerFlutter.init(
    settings: TalkerSettings(enabled: kDebugMode),
  );

  runApp(
    ProviderScope(
      retry: (_, _) => null,
      observers: [
        TalkerRiverpodObserver(
          talker: talker,
          settings: TalkerRiverpodLoggerSettings(
            enabled: kDebugMode,
            printProviderDisposed: true,
          ),
        ),
      ],
      overrides: [
        talkerProvider.overrideWithValue(talker),
        sharedPreferencesProvider.overrideWithValue(prefs),
        hiveBoxProvider.overrideWithValue(box),
      ],
      child: const Application(),
    ),
  );
}
