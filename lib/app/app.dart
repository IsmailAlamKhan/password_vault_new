import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'shared/router/router.dart';
import 'shared/theme/theme.dart';

class PasswordVaultApp extends HookWidget {
  const PasswordVaultApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settings = useState(
      ThemeSettings(themeMode: ThemeMode.system, sourceColor: seedColor),
    );
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => ThemeProvider(
        lightDynamic: lightDynamic,
        darkDynamic: darkDynamic,
        settings: settings.value,
        child: NotificationListener<ThemeSettingChange>(
          onNotification: (notification) {
            settings.value = notification.settings;
            return true;
          },
          child: Builder(builder: (context) {
            final theme = ThemeProvider.of(context);

            return MaterialApp.router(
              routerDelegate: appRouter.routerDelegate,
              routeInformationParser: appRouter.routeInformationParser,
              title: 'Flutter Demo',
              theme: theme.light(),
              darkTheme: theme.dark(),
              themeMode: theme.themeMode(),
            );
          }),
        ),
      ),
    );
  }
}
