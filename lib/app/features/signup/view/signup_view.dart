import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../shared/formz/formz.dart';
import '../../../shared/widgets/widgets.dart';
import '../../login/view/login_view.dart';
import '../signup_controller.dart';

class SignupView extends ConsumerWidget {
  const SignupView({super.key});

  static const path = '/signup';

  static GoRoute get route => GoRoute(path: path, builder: (context, state) => const SignupView());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signupControllerProvider);
    final controller = ref.watch(signupControllerProvider.notifier);
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
                    AppTextFormField<Username>(
                      formzInput: state.username,
                      onChanged: controller.changeUsername,
                      autofillHints: const [AutofillHints.username],
                    ),
                    const SizedBox(height: 10),
                    AppTextFormField<Email>(
                      formzInput: state.email,
                      onChanged: controller.changeEmail,
                      autofillHints: const [AutofillHints.username],
                    ),
                    const SizedBox(height: 10),
                    AppTextFormField<Password>(
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
                          text: "Already have an account?",
                          children: [
                            TextSpan(
                              text: ' Login',
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => GoRouter.of(context).go(LoginView.path),
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
                            : const Text('Signup'),
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
