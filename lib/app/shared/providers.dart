import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:palette_generator/palette_generator.dart';

import 'models/password_codegen.dart';
import 'services/services.dart';

final passwordByUserProvider = StreamProvider.autoDispose.family<List<PasswordData>, String>(
  (ref, uid) => ref.watch(passwordServiceProvider).byUserId(uid),
);

final passwordByIdProvider = FutureProvider.autoDispose.family<PasswordData, int>(
  (ref, id) => ref.watch(passwordServiceProvider).byId(id),
);

final passwordProvidersProvider = FutureProvider<List<PasswordProvider>>(
  (ref) => ref.watch(passwordServiceProvider).getProviders(),
);

final colorFromNetworkImageProvider = FutureProvider.family.autoDispose<PaletteGenerator, String>(
  (_, image) {
    return PaletteGenerator.fromImageProvider(
      NetworkImage(image),
      maximumColorCount: 20,
    );
  },
);

final colorFromAssetImageProvider = FutureProvider.family.autoDispose<PaletteGenerator, String>(
  (_, image) {
    return PaletteGenerator.fromImageProvider(
      AssetImage(image),
      maximumColorCount: 20,
    );
  },
);
