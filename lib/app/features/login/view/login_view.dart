import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/formz/formz.dart';
import '../../../shared/widgets/widgets.dart';
import '../../signup/view/signup_view.dart';
import '../login_controller.dart';

class LoginView extends ConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  static const path = '/login';

  static GoRoute get route => GoRoute(path: path, builder: (context, state) => const LoginView());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginControllerProvider);
    final controller = ref.watch(loginControllerProvider.notifier);
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppTextFormField<Username>(
                      label: 'Username',
                      formzInput: state.username,
                      onChanged: controller.changeUsername,
                    ),
                    const SizedBox(height: 20),
                    AppTextFormField(
                      label: 'Password',
                      type: TextFieldType.password,
                      formzInput: state.password,
                      onChanged: controller.changePassword,
                    ),
                    const SizedBox(height: 20),
                    // TextButton(onPressed: onPressed, child: ),
                    Text.rich(
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

                    const SizedBox(height: 20),
                    FilledTonalButton(
                      onPressed: () {},
                      child: const Text('Login'),
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
