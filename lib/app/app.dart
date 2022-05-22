import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'shared/event_bus.dart';
import 'shared/events/navigation_codegen.dart';
import 'shared/router/router.dart';
import 'shared/theme/theme.dart';

class PasswordVaultApp extends HookConsumerWidget {
  const PasswordVaultApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            final appRouter = ref.watch(appRouterProvider);
            return MaterialApp.router(
              routerDelegate: appRouter.routerDelegate,
              routeInformationParser: appRouter.routeInformationParser,
              title: 'Flutter Demo',
              builder: (_, child) => NavigatorListener(child: child!),
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

class NavigatorListener extends HookConsumerWidget {
  const NavigatorListener({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(appRouterProvider);
    final eventBus = ref.watch(eventBusProvider);
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    useEffect(() {
      final subscription = eventBus.on<NavigationEvent>((event) {
        event.when(
          go: (page, extra) => router.go(page, extra: extra),
          push: (page, extra) => router.push(page, extra: extra),
          pop: router.pop,
          dialog: (builder) {
            final navigator = router.navigator;
            showDialog(context: navigator!.context, builder: builder);
          },
          snackbar: (snackbar) {
            scaffoldMessenger
              ..hideCurrentSnackBar()
              ..showSnackBar(snackbar);
          },
        );
      });
      return subscription.cancel;
    }, []);
    return child;
  }
}
