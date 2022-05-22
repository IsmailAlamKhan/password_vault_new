import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/breakpoints.dart';
import '../../../shared/controllers/current_user.dart';
import '../../../shared/event_bus.dart';
import '../../../shared/events/events.dart';
import '../../login/view/login_view.dart';
import '../../password_form/view/password_form_view.dart';
import '../../passwords/passwords.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});
  static const path = '/';

  static GoRoute route(Ref ref) {
    return GoRoute(
      path: path,
      builder: (context, state) => const HomeView(),
      redirect: (state) {
        final currentUserState = ref.read(currentUserControllerProvider);
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
    final selectedPassword = useState<int?>(null);
    useEffect(() {
      final subscription = ref.watch(eventBusProvider).on<PasswordDeleteEvent>((event) {
        if (event.id == selectedPassword.value) {
          selectedPassword.value = null;
        }
      });
      return subscription.cancel;
    }, []);
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
      body: LayoutBuilder(builder: (context, constraints) {
        final isSmallScreen = Breakpoints.isSmallScreen(constraints);
        if (isSmallScreen) {
          return const PasswordView(isFullScreen: true);
        } else {
          return Row(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 300),
                child: PasswordView(onPasswordSelected: (id) => selectedPassword.value = id),
              ),
              if (selectedPassword.value != null)
                Expanded(
                  child: PasswordForm(
                    initialId: selectedPassword.value == 0 ? null : selectedPassword.value,
                  ),
                ),
            ],
          );
        }
      }),
    );
  }
}
