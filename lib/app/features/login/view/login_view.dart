import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/controllers/current_user.dart';
import '../../../shared/formz/formz.dart';
import '../../../shared/widgets/widgets.dart';
import '../../home/home.dart';
import '../../signup/view/signup_view.dart';
import '../login_controller.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  static const path = '/login';

  static GoRoute route(Ref ref) {
    return GoRoute(
      path: path,
      builder: (context, state) => const LoginView(),
      redirect: (state) {
        final currentUserState = ref.read(currentUserControllerProvider);
        final isLoggedIn = currentUserState.whenOrNull(authenticated: (_) => true) ?? false;
        if (isLoggedIn) {
          return HomeView.path;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);
    final controller = ref.watch(loginControllerProvider.notifier);
    return AutofillGroup(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Card(
                child: ListView(
                  padding: const EdgeInsets.all(10.0),
                  shrinkWrap: true,
                  children: [
                    AppTextFormField<Email>(
                      formzInput: state.email,
                      onChanged: controller.changeEmail,
                      autofillHints: const [AutofillHints.email],
                    ),
                    const SizedBox(height: 20),
                    AppTextFormField(
                      type: TextFieldType.password,
                      formzInput: state.password,
                      onChanged: controller.changePassword,
                      autofillHints: const [AutofillHints.password],
                      onSubmitted: (_) => controller.submit(),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: "Don't have an account?",
                          children: [
                            TextSpan(
                              text: ' Sign up',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => GoRouter.of(context).go(SignupView.path),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: FilledTonalButton(
                        onPressed: state.isSubmitting ? null : controller.submit,
                        child: state.isSubmitting
                            ? const SizedBox.square(
                                dimension: 20,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Text('Login'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
