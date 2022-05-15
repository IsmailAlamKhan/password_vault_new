import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app/app.dart';
import 'app/shared/controllers/current_user.dart';
import 'app/shared/db/service.dart';
import 'app/shared/logger.dart';
import 'app/shared/services/local_storage.dart';

Future<void> main() async {
  final container = await _init();
  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const PasswordVaultApp(),
    ),
  );
}

Future<ProviderContainer> _init() async {
  final container = ProviderContainer();
  await container.read(localStorageProvider).init();
  await container.read(dbServiceProvider).init();
  await container.read(currentUserControllerProvider.notifier).getInitialUser();
  AppLogger.init();
  return container;
}
