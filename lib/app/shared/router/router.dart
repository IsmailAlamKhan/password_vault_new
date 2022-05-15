import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../features/home/view/home_view.dart';
import '../../features/login/login.dart';
import '../../features/signup/signup.dart';
import '../controllers/current_user.dart';

final appRouterProvider = Provider(
  (ref) {
    final router = GoRouter(
      refreshListenable: GoRouterRefreshStateNotifier(
        ref.read(currentUserControllerProvider.notifier),
      ),
      routes: [
        HomeView.route(ref),
        LoginView.route(ref),
        SignupView.route,
      ],
    );
    return router;
  },
);

class GoRouterRefreshStateNotifier extends ChangeNotifier {
  late final RemoveListener _removeListener;

  GoRouterRefreshStateNotifier(StateNotifier stateNotifier) {
    _removeListener = stateNotifier.addListener((_) => notifyListeners());
  }

  @override
  void dispose() {
    _removeListener();
    super.dispose();
  }
}
