import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'models/password_codegen.dart';
import 'services/services.dart';

final passwordDataProvider = FutureProvider.autoDispose.family<List<PasswordData>, String>(
  (ref, uid) => ref.watch(passwordServiceProvider).byUserId(uid),
);
