import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/controllers/current_user.dart';
import '../../../shared/event_bus.dart';
import '../../../shared/events/events.dart';
import '../../login/view/login_view.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);
  static const path = '/';

  static GoRoute route(Ref ref) {
    final currentUserState = ref.read(currentUserControllerProvider);
    return GoRoute(
      path: path,
      builder: (context, state) => const HomeView(),
      redirect: (state) {
        final isLoggedIn = currentUserState.whenOrNull(authenticated: (_) => true) ?? false;
        if (!isLoggedIn) {
          return LoginView.path;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(currentUserProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome ${user?.username}'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => ref.read(eventBusProvider).emit(LogoutEvent()),
          ),
        ],
      ),
    );
  }
}
