import 'package:go_router/go_router.dart';

import '../../features/home/view/home_view.dart';
import '../../features/login/login.dart';
import '../../features/signup/signup.dart';

final appRouter = GoRouter(
  redirect: (state) {
    return;
  },
  routes: [
    HomeView.route,
    LoginView.route,
    SignupView.route,
  ],
);
